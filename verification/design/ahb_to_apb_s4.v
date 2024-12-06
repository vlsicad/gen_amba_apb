//---------------------------------------------------------------------------
// gen_amba_apb.v generated by "gen_amba_apb (20210710)"
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
module ahb_to_apb_s4
     #(parameter P_NUM=4
               , P_PSEL0_START=32'hC0000000, P_PSEL0_SIZE=32'h00001000
               , P_PSEL1_START=32'hC0001000, P_PSEL1_SIZE=32'h00001000
               , P_PSEL2_START=32'hC0001000, P_PSEL2_SIZE=32'h00001000
               , P_PSEL3_START=32'hC0001000, P_PSEL3_SIZE=32'h00001000
               , CLOCK_RATIO=2'b00 // 0=1:1, 3=async
       )
(
       input  wire        HRESETn
     , input  wire        HCLK
     , input  wire        HSEL
     , input  wire [31:0] HADDR
     , input  wire [ 1:0] HTRANS
     , input  wire [ 3:0] HPROT
     , input  wire        HLOCK
     , input  wire        HWRITE
     , input  wire [ 2:0] HSIZE
     , input  wire [ 2:0] HBURST
     , input  wire [31:0] HWDATA
     , output wire [31:0] HRDATA
     , output wire [ 1:0] HRESP
     , input  wire        HREADYin
     , output wire        HREADYout
     , input  wire        PCLK
     , input  wire        PRESETn
     , output wire        S_PENABLE
     , output wire [31:0] S_PADDR
     , output wire        S_PWRITE
     , output wire [31:0] S_PWDATA
     , output wire        S0_PSEL
     , input  wire [31:0] S0_PRDATA
     `ifdef AMBA_APB3
     , input  wire        S0_PREADY
     , input  wire        S0_PSLVERR
     `endif
     , output wire        S1_PSEL
     , input  wire [31:0] S1_PRDATA
     `ifdef AMBA_APB3
     , input  wire        S1_PREADY
     , input  wire        S1_PSLVERR
     `endif
     , output wire        S2_PSEL
     , input  wire [31:0] S2_PRDATA
     `ifdef AMBA_APB3
     , input  wire        S2_PREADY
     , input  wire        S2_PSLVERR
     `endif
     , output wire        S3_PSEL
     , input  wire [31:0] S3_PRDATA
     `ifdef AMBA_APB3
     , input  wire        S3_PREADY
     , input  wire        S3_PSLVERR
     `endif
     `ifdef AMBA_APB4
     , output wire [ 2:0] S_PPROT
     , output wire [ 3:0] S_PSTRB
     `endif
);
   //-----------------------------------------------------
   wire        M_PSEL   ;
   wire        M_PENABLE;
   wire [31:0] M_PADDR  ;
   wire        M_PWRITE ;
   wire [31:0] M_PRDATA ;
   wire [31:0] M_PWDATA ;
   `ifdef AMBA_APB3
   wire        M_PREADY ;
   wire        M_PSLVERR;
   `endif
   `ifdef AMBA_APB4
   wire [ 2:0] M_PPROT  ;
   wire [ 3:0] M_PSTRB  ;
   `endif
   //-----------------------------------------------------
    ahb_to_apb_bridge #(.CLOCK_RATIO(CLOCK_RATIO))
    u_ahb_to_apb_bridge (
          .HRESETn   (HRESETn)
        , .HCLK      (HCLK)
        , .HSEL      (HSEL)
        , .HADDR     (HADDR)
        , .HTRANS    (HTRANS)
        , .HPROT     (HPROT)
        , .HWRITE    (HWRITE)
        , .HSIZE     (HSIZE)
        , .HBURST    (HBURST)
        , .HWDATA    (HWDATA)
        , .HRDATA    (HRDATA)
        , .HRESP     (HRESP)
        , .HREADYin  (HREADYin)
        , .HREADYout (HREADYout)

        , .PCLK      (PCLK)
        , .PRESETn   (PRESETn)
        , .M_PSEL    (M_PSEL)
        , .M_PENABLE (M_PENABLE)
        , .M_PADDR   (M_PADDR)
        , .M_PWRITE  (M_PWRITE)
        , .M_PRDATA  (M_PRDATA)
        , .M_PWDATA  (M_PWDATA)

        `ifdef AMBA_APB3
        , .M_PREADY      (M_PREADY )
        , .M_PSLVERR     (M_PSLVERR)
        `endif
        `ifdef AMBA_APB4
        , .M_PPROT       (M_PPROT)
        , .M_PSTRB       (M_PSTRB)
        `endif

   );
   //-----------------------------------------------------
   amba_apb_s4 #(.P_NUM(4)// num of slaves
                ,.P_PSEL0_START(P_PSEL0_START),.P_PSEL0_SIZE(P_PSEL0_SIZE)
                ,.P_PSEL1_START(P_PSEL1_START),.P_PSEL1_SIZE(P_PSEL1_SIZE)
                ,.P_PSEL2_START(P_PSEL2_START),.P_PSEL2_SIZE(P_PSEL2_SIZE)
                ,.P_PSEL3_START(P_PSEL3_START),.P_PSEL3_SIZE(P_PSEL3_SIZE)
                )
   u_amba_apb_s4 (
       .PRESETn       (PRESETn    )
     , .PCLK          (PCLK       )
     , .M_PSEL        (M_PSEL     )
     , .M_PENABLE     (M_PENABLE  )
     , .M_PADDR       (M_PADDR    )
     , .M_PWRITE      (M_PWRITE   )
     , .M_PWDATA      (M_PWDATA   )
     , .M_PRDATA      (M_PRDATA   )
     `ifdef AMBA_APB3
     , .M_PREADY      (M_PREADY   )
     , .M_PSLVERR     (M_PSLVERR  )
     `endif
     `ifdef AMBA_APB4
     , .M_PPROT       (M_PPROT    )
     , .M_PSTRB       (M_PSTRB    )
     `endif
     , .S_PADDR       (S_PADDR      )
     , .S_PENABLE     (S_PENABLE    )
     , .S_PWRITE      (S_PWRITE     )
     , .S_PWDATA      (S_PWDATA     )
     `ifdef AMBA_APB4
     , .S_PPROT       (S_PPROT      )
     , .S_PSTRB       (S_PSTRB      )
     `endif
     , .S_PSEL0      (S0_PSEL     )
     , .S_PRDATA0    (S0_PRDATA   )
     `ifdef AMBA_APB3
     , .S_PREADY0    (S0_PREADY   )
     , .S_PSLVERR0   (S0_PSLVERR  )
     `endif
     , .S_PSEL1      (S1_PSEL     )
     , .S_PRDATA1    (S1_PRDATA   )
     `ifdef AMBA_APB3
     , .S_PREADY1    (S1_PREADY   )
     , .S_PSLVERR1   (S1_PSLVERR  )
     `endif
     , .S_PSEL2      (S2_PSEL     )
     , .S_PRDATA2    (S2_PRDATA   )
     `ifdef AMBA_APB3
     , .S_PREADY2    (S2_PREADY   )
     , .S_PSLVERR2   (S2_PSLVERR  )
     `endif
     , .S_PSEL3      (S3_PSEL     )
     , .S_PRDATA3    (S3_PRDATA   )
     `ifdef AMBA_APB3
     , .S_PREADY3    (S3_PREADY   )
     , .S_PSLVERR3   (S3_PSLVERR  )
     `endif
   );
   //-----------------------------------------------------
