// =================================================================================================
// File Name      : pcie_dn_arbit.v
// Module         : PCIE_DN_ARBIT
// Function       : Download Arbiter module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.Level    Date         Coded by          Contents            Comp
// 0.0.1        2018/07/24   chen.y            create new          speed-clouds
// =================================================================================================
// End Revision
// =================================================================================================

`timescale 1ps / 1ps

module PCIE_DN_ARBIT (
    //system
    input                               PCIE_CLK                                ,//(i)  [  1]
    input                               PCIE_RST                                ,//(i)  [  1]
    //dma
    input                               DPK_TX0_REQ                             ,//(i)  [  1]
    output                              DPK_TX0_ACK                             ,//(o)  [  1]
    input                               DPK_TX0_DVLD                            ,//(i)  [  1]
    input       [  63:0]                DPK_TX0_DATA                            ,//(i)  [ 64]
    input       [   1:0]                DPK_TX0_MASK                            ,//(i)  [  2]
    input                               DPK_TX0_SOP                             ,//(i)  [  1]
    input                               DPK_TX0_EOP                             ,//(i)  [  1]
    input                               DPK_TX0_END                             ,//(i)  [  1]

    input                               DPK_TX1_REQ                             ,//(i)  [  1]
    output                              DPK_TX1_ACK                             ,//(o)  [  1]
    input                               DPK_TX1_DVLD                            ,//(i)  [  1]
    input       [  63:0]                DPK_TX1_DATA                            ,//(i)  [ 64]
    input       [   1:0]                DPK_TX1_MASK                            ,//(i)  [  2]
    input                               DPK_TX1_SOP                             ,//(i)  [  1]
    input                               DPK_TX1_EOP                             ,//(i)  [  1]
    input                               DPK_TX1_END                             ,//(i)  [  1]
    //tx
    output                              DPK_TX_REQ                              ,//(o)  [  1]
    input                               DPK_TX_ACK                              ,//(i)  [  1]
    output                              DPK_TX_DVLD                             ,//(o)  [  1]
    output      [  63:0]                DPK_TX_DATA                             ,//(o)  [ 64]
    output      [   1:0]                DPK_TX_MASK                             ,//(o)  [  2]
    output                              DPK_TX_SOP                              ,//(o)  [  1]
    output                              DPK_TX_EOP                              ,//(o)  [  1]
    output                              DPK_TX_END                               //(o)  [  1]
    );

// =============================================================================
// localparam Declare
// =============================================================================

    localparam                          P_IDLE          = 5'b00001              ;//(p)  [  9]
    localparam                          P_CH0_REQ       = 5'b00010              ;//(p)  [  9]
    localparam                          P_CH0_TX        = 5'b00100              ;//(p)  [  9]
    localparam                          P_CH1_REQ       = 5'b01000              ;//(p)  [  9]
    localparam                          P_CH1_TX        = 5'b10000              ;//(p)  [  9]

// =============================================================================
// Internal signal define
// =============================================================================

    reg         [   4:0]                r_FSM                                   ;//(r)  [  5]
    wire                                s_FSM_CH0_TX                            ;//(s)  [  1]
    wire                                s_FSM_CH1_TX                            ;//(s)  [  1]
    reg                                 r_FSM_CH0_TX                            ;//(r)  [  1]
    reg                                 r_FSM_CH1_TX                            ;//(r)  [  1]

    reg                                 r_DPK_TX_REQ                            ;//(r)  [  1]
    reg                                 r_DPK_TX_ACK                            ;//(r)  [  1]
    reg                                 r_DPK_TX_DVLD                           ;//(r)  [  5]
    reg                                 r_DPK_TX_SOP                            ;//(r)  [  1]
    reg                                 r_DPK_TX_EOP                            ;//(r)  [  1]
    reg                                 r_DPK_TX_END                            ;//(r)  [  1]
    reg         [   1:0]                r_DPK_TX_MASK                           ;//(r)  [  2]
    reg         [  63:0]                r_DPK_TX_DATA                           ;//(r)  [ 64]

    wire                                s_DPK_TX0_ACK                           ;//(s)  [  1]
    wire                                s_DPK_TX1_ACK                           ;//(s)  [  1]

    reg                                 r_DPK_TX_ACK0                           ;//(r)  [  1]
    reg                                 r_DPK_TX_ACK1                           ;//(r)  [  1]

// ================================================================================================
// RTL Body
// ================================================================================================

/*============================================================================+/
||                                                                            ||
||                                Output Port                                 ||
||                                                                            ||
/+============================================================================*/

    assign  DPK_TX0_ACK                 = s_DPK_TX0_ACK                        ;
    assign  DPK_TX1_ACK                 = s_DPK_TX1_ACK                        ;

    assign  DPK_TX_REQ                  = r_DPK_TX_REQ                         ;
    assign  DPK_TX_DVLD                 = r_DPK_TX_DVLD                        ;
    assign  DPK_TX_DATA                 = r_DPK_TX_DATA                        ;
    assign  DPK_TX_MASK                 = r_DPK_TX_MASK                        ;
    assign  DPK_TX_SOP                  = r_DPK_TX_SOP                         ;
    assign  DPK_TX_EOP                  = r_DPK_TX_EOP                         ;
    assign  DPK_TX_END                  = r_DPK_TX_END                         ;

/*============================================================================+/
||                                                                            ||
||                         Upload Arbiter Control FSM                         ||
||                                                                            ||
/+============================================================================*/

    always @(posedge PCIE_CLK or posedge PCIE_RST) begin
        if (PCIE_RST) begin
            r_FSM   <= P_IDLE ;
        end else begin
            case (r_FSM)
                P_IDLE  :
                    begin
                        r_FSM           <= P_CH0_REQ ;
                    end
                P_CH0_REQ   :
                    begin
                        if (DPK_TX0_REQ == 1'b1) begin
                            r_FSM       <= P_CH0_TX ;
                        end else if (DPK_TX1_REQ == 1'b1) begin
                            r_FSM       <= P_CH1_TX ;
                        end else begin
                            r_FSM       <= P_CH0_REQ ;
                        end
                    end
                P_CH0_TX   :
                    begin
                        if (DPK_TX0_END == 1'b1) begin
                            r_FSM       <= P_CH1_REQ ;
                        end else begin
                            r_FSM       <= P_CH0_TX ;
                        end
                    end
                P_CH1_REQ   :
                    begin
                        if (DPK_TX1_REQ == 1'b1) begin
                            r_FSM       <= P_CH1_TX ;
                        end else if (DPK_TX0_REQ == 1'b1) begin
                            r_FSM       <= P_CH0_TX ;
                        end else begin
                            r_FSM       <= P_CH1_REQ ;
                        end
                    end
                P_CH1_TX   :
                    begin
                        if (DPK_TX1_END == 1'b1) begin
                            r_FSM       <= P_CH0_REQ ;
                        end else begin
                            r_FSM       <= P_CH1_TX ;
                        end
                    end
                default :
                    begin
                        r_FSM           <= P_IDLE ;
                    end
            endcase
        end
    end

    assign  s_FSM_CH0_TX                = r_FSM[2] ;
    assign  s_FSM_CH1_TX                = r_FSM[4] ;

    always @(posedge PCIE_CLK or posedge PCIE_RST) begin
        if (PCIE_RST) begin
            r_FSM_CH0_TX                <= 'b0 ;
            r_FSM_CH1_TX                <= 'b0 ;
        end else begin
            r_FSM_CH0_TX                <= s_FSM_CH0_TX  ;
            r_FSM_CH1_TX                <= s_FSM_CH1_TX  ;
        end
    end

/*============================================================================+/
||                                                                            ||
||              Download request packet generate control                      ||
||                                                                            ||
/+============================================================================*/

    always @(posedge PCIE_CLK or posedge PCIE_RST) begin
        if (PCIE_RST) begin
            r_DPK_TX_REQ                <= 'b0 ;
        end else begin
            r_DPK_TX_REQ                <= s_FSM_CH0_TX | s_FSM_CH1_TX ;
        end
    end

    always @(posedge PCIE_CLK or posedge PCIE_RST) begin
        if (PCIE_RST) begin
            r_DPK_TX_DVLD               <= 'b0 ;
            r_DPK_TX_DATA               <= 'b0 ;
            r_DPK_TX_MASK               <= 'b0 ;
            r_DPK_TX_SOP                <= 'b0 ;
            r_DPK_TX_EOP                <= 'b0 ;
            r_DPK_TX_END                <= 'b0 ;
        end else begin
            if (r_FSM_CH0_TX) begin
                r_DPK_TX_DVLD           <= DPK_TX0_DVLD ;
                r_DPK_TX_DATA           <= DPK_TX0_DATA ;
                r_DPK_TX_MASK           <= DPK_TX0_MASK ;
                r_DPK_TX_SOP            <= DPK_TX0_SOP  ;
                r_DPK_TX_EOP            <= DPK_TX0_EOP  ;
                r_DPK_TX_END            <= DPK_TX0_END  ;
            end else if (r_FSM_CH1_TX) begin
                r_DPK_TX_DVLD           <= DPK_TX1_DVLD ;
                r_DPK_TX_DATA           <= DPK_TX1_DATA ;
                r_DPK_TX_MASK           <= DPK_TX1_MASK ;
                r_DPK_TX_SOP            <= DPK_TX1_SOP  ;
                r_DPK_TX_EOP            <= DPK_TX1_EOP  ;
                r_DPK_TX_END            <= DPK_TX1_END  ;
            end else begin
                r_DPK_TX_DVLD           <= 'b0 ;
                r_DPK_TX_DATA           <= 'b0 ;
                r_DPK_TX_MASK           <= 'b0 ;
                r_DPK_TX_SOP            <= 'b0 ;
                r_DPK_TX_EOP            <= 'b0 ;
                r_DPK_TX_END            <= 'b0 ;
            end
        end
    end

    assign  s_DPK_TX0_ACK               = r_FSM_CH0_TX & DPK_TX_ACK ;
    assign  s_DPK_TX1_ACK               = r_FSM_CH1_TX & DPK_TX_ACK ;

endmodule
