% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 787.377071170761610 ; 783.005357226486240 ];

%-- Principal point:
cc = [ 671.906553371608538 ; 450.142176622111947 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.217846494881338 ; 0.032062681197001 ; -0.008782480762035 ; -0.002901883238147 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 23.611648864940939 ; 23.057572871561064 ];

%-- Principal point uncertainty:
cc_error = [ 8.637972510390941 ; 10.285757987073795 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.021194325939981 ; 0.040639450056402 ; 0.002588096924938 ; 0.001475882028993 ; 0.000000000000000 ];

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
omc_1 = [ -2.986385e-02 ; -3.031543e+00 ; -2.711893e-02 ];
Tc_1  = [ 5.833629e+02 ; -4.554027e+02 ; 1.401691e+03 ];
omc_error_1 = [ 3.496322e-03 ; 1.491474e-02 ; 2.383713e-02 ];
Tc_error_1  = [ 1.597462e+01 ; 1.903216e+01 ; 4.356158e+01 ];

%-- Image #2:
omc_2 = [ 5.736865e-02 ; 3.123249e+00 ; 1.244518e-01 ];
Tc_2  = [ 4.060836e+02 ; -5.475138e+02 ; 1.462646e+03 ];
omc_error_2 = [ 3.353956e-03 ; 1.436804e-02 ; 2.540305e-02 ];
Tc_error_2  = [ 1.646340e+01 ; 1.969212e+01 ; 4.508153e+01 ];

%-- Image #3:
omc_3 = [ -4.295329e-01 ; -2.970725e+00 ; -1.824197e-01 ];
Tc_3  = [ 2.746302e+02 ; -5.415568e+02 ; 1.228258e+03 ];
omc_error_3 = [ 3.840013e-03 ; 1.280665e-02 ; 2.075189e-02 ];
Tc_error_3  = [ 1.403422e+01 ; 1.677332e+01 ; 3.782310e+01 ];

%-- Image #4:
omc_4 = [ -3.885601e-01 ; -3.058901e+00 ; -2.773771e-01 ];
Tc_4  = [ 1.732053e+02 ; -5.721864e+02 ; 1.258243e+03 ];
omc_error_4 = [ 3.881609e-03 ; 1.311840e-02 ; 2.219435e-02 ];
Tc_error_4  = [ 1.433191e+01 ; 1.719543e+01 ; 3.887084e+01 ];

%-- Image #5:
omc_5 = [ -1.012877e+00 ; -2.945176e+00 ; -1.154694e-01 ];
Tc_5  = [ 6.989684e+01 ; -7.592299e+02 ; 1.512552e+03 ];
omc_error_5 = [ 7.382659e-03 ; 1.604094e-02 ; 2.432373e-02 ];
Tc_error_5  = [ 1.718928e+01 ; 2.046321e+01 ; 4.696298e+01 ];

%-- Image #6:
omc_6 = [ 1.165814e+00 ; 2.906651e+00 ; 1.006622e-01 ];
Tc_6  = [ -4.509579e+01 ; -7.505663e+02 ; 1.532912e+03 ];
omc_error_6 = [ 6.108676e-03 ; 1.618197e-02 ; 2.466140e-02 ];
Tc_error_6  = [ 1.734658e+01 ; 2.063031e+01 ; 4.742899e+01 ];

%-- Image #7:
omc_7 = [ 1.013045e-01 ; 3.067055e+00 ; 8.802994e-02 ];
Tc_7  = [ 3.567842e+02 ; -7.922526e+02 ; 1.641864e+03 ];
omc_error_7 = [ 3.869169e-03 ; 1.774596e-02 ; 2.467128e-02 ];
Tc_error_7  = [ 1.863835e+01 ; 2.191773e+01 ; 5.075759e+01 ];

%-- Image #8:
omc_8 = [ 1.225082e-01 ; 3.093669e+00 ; 1.167032e-01 ];
Tc_8  = [ 3.004829e+02 ; -8.148625e+02 ; 1.602972e+03 ];
omc_error_8 = [ 3.339595e-03 ; 1.673965e-02 ; 2.224700e-02 ];
Tc_error_8  = [ 1.826170e+01 ; 2.152618e+01 ; 4.993842e+01 ];

%-- Image #9:
omc_9 = [ 7.506301e-02 ; -2.963906e+00 ; 8.309957e-02 ];
Tc_9  = [ 4.119186e+02 ; -6.184506e+02 ; 1.488993e+03 ];
omc_error_9 = [ 3.156754e-03 ; 1.426112e-02 ; 1.829587e-02 ];
Tc_error_9  = [ 1.698672e+01 ; 1.978379e+01 ; 4.511511e+01 ];

%-- Image #10:
omc_10 = [ 4.761988e-02 ; -3.112312e+00 ; 2.418042e-04 ];
Tc_10  = [ 1.764889e+02 ; -6.058266e+02 ; 1.538877e+03 ];
omc_error_10 = [ 4.682623e-03 ; 2.050987e-02 ; 2.789189e-02 ];
Tc_error_10  = [ 1.733202e+01 ; 2.033422e+01 ; 4.695747e+01 ];

%-- Image #11:
omc_11 = [ -9.150249e-01 ; -2.858708e+00 ; 6.820722e-02 ];
Tc_11  = [ -8.285638e+01 ; -8.246677e+02 ; 1.555698e+03 ];
omc_error_11 = [ 8.775824e-03 ; 1.666829e-02 ; 2.492640e-02 ];
Tc_error_11  = [ 1.779246e+01 ; 2.058848e+01 ; 4.765933e+01 ];

