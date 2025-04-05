module tb_8pt_fft;

    //input signals
    reg signed [31:0] x0, x1, x2, x3, x4, x5, x6, x7;

    //output signals
    wire signed [31:0] X0_real, X0_img, X1_real, X1_img, X2_real, X2_img;
    wire signed [31:0] X3_real, X3_img, X4_real, X4_img, X5_real, X5_img;
    wire signed [31:0] X6_real, X6_img, X7_real, X7_img;


    _8pt_fft uut (
        .x0(x0),
        .x1(x1),
        .x2(x2),
        .x3(x3),
        .x4(x4),
        .x5(x5),
        .x6(x6),
        .x7(x7),

        .X0_real(X0_real), .X0_img(X0_img),
        .X1_real(X1_real), .X1_img(X1_img),
        .X2_real(X2_real), .X2_img(X2_img),
        .X3_real(X3_real), .X3_img(X3_img),
        .X4_real(X4_real), .X4_img(X4_img),
        .X5_real(X5_real), .X5_img(X5_img),
        .X6_real(X6_real), .X6_img(X6_img),
        .X7_real(X7_real), .X7_img(X7_img)
    );


    initial begin

        x0 = 32'd0;
        x1 = 32'd0;
        x2 = 32'd0;
        x3 = 32'd0;
        x4 = 32'd0;
        x5 = 32'd0;
        x6 = 32'd0;
        x7 = 32'd0;

        #10;


        x0 = 32'd1; x1 = 32'd2; x2 = 32'd3; x3 = 32'd4;
        x4 = 32'd4; x5 = 32'd3; x6 = 32'd2; x7 = 32'd1;
        #10;



        $monitor("Time: %0t, x0=%d, x1=%d, x2=%d, x3=%d, x4=%d, x5=%d, x6=%d, x7=%d, X0_real=%d, X0_img=%d, X1_real=%f, X1_img=%d, X2_real=%d, X2_img=%d, X3_real=%d, X3_img=%d, X4_real=%d, X4_img=%d, X5_real=%d, X5_img=%d, X6_real=%d, X6_img=%d, X7_real=%d, X7_img=%d", $time, x0, x1, x2, x3, x4, x5, x6, x7, X0_real, X0_img, X1_real, X1_img, X2_real, X2_img, X3_real, X3_img, X4_real, X4_img, X5_real, X5_img, X6_real, X6_img, X7_real, X7_img);
       $finish;
    end

endmodule
