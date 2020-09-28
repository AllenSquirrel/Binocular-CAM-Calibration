% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 654.533690188292667 ; 656.998957500158667 ];

%-- Principal point:
cc = [ 667.292623886686442 ; 385.504911567600516 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.191244894454274 ; 0.087829464038561 ; 0.003622827065809 ; 0.003114816276823 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 28.116982551141120 ; 27.690989680861993 ];

%-- Principal point uncertainty:
cc_error = [ 8.030644640302171 ; 10.189806213746522 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.016885385483048 ; 0.020010233831701 ; 0.002090076689156 ; 0.001834412386567 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 23;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -3.649264e-02 ; -3.092122e+00 ; -3.854538e-02 ];
Tc_1  = [ 9.636712e+02 ; -3.690978e+02 ; 1.205722e+03 ];
omc_error_1 = [ 4.575311e-03 ; 1.291737e-02 ; 1.762034e-02 ];
Tc_error_1  = [ 1.530226e+01 ; 1.954962e+01 ; 5.229044e+01 ];

%-- Image #2:
omc_2 = [ 5.624109e-02 ; 3.108284e+00 ; 9.472194e-02 ];
Tc_2  = [ 7.839294e+02 ; -4.578439e+02 ; 1.233673e+03 ];
omc_error_2 = [ 3.911081e-03 ; 1.150298e-02 ; 1.855321e-02 ];
Tc_error_2  = [ 1.535019e+01 ; 1.985802e+01 ; 5.339805e+01 ];

%-- Image #3:
omc_3 = [ -4.430753e-01 ; -3.023817e+00 ; -1.766277e-01 ];
Tc_3  = [ 6.551646e+02 ; -4.640822e+02 ; 1.038527e+03 ];
omc_error_3 = [ 3.811289e-03 ; 1.168785e-02 ; 1.750038e-02 ];
Tc_error_3  = [ 1.352728e+01 ; 1.711641e+01 ; 4.488829e+01 ];

%-- Image #4:
omc_4 = [ -3.935352e-01 ; -3.085157e+00 ; -2.427582e-01 ];
Tc_4  = [ 5.527182e+02 ; -4.931134e+02 ; 1.048761e+03 ];
omc_error_4 = [ 3.323967e-03 ; 1.064770e-02 ; 1.935470e-02 ];
Tc_error_4  = [ 1.345947e+01 ; 1.720713e+01 ; 4.553246e+01 ];

%-- Image #5:
omc_5 = [ 1.021952e+00 ; 2.961736e+00 ; 1.249518e-01 ];
Tc_5  = [ 4.463913e+02 ; -6.643871e+02 ; 1.257994e+03 ];
omc_error_5 = [ 6.014897e-03 ; 1.178116e-02 ; 1.807061e-02 ];
Tc_error_5  = [ 1.594617e+01 ; 2.029531e+01 ; 5.455348e+01 ];

%-- Image #6:
omc_6 = [ 1.159511e+00 ; 2.886747e+00 ; 1.018817e-01 ];
Tc_6  = [ 3.312382e+02 ; -6.556992e+02 ; 1.275930e+03 ];
omc_error_6 = [ 6.279385e-03 ; 1.161633e-02 ; 1.825757e-02 ];
Tc_error_6  = [ 1.605785e+01 ; 2.034442e+01 ; 5.486023e+01 ];

%-- Image #7:
omc_7 = [ 1.003473e-01 ; 3.053704e+00 ; 6.571653e-02 ];
Tc_7  = [ 7.312627e+02 ; -6.917170e+02 ; 1.378551e+03 ];
omc_error_7 = [ 4.824447e-03 ; 1.306672e-02 ; 1.765778e-02 ];
Tc_error_7  = [ 1.737878e+01 ; 2.195314e+01 ; 5.956456e+01 ];

%-- Image #8:
omc_8 = [ 1.236030e-01 ; 3.071696e+00 ; 9.722178e-02 ];
Tc_8  = [ 6.744273e+02 ; -7.160849e+02 ; 1.344004e+03 ];
omc_error_8 = [ 4.567166e-03 ; 1.312098e-02 ; 1.810927e-02 ];
Tc_error_8  = [ 1.704024e+01 ; 2.156151e+01 ; 5.849343e+01 ];

%-- Image #9:
omc_9 = [ 6.674342e-02 ; -3.005992e+00 ; 6.642035e-02 ];
Tc_9  = [ 7.837155e+02 ; -4.280887e+02 ; 1.251279e+03 ];
omc_error_9 = [ 5.602234e-03 ; 1.689108e-02 ; 2.444481e-02 ];
Tc_error_9  = [ 1.610287e+01 ; 1.998771e+01 ; 5.412311e+01 ];

%-- Image #10:
omc_10 = [ -4.288774e-02 ; 3.137709e+00 ; 1.467094e-02 ];
Tc_10  = [ 5.514702e+02 ; -5.120240e+02 ; 1.289318e+03 ];
omc_error_10 = [ 3.665212e-03 ; 1.357703e-02 ; 1.860306e-02 ];
Tc_error_10  = [ 1.614496e+01 ; 2.032773e+01 ; 5.533687e+01 ];

%-- Image #11:
omc_11 = [ -9.366028e-01 ; -2.893438e+00 ; 5.937574e-02 ];
Tc_11  = [ 2.892310e+02 ; -7.301611e+02 ; 1.301240e+03 ];
omc_error_11 = [ 6.339738e-03 ; 1.340032e-02 ; 1.930642e-02 ];
Tc_error_11  = [ 1.658269e+01 ; 2.039710e+01 ; 5.602323e+01 ];