%-- Image #12:
omc_12 = [ -8.990120e-01 ; -2.843319e+00 ; 5.575324e-02 ];
Tc_12  = [ -6.519570e+01 ; -8.357973e+02 ; 1.537005e+03 ];
omc_error_12 = [ 7.086478e-03 ; 1.394505e-02 ; 2.041131e-02 ];
Tc_error_12  = [ 1.754354e+01 ; 2.037377e+01 ; 4.698915e+01 ];

%-- Image #13:
omc_13 = [ 1.335907e+00 ; 2.665252e+00 ; -1.027917e-01 ];
Tc_13  = [ -3.107142e+02 ; -7.711937e+02 ; 1.562656e+03 ];
omc_error_13 = [ 5.483969e-03 ; 1.346931e-02 ; 2.071975e-02 ];
Tc_error_13  = [ 1.758688e+01 ; 2.031258e+01 ; 4.661551e+01 ];

%-- Image #14:
omc_14 = [ 4.140277e-01 ; -3.050241e+00 ; -2.656763e-01 ];
Tc_14  = [ 3.725179e+02 ; -3.558901e+02 ; 1.475032e+03 ];
omc_error_14 = [ 4.071537e-03 ; 1.491390e-02 ; 2.505284e-02 ];
Tc_error_14  = [ 1.659946e+01 ; 1.981764e+01 ; 4.538269e+01 ];

%-- Image #15:
omc_15 = [ -8.991774e-01 ; -2.820224e+00 ; -1.552822e-01 ];
Tc_15  = [ 7.679066e+01 ; -7.184009e+02 ; 1.525870e+03 ];
omc_error_15 = [ 7.064226e-03 ; 1.471390e-02 ; 2.500229e-02 ];
Tc_error_15  = [ 1.735227e+01 ; 2.078788e+01 ; 4.721526e+01 ];

%-- Image #16:
omc_16 = [ 2.679349e-01 ; -2.970247e+00 ; -2.747522e-01 ];
Tc_16  = [ 4.067986e+02 ; -5.981749e+02 ; 1.512451e+03 ];
omc_error_16 = [ 3.731656e-03 ; 1.625166e-02 ; 2.158593e-02 ];
Tc_error_16  = [ 1.738467e+01 ; 2.067384e+01 ; 4.725659e+01 ];

%-- Image #17:
omc_17 = [ -7.650976e-01 ; -2.894098e+00 ; -5.844406e-02 ];
Tc_17  = [ -2.724513e+01 ; -8.194526e+02 ; 1.569960e+03 ];
omc_error_17 = [ 6.827175e-03 ; 1.755192e-02 ; 2.232522e-02 ];
Tc_error_17  = [ 1.793600e+01 ; 2.112946e+01 ; 4.873867e+01 ];

%-- Image #18:
omc_18 = [ 1.691715e-02 ; -3.031439e+00 ; -3.663703e-01 ];
Tc_18  = [ 5.052477e+02 ; -5.723344e+02 ; 1.609106e+03 ];
omc_error_18 = [ 3.695690e-03 ; 1.567551e-02 ; 2.805417e-02 ];
Tc_error_18  = [ 1.838161e+01 ; 2.205868e+01 ; 5.014031e+01 ];

%-- Image #19:
omc_19 = [ 9.846579e-03 ; -3.099254e+00 ; -4.070373e-01 ];
Tc_19  = [ 4.014710e+02 ; -5.722840e+02 ; 1.648315e+03 ];
omc_error_19 = [ 3.754790e-03 ; 1.554615e-02 ; 2.885147e-02 ];
Tc_error_19  = [ 1.866072e+01 ; 2.246397e+01 ; 5.094011e+01 ];

%-- Image #20:
omc_20 = [ 9.479461e-02 ; 3.074239e+00 ; 1.963045e-01 ];
Tc_20  = [ 3.034924e+02 ; -5.480818e+02 ; 1.820518e+03 ];
omc_error_20 = [ 3.835425e-03 ; 1.709259e-02 ; 3.221379e-02 ];
Tc_error_20  = [ 2.029871e+01 ; 2.440803e+01 ; 5.574975e+01 ];

%-- Image #21:
omc_21 = [ 6.626922e-02 ; 2.995610e+00 ; 6.502719e-01 ];
Tc_21  = [ 2.294223e+02 ; -6.917985e+02 ; 1.671312e+03 ];
omc_error_21 = [ 4.422170e-03 ; 1.578717e-02 ; 2.682026e-02 ];
Tc_error_21  = [ 1.904158e+01 ; 2.282976e+01 ; 5.100758e+01 ];

%-- Image #22:
omc_22 = [ -1.943366e-02 ; 2.782184e+00 ; 3.359729e-01 ];
Tc_22  = [ -1.448975e+01 ; -4.487042e+02 ; 1.786487e+03 ];
omc_error_22 = [ 5.022745e-03 ; 1.849521e-02 ; 2.674758e-02 ];
Tc_error_22  = [ 1.996539e+01 ; 2.342750e+01 ; 4.856613e+01 ];

%-- Image #23:
omc_23 = [ 5.583895e-02 ; -3.023284e+00 ; -3.447989e-01 ];
Tc_23  = [ 4.355524e+02 ; -3.830869e+02 ; 1.716102e+03 ];
omc_error_23 = [ 4.247977e-03 ; 1.736638e-02 ; 3.169705e-02 ];
Tc_error_23  = [ 1.927611e+01 ; 2.309616e+01 ; 5.345829e+01 ];

