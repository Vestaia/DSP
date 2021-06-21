module trigger #(
    parameter PARAM_WIDTH = 16,
    parameter AXIS_TDATA_WIDTH = 16,
    parameter TIMER_WIDTH = 48
)
(
    input                              aclk,
    input                              aresetn,
    input   [AXIS_TDATA_WIDTH - 1 : 0] thresh,
    input   [AXIS_TDATA_WIDTH - 1 : 0] s_axis_tdata,
    input                              s_axis_tvalid,
    input   [PARAM_WIDTH      - 1 : 0] k,
    input   [PARAM_WIDTH      - 1 : 0] l,
    input   [TIMER_WIDTH      - 1 : 0] timer,
    output                             m_axis_tvalid,
    output  [AXIS_TDATA_WIDTH - 1 : 0] m_axis_tdata,
    output  [TIMER_WIDTH      - 1 : 0] event_time
);
    reg m_axis_tdata;
    reg m_axis_tvalid;
    reg event_time;
    reg [PARAM_WIDTH-1:0] cnt;
    reg arm;
    
  always @ (posedge aclk) begin
    if (~aresetn) begin
      m_axis_tdata <= 0;
      cnt <= 0;
      arm <= 0;
    end else begin
      if (m_axis_tvalid)
        m_axis_tvalid <= 0;
      if(s_axis_tdata >= thresh)
        arm <= 1;
      if(s_axis_tdata < 0 && arm == 1) begin
        arm <= 0;
        if (cnt > 0) begin //Pileup -- Reset to avoid erroneous data. (This does not gaurantee pileup protection).
          cnt <= 0;
          arm <= 0;
        end else begin
          cnt <= (k + l) / 2; //Wait until the middle of the flat peak.
        end
      end
      if(cnt > 0) begin
        if(cnt == 1) begin
          m_axis_tdata <= 0 - s_axis_tdata;
          m_axis_tvalid <= s_axis_tvalid;
          event_time <= timer;
        end
        cnt <= cnt - 1;
      end
    end
  end
endmodule
