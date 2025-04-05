 //basic module, higher pts ffts from instantiating this module
 module _8pt_fft( x0, x1, x2, x3, x4, x5, x6, x7,X0_real, X1_real, X2_real, X3_real, X4_real, X5_real, X6_real, X7_real,X0_img,X1_img,X2_img,X3_img,X4_img,X5_img,X6_img,X7_img);

            //Inputs (time domanin points)
            input signed [31:0] x0;
            input signed [31:0] x1;
            input signed [31:0] x2;
            input signed [31:0] x3;
            input signed [31:0] x4;
            input signed [31:0] x5;
            input signed [31:0] x6;
            input signed [31:0] x7;

            //Outputs (frequency domanin points, both real and imaginary parts)
            output signed [31:0] X0_real;
            output signed [31:0] X0_img;
            output signed [31:0] X1_real;
            output signed [31:0] X1_img;
            output signed [31:0] X2_real;
            output signed [31:0] X2_img;
            output signed [31:0] X3_real;
            output signed [31:0] X3_img;
            output signed [31:0] X4_real;
            output signed [31:0] X4_img;
            output signed [31:0] X5_real;
            output signed [31:0] X5_img;
            output signed [31:0] X6_real;
            output signed [31:0] X6_img;
            output signed [31:0] X7_real;
            output signed [31:0] X7_img;

            //Twiddle factor in 8 pt fft calculation
            real    p= 0.70710678118;
            //directly taking the dft
            assign X0_real = x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7;

            assign X0_img = 0;

            assign X1_real = (x0 - x4) + p * (x1 - x5 + x7 - x3);

            assign X1_img = (x6 - x2) + p * (x7 - x3 - x1 + x5);

            assign X2_real = x0 + x4 - x6 - x2;

            assign X2_img = x3 + x7 - x1 - x5;

            assign X3_real = (x0 - x4) + p * (x5 - x1 + x3 - x7);

            assign X3_img = (x2 - x6) + p * (x7 + x5 - x1 - x3);

            assign X4_real = x0 + x4 + x2 + x6 - x1 - x5 - x3 - x7;

            assign X4_img = 0;

            assign X5_real = (x0 - x4) + p * (x5 - x1 - x7 + x3);

            assign X5_img = (x6 - x2) + p * (x1 + x3 - x7 - x5);

            assign X6_real = x0 + x4 - x6 - x2;

            assign X6_img = x1 + x5 - x3 - x7;

            assign X7_real = (x0 - x4) + p * (x1 + x7 - x5 - x3);

            assign X7_img = (x2 - x6) + p * (x1 + x3 - x7 - x5);

 endmodule