endmodule
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
`ifndef AHB_TO_APB_BRIDGE_V
`define AHB_TO_APB_BRIDGE_V
module ahb_to_apb_bridge
     #(parameter CLOCK_RATIO=2'b00) // 0=1:1, 3=async
(
       input  wire        HRESETn
     , input  wire        HCLK
     , input  wire        HSEL
     , input  wire [31:0] HADDR
     , input  wire [ 1:0] HTRANS
     , input  wire [ 3:0] HPROT
     , input  wire        HWRITE
     , input  wire [ 2:0] HSIZE
     , input  wire [ 2:0] HBURST
     , input  wire [31:0] HWDATA
     , output reg  [31:0] HRDATA
     , output reg  [ 1:0] HRESP
     , input  wire        HREADYin
     , output reg         HREADYout
     //-----------------------------------------------------------
     , input  wire        PCLK
     , input  wire        PRESETn
     , output reg         M_PSEL
     , output reg         M_PENABLE
     , output wire [31:0] M_PADDR
     , output wire        M_PWRITE
     , input  wire [31:0] M_PRDATA
     , output wire [31:0] M_PWDATA
     `ifdef AMBA_APB3
     , input  wire        M_PREADY
     , input  wire        M_PSLVERR
     `endif
     `ifdef AMBA_APB4
     , output wire [ 2:0] M_PPROT
     , output wire [ 3:0] M_PSTRB
     `endif
);
   //-----------------------------------------------------
   `ifndef AMBA_APB3
   wire    M_PREADY  = 1'b1;
   wire    M_PSLVERR = 1'b0;
   `endif
   `ifndef AMBA_APB4
   wire [ 2:0] M_PPROT;
   wire [ 3:0] M_PSTRB;
   `endif
   //-----------------------------------------------------
   reg  [31:0] tADDR ;
   reg         tWRITE;
   reg  [31:0] tWDATA;
   reg  [31:0] tRDATA;
   reg         tREQ  =1'b0;
   reg         tACK  =1'b0;
   reg         tERROR;
   reg  [ 2:0] tPROT ;
   reg  [ 3:0] tSTRB ;
   //-----------------------------------------------------
   assign M_PADDR   = tADDR ;
   assign M_PWRITE  = tWRITE;
   assign M_PWDATA  = tWDATA;
   assign M_PPROT   = tPROT ;
   assign M_PSTRB   = tSTRB ;
   //-----------------------------------------------------
   reg        tACKsync, tACKsync0, tACKsync1;
   always @ (posedge HCLK or negedge HRESETn) begin
       if (HRESETn==0) begin
          tACKsync0 <= 1'b0;
          tACKsync1 <= 1'b0;
       end else begin
          tACKsync0 <= tACK;
          tACKsync1 <= tACKsync0;
       end
   end
   always @ ( * ) begin
       case (CLOCK_RATIO)
       2'b00: tACKsync = tACK;
       2'b01: tACKsync = tACKsync1;
       2'b10: tACKsync = tACKsync1;
       2'b11: tACKsync = tACKsync1;
       endcase
   end
   //-----------------------------------------------------
   localparam STH_IDLE   =  'h0,
              STH_WRITE0 =  'h1,
              STH_WRITE1 =  'h2,
              STH_READ0  =  'h3,
              STH_WAIT   =  'h4;
   reg [2:0] state=STH_IDLE;
   //-----------------------------------------------------
   // AHB bus wrapper
   always @ (posedge HCLK or negedge HRESETn) begin
       if (HRESETn==0) begin
           HRDATA    <= 32'b0;
           HRESP     <=  2'b00; //`HRESP_OKAY;
           HREADYout <=  1'b1;
           tADDR     <= 32'h0;
           tWDATA    <= 32'h0;
           tWRITE    <=  1'b0;
           tPROT     <=  3'h0;
           tSTRB     <=  4'hF;
           tREQ      <=  1'b0;
           state     <= STH_IDLE;
       end else begin // if (HRESETn==0) begin
           case (state)
           STH_IDLE: begin
                if (HSEL && HREADYin) begin
                   case (HTRANS)
                   //`HTRANS_IDLE, `HTRANS_BUSY: begin
                   2'b00, 2'b01: begin
                          HREADYout <= 1'b1;
                          HRESP     <= 2'b00; //`HRESP_OKAY;
                          state     <= STH_IDLE;
                   end // HTRANS_IDLE or HTRANS_BUSY
                   //`HTRANS_NONSEQ, `HTRANS_SEQ: begin
                   2'b10, 2'b11: begin
                              HREADYout <= 1'b0;
                              HRESP     <= 2'b00; //`HRESP_OKAY;
                              tADDR     <= HADDR[31:0];
                              tWRITE    <= HWRITE;
                              tPROT     <= {~HPROT[0],1'b1,HPROT[1]};
                              tSTRB     <= get_strb(HADDR[1:0],HSIZE);
                              if (HWRITE) begin
                                  state <= STH_WRITE0;
                              end else begin
                                  tREQ  <= 1'b1;
                                  state <= STH_READ0;
                              end
                   end // HTRANS_NONSEQ or HTRANS_SEQ
                   endcase // HTRANS
                end else begin// if (HSEL && HREADYin)
                    HREADYout <= 1'b1;
                    HRESP     <= 2'b00; //`HRESP_OKAY;
                end
                end // STH_IDLE
           STH_WRITE0: begin
                     tWDATA    <= HWDATA;
                     tREQ      <= 1'b1;
                     state     <= STH_WRITE1;
                end // STH_WRITE0
           STH_WRITE1: begin
                     if (tACKsync ) begin
                         tREQ      <= 1'b0;
                         HRESP     <= {1'b0,tERROR};
                         tADDR     <= 32'b0;
                         tWDATA    <= 32'b0;
                         tWRITE    <= 1'b0;
                         if (CLOCK_RATIO==2'b00) begin
                             HREADYout <= 1'b1;
                             state     <= STH_IDLE;
                         end else begin
                             state     <= STH_WAIT;
                         end
                     end
                end // STH_WRITE1
           STH_READ0: begin
                    if (tACKsync ) begin
                         tREQ      <= 1'b0;
                         HRDATA    <= tRDATA;
                         HRESP     <= {1'b0,tERROR};
                         if (CLOCK_RATIO==2'b00) begin
                             HREADYout <= 1'b1;
                             state     <= STH_IDLE;
                         end else begin
                             state     <= STH_WAIT;
                         end
                    end
                end // STH_READ0
           STH_WAIT: begin
                if (tACKsync==1'b0) begin
                    HREADYout <= 1'b1;
                    state     <= STH_IDLE;
                end
                end // STH_WAIT
           endcase // state
       end // if (HRESETn==0)
   end // always
   //-----------------------------------------------------
   reg         tREQsync, tREQsync0, tREQsync1;
   always @ (posedge PCLK or negedge PRESETn) begin
       if (PRESETn==0) begin
          tREQsync0 <= 1'b0;
          tREQsync1 <= 1'b0;
       end else begin
          tREQsync0 <= tREQ;
          tREQsync1 <= tREQsync0;
       end
   end
   always @ ( * ) begin
       case (CLOCK_RATIO)
       2'b00: tREQsync = tREQ;
       2'b01: tREQsync = tREQsync1;
       2'b10: tREQsync = tREQsync1;
       2'b11: tREQsync = tREQsync1;
       endcase
   end
   //-----------------------------------------------------
   localparam STP_IDLE  = 2'h0,
              STP_SETUP = 2'h1,
              STP_GO    = 2'h2,
              STP_WAIT  = 2'h3;
   reg [1:0] pstate=STP_IDLE;
   //-----------------------------------------------------
   always @ (posedge PCLK or negedge PRESETn) begin
       if (PRESETn==0) begin
           M_PSEL    <=  1'b0;
           M_PENABLE <=  1'b0;
           tACK      <=  1'b0;
           tRDATA    <= 32'b0;
           tERROR    <=  1'b0;
           pstate    <= STP_IDLE;
       end else begin
           case (pstate)
           STP_IDLE: begin
               if (tREQsync ) begin
                     M_PSEL  <= 1'b1;
                     pstate  <= STP_SETUP;
               end
               end // STP_IDLE
           STP_SETUP: begin
               M_PENABLE <= 1'b1;
               pstate    <= STP_GO;
               end // STP_SETUP
           STP_GO: begin
               if (M_PREADY) begin
                  M_PENABLE <= 1'b0;
                  M_PSEL    <= 1'b0;
                  tACK      <= 1'b1;
                  tRDATA    <= M_PRDATA;
                  tERROR    <= M_PSLVERR;
                  pstate    <= STP_WAIT;
               end
               end // STP_GO
           STP_WAIT: begin
               if (CLOCK_RATIO==2'b0) begin
                   tACK   <= 1'b0;
                   pstate <= STP_IDLE;
               end else begin
                  if (tREQsync==1'b0) begin
                      tACK   <= 1'b0;
                      pstate <= STP_IDLE;
                  end
               end
               end // STP_WAIT
           endcase
       end // if (PRESETn==0)
   end // always @ (posedge PCLK or negedge PRESETn) begin
   //-----------------------------------------------------
   function [3:0] get_strb;
       input [1:0] add;   // address offset
       input [2:0] size;  // transfer size
       reg   [3:0] be;
       begin
          case ({size,add})
              `ifdef ENDIAN_BIG
              5'b010_00: be = 4'b1111; // word
              5'b001_00: be = 4'b1100; // halfword
              5'b001_10: be = 4'b0011; // halfword
              5'b000_00: be = 4'b1000; // byte
              5'b000_01: be = 4'b0100; // byte
              5'b000_10: be = 4'b0010; // byte
              5'b000_11: be = 4'b0001; // byte
              `else // little-endian -- default
              5'b010_00: be = 4'b1111; // word
              5'b001_00: be = 4'b0011; // halfword
              5'b001_10: be = 4'b1100; // halfword
              5'b000_00: be = 4'b0001; // byte
              5'b000_01: be = 4'b0010; // byte
              5'b000_10: be = 4'b0100; // byte
              5'b000_11: be = 4'b1000; // byte
              `endif
              default: begin
                       be = 4'b0;
                       `ifdef RIGOR
                       // synthesis translate_off
                       $display("%%04d %%m ERROR: undefined combination of HSIZE(%%x) and HADDR[1:0](%%x)",
                                 $time, size, add);
                       // synthesis translate_on
                       `endif
                       end
          endcase
          get_strb = be;
       end
   endfunction
   //-----------------------------------------------------
endmodule
`endif
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
module amba_apb_s4
     #(parameter P_NUM=4 // num of slaves
               , P_PSEL0_START=32'hC0000000, P_PSEL0_SIZE=32'h00001000
               , P_PSEL1_START=32'hC0001000, P_PSEL1_SIZE=32'h00001000
               , P_PSEL2_START=32'hC0002000, P_PSEL2_SIZE=32'h00001000
               , P_PSEL3_START=32'hC0003000, P_PSEL3_SIZE=32'h00001000
               )
(
       input   wire          PRESETn
     , input   wire          PCLK
     , input   wire          M_PSEL
     , input   wire          M_PENABLE
     , input   wire  [31:0]  M_PADDR
     , input   wire          M_PWRITE
     , input   wire  [31:0]  M_PWDATA
     , output  wire  [31:0]  M_PRDATA
     `ifdef AMBA_APB3
     , output  wire          M_PREADY
     , output  wire          M_PSLVERR
     `endif
     `ifdef AMBA_APB4
     , input   wire  [ 2:0]  M_PPROT
     , input   wire  [ 3:0]  M_PSTRB
     `endif
     , output  wire  [31:0]  S_PADDR
     , output  wire          S_PENABLE
     , output  wire          S_PWRITE
     , output  wire  [31:0]  S_PWDATA
     `ifdef AMBA_APB4
     , output  wire  [ 2:0]  S_PPROT
     , output  wire  [ 3:0]  S_PSTRB
     `endif
     , output  wire          S_PSEL0
     , input   wire  [31:0]  S_PRDATA0
     `ifdef AMBA_APB3
     , input   wire          S_PREADY0
     , input   wire          S_PSLVERR0
     `endif
     , output  wire          S_PSEL1
     , input   wire  [31:0]  S_PRDATA1
     `ifdef AMBA_APB3
     , input   wire          S_PREADY1
     , input   wire          S_PSLVERR1
     `endif
     , output  wire          S_PSEL2
     , input   wire  [31:0]  S_PRDATA2
     `ifdef AMBA_APB3
     , input   wire          S_PREADY2
     , input   wire          S_PSLVERR2
     `endif
     , output  wire          S_PSEL3
     , input   wire  [31:0]  S_PRDATA3
     `ifdef AMBA_APB3
     , input   wire          S_PREADY3
     , input   wire          S_PSLVERR3
     `endif
);
     assign S_PADDR   = M_PADDR;
     assign S_PENABLE = M_PENABLE;
     assign S_PWRITE  = M_PWRITE;
     assign S_PWDATA  = M_PWDATA;
     `ifdef AMBA_APB4
     assign S_PPROT   = M_PPROT;
     assign S_PSTRB   = M_PSTRB;
     `endif
     apb_decoder_s4 #(.P_NUM(4)
                  ,.P_PSEL0_START(P_PSEL0_START),.P_PSEL0_SIZE(P_PSEL0_SIZE)
                  ,.P_PSEL1_START(P_PSEL1_START),.P_PSEL1_SIZE(P_PSEL1_SIZE)
                  ,.P_PSEL2_START(P_PSEL2_START),.P_PSEL2_SIZE(P_PSEL2_SIZE)
                  ,.P_PSEL3_START(P_PSEL3_START),.P_PSEL3_SIZE(P_PSEL3_SIZE)
                  )
     u_apb_decoder (
           .PSEL  ( M_PSEL  )
         , .PADDR ( M_PADDR )
         , .PSEL0 ( S_PSEL0 )
         , .PSEL1 ( S_PSEL1 )
         , .PSEL2 ( S_PSEL2 )
         , .PSEL3 ( S_PSEL3 )
     );
     apb_mux_s4 #(.P_NUM(4))
     u_apb_mux (
           .PSEL     ({S_PSEL3,S_PSEL2,S_PSEL1,S_PSEL0})
         , .PRDATA   (M_PRDATA )
         , .PRDATA0  (S_PRDATA0)
         , .PRDATA1  (S_PRDATA1)
         , .PRDATA2  (S_PRDATA2)
         , .PRDATA3  (S_PRDATA3)
         `ifdef AMBA_APB3
         , .PREADY   (M_PREADY  )
         , .PSLVERR  (M_PSLVERR )
         , .PREADY0  (S_PREADY0)
         , .PSLVERR0 (S_PSLVERR0)
         , .PREADY1  (S_PREADY1)
         , .PSLVERR1 (S_PSLVERR1)
         , .PREADY2  (S_PREADY2)
         , .PSLVERR2 (S_PSLVERR2)
         , .PREADY3  (S_PREADY3)
         , .PSLVERR3 (S_PSLVERR3)
         `endif
     );
endmodule
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
module apb_decoder_s4
     #(parameter P_NUM=4 // num of slaves
               , P_PSEL0_START=32'hC0000000, P_PSEL0_SIZE=32'h00001000
               , P_PSEL0_END  =P_PSEL0_START+P_PSEL0_SIZE
               , P_PSEL1_START=32'hC0001000, P_PSEL1_SIZE=32'h00001000
               , P_PSEL1_END  =P_PSEL1_START+P_PSEL1_SIZE
               , P_PSEL2_START=32'hC0002000, P_PSEL2_SIZE=32'h00001000
               , P_PSEL2_END  =P_PSEL2_START+P_PSEL2_SIZE
               , P_PSEL3_START=32'hC0003000, P_PSEL3_SIZE=32'h00001000
               , P_PSEL3_END  =P_PSEL3_START+P_PSEL3_SIZE
               )
(
       input   wire        PSEL
     , input   wire [31:0] PADDR
     , output  wire        PSEL0
     , output  wire        PSEL1
     , output  wire        PSEL2
     , output  wire        PSEL3
);
   assign PSEL0 = ((PSEL==1'b1)&&(P_NUM>0)&&(PADDR>=P_PSEL0_START)&&(PADDR<P_PSEL0_END)) ? 1'b1 : 1'b0;
   assign PSEL1 = ((PSEL==1'b1)&&(P_NUM>1)&&(PADDR>=P_PSEL1_START)&&(PADDR<P_PSEL1_END)) ? 1'b1 : 1'b0;
   assign PSEL2 = ((PSEL==1'b1)&&(P_NUM>2)&&(PADDR>=P_PSEL2_START)&&(PADDR<P_PSEL2_END)) ? 1'b1 : 1'b0;
   assign PSEL3 = ((PSEL==1'b1)&&(P_NUM>3)&&(PADDR>=P_PSEL3_START)&&(PADDR<P_PSEL3_END)) ? 1'b1 : 1'b0;
   `ifdef RIGOR
   // synthesis translate_off
   initial begin
       if (P_PSEL0_SIZE==0) $display("%m ERROR P_PSEL0_SIZE should be positive 32-bit");
       if (P_PSEL1_SIZE==0) $display("%m ERROR P_PSEL1_SIZE should be positive 32-bit");
       if (P_PSEL2_SIZE==0) $display("%m ERROR P_PSEL2_SIZE should be positive 32-bit");
       if (P_PSEL3_SIZE==0) $display("%m ERROR P_PSEL3_SIZE should be positive 32-bit");
       if ((P_PSEL0_END>P_PSEL1_START)&&
           (P_PSEL0_END<=P_PSEL1_END)) $display("%m ERROR address range overlapped 0:1");
       if ((P_PSEL0_END>P_PSEL2_START)&&
           (P_PSEL0_END<=P_PSEL2_END)) $display("%m ERROR address range overlapped 0:2");
       if ((P_PSEL0_END>P_PSEL3_START)&&
           (P_PSEL0_END<=P_PSEL3_END)) $display("%m ERROR address range overlapped 0:3");
       if ((P_PSEL1_END>P_PSEL0_START)&&
           (P_PSEL1_END<=P_PSEL0_END)) $display("%m ERROR address range overlapped 1:0");
       if ((P_PSEL1_END>P_PSEL2_START)&&
           (P_PSEL1_END<=P_PSEL2_END)) $display("%m ERROR address range overlapped 1:2");
       if ((P_PSEL1_END>P_PSEL3_START)&&
           (P_PSEL1_END<=P_PSEL3_END)) $display("%m ERROR address range overlapped 1:3");
       if ((P_PSEL2_END>P_PSEL0_START)&&
           (P_PSEL2_END<=P_PSEL0_END)) $display("%m ERROR address range overlapped 2:0");
       if ((P_PSEL2_END>P_PSEL1_START)&&
           (P_PSEL2_END<=P_PSEL1_END)) $display("%m ERROR address range overlapped 2:1");
       if ((P_PSEL2_END>P_PSEL3_START)&&
           (P_PSEL2_END<=P_PSEL3_END)) $display("%m ERROR address range overlapped 2:3");
       if ((P_PSEL3_END>P_PSEL0_START)&&
           (P_PSEL3_END<=P_PSEL0_END)) $display("%m ERROR address range overlapped 3:0");
       if ((P_PSEL3_END>P_PSEL1_START)&&
           (P_PSEL3_END<=P_PSEL1_END)) $display("%m ERROR address range overlapped 3:1");
       if ((P_PSEL3_END>P_PSEL2_START)&&
           (P_PSEL3_END<=P_PSEL2_END)) $display("%m ERROR address range overlapped 3:2");
   end
   // synthesis translate_on
   `endif
endmodule
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
module apb_mux_s4
     #(parameter P_NUM=4) // num of slaves
(
       input   wire  [P_NUM-1:0]  PSEL
     , output  reg   [31:0]       PRDATA
     , input   wire  [31:0]       PRDATA0
     , input   wire  [31:0]       PRDATA1
     , input   wire  [31:0]       PRDATA2
     , input   wire  [31:0]       PRDATA3
     `ifdef AMBA_APB3
     , output  reg                PREADY
     , output  reg                PSLVERR
     , input   wire               PREADY0
     , input   wire               PSLVERR0
     , input   wire               PREADY1
     , input   wire               PSLVERR1
     , input   wire               PREADY2
     , input   wire               PSLVERR2
     , input   wire               PREADY3
     , input   wire               PSLVERR3
     `endif
);
     always @ ( PSEL or PRDATA0 or PRDATA1 or PRDATA2 or PRDATA3) begin
     case (PSEL)
     4'h1: PRDATA = PRDATA0;
     4'h2: PRDATA = PRDATA1;
     4'h4: PRDATA = PRDATA2;
     4'h8: PRDATA = PRDATA3;
     default: PRDATA = 32'h0;
     endcase
     end // always
     `ifdef AMBA_APB3
     always @ ( PSEL or PREADY0 or PREADY1 or PREADY2 or PREADY3) begin
     case (PSEL)
     4'h1: PREADY = PREADY0;
     4'h2: PREADY = PREADY1;
     4'h4: PREADY = PREADY2;
     4'h8: PREADY = PREADY3;
     default: PREADY = 1'b1; // make ready by default
     endcase
     end // always
     `endif
     `ifdef AMBA_APB3
     always @ ( PSEL or PSLVERR0 or PSLVERR1 or PSLVERR2 or PSLVERR3) begin
     case (PSEL)
     4'h1: PSLVERR = PSLVERR0;
     4'h2: PSLVERR = PSLVERR1;
     4'h4: PSLVERR = PSLVERR2;
     4'h8: PSLVERR = PSLVERR3;
     default: PSLVERR = 1'b1; // make error by default
     endcase
     end // always
     `endif
endmodule
//---------------------------------------------------------------------------
/* Copyright 2018 Ando Ki (andoki@gmail.com)

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/