%-- Image #12:
omc_12 = [ -9.219872e-01 ; -2.880120e+00 ; 3.733705e-02 ];
Tc_12  = [ 3.068529e+02 ; -7.418578e+02 ; 1.283984e+03 ];
omc_error_12 = [ 6.451046e-03 ; 1.364137e-02 ; 1.909623e-02 ];
Tc_error_12  = [ 1.646471e+01 ; 2.031770e+01 ; 5.556873e+01 ];

%-- Image #13:
omc_13 = [ 9.573654e-01 ; -2.949687e+00 ; -1.496186e-01 ];
Tc_13  = [ 7.861176e+02 ; -1.326859e+02 ; 1.248761e+03 ];
omc_error_13 = [ 4.584708e-03 ; 1.278487e-02 ; 2.180678e-02 ];
Tc_error_13  = [ 1.592186e+01 ; 1.999242e+01 ; 5.367876e+01 ];

%-- Image #14:
omc_14 = [ 4.143994e-01 ; -3.081595e+00 ; -2.230674e-01 ];
Tc_14  = [ 7.498104e+02 ; -2.651251e+02 ; 1.235446e+03 ];
omc_error_14 = [ 4.040656e-03 ; 1.245795e-02 ; 2.276452e-02 ];
Tc_error_14  = [ 1.572366e+01 ; 1.989702e+01 ; 5.326310e+01 ];

%-- Image #15:
omc_15 = [ -9.204577e-01 ; -2.855631e+00 ; -1.761412e-01 ];
Tc_15  = [ 4.518925e+02 ; -6.195416e+02 ; 1.260762e+03 ];
omc_error_15 = [ 5.987652e-03 ; 1.419029e-02 ; 2.279180e-02 ];
Tc_error_15  = [ 1.646322e+01 ; 2.064520e+01 ; 5.415246e+01 ];

%-- Image #16:
omc_16 = [ 2.636201e-01 ; -3.043394e+00 ; -2.524469e-01 ];
Tc_16  = [ 7.863515e+02 ; -5.032589e+02 ; 1.272516e+03 ];
omc_error_16 = [ 4.655144e-03 ; 1.542238e-02 ; 2.212921e-02 ];
Tc_error_16  = [ 1.668620e+01 ; 2.088485e+01 ; 5.511985e+01 ];

%-- Image #17:
omc_17 = [ -7.781109e-01 ; -2.921141e+00 ; -6.185590e-02 ];
Tc_17  = [ 3.467846e+02 ; -7.209075e+02 ; 1.307209e+03 ];
omc_error_17 = [ 6.257313e-03 ; 1.538526e-02 ; 1.999493e-02 ];
Tc_error_17  = [ 1.688701e+01 ; 2.114845e+01 ; 5.680033e+01 ];

%-- Image #18:
omc_18 = [ 1.461968e-02 ; -3.070790e+00 ; -3.279317e-01 ];
Tc_18  = [ 7.813853e+02 ; -4.725830e+02 ; 1.352960e+03 ];
omc_error_18 = [ 4.478011e-03 ; 1.454049e-02 ; 2.713347e-02 ];
Tc_error_18  = [ 1.753408e+01 ; 2.205679e+01 ; 5.851574e+01 ];

%-- Image #19:
omc_19 = [ -1.159973e-02 ; 3.114115e+00 ; 3.614081e-01 ];
Tc_19  = [ 6.761720e+02 ; -4.686715e+02 ; 1.375546e+03 ];
omc_error_19 = [ 4.283130e-03 ; 1.433005e-02 ; 2.735602e-02 ];
Tc_error_19  = [ 1.746820e+01 ; 2.229173e+01 ; 5.970172e+01 ];

%-- Image #20:
omc_20 = [ 9.087876e-02 ; 3.070378e+00 ; 1.743228e-01 ];
Tc_20  = [ 5.765609e+02 ; -4.287140e+02 ; 1.513565e+03 ];
omc_error_20 = [ 4.128378e-03 ; 1.507956e-02 ; 2.667390e-02 ];
Tc_error_20  = [ 1.871082e+01 ; 2.405306e+01 ; 6.493601e+01 ];

%-- Image #21:
omc_21 = [ 5.971601e-02 ; 2.990555e+00 ; 5.790637e-01 ];
Tc_21  = [ 5.035566e+02 ; -5.805228e+02 ; 1.385576e+03 ];
omc_error_21 = [ 4.651595e-03 ; 1.580086e-02 ; 2.663298e-02 ];
Tc_error_21  = [ 1.754051e+01 ; 2.258476e+01 ; 6.095468e+01 ];

%-- Image #22:
omc_22 = [ -3.381956e-02 ; 2.805191e+00 ; 2.792437e-01 ];
Tc_22  = [ 2.635220e+02 ; -3.378889e+02 ; 1.478665e+03 ];
omc_error_22 = [ 5.001701e-03 ; 1.580492e-02 ; 2.382721e-02 ];
Tc_error_22  = [ 1.809598e+01 ; 2.307191e+01 ; 5.862163e+01 ];

%-- Image #23:
omc_23 = [ 5.287474e-02 ; -3.057939e+00 ; -2.968221e-01 ];
Tc_23  = [ 7.129601e+02 ; -3.790323e+02 ; 1.422541e+03 ];
omc_error_23 = [ 4.414213e-03 ; 1.569380e-02 ; 2.831057e-02 ];
Tc_error_23  = [ 1.829846e+01 ; 2.291000e+01 ; 6.119675e+01 ];

