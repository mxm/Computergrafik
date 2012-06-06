M_NDC = [ 1 / tand(30) 0 0 0; 
	  0 1 / tand(30) 0 0; 
	  0 0 -101/99 -200/99; 
	  0 0 -1 0 ];
M_NDC_i = inverse(M_NDC);

Aw = [-10,0,20,1]';
Bw = [0,0,20,1]';
Cw = [-1,0,18,1]';
Dw = [5,0,26,1]';
Ew = [7,0,20,1]';
Fw = [7,0,30,1]';

interpolate(Aw, Bw, M_NDC, M_NDC_i)
interpolate(Cw, Dw, M_NDC, M_NDC_i)
interpolate(Ew, Fw, M_NDC, M_NDC_i)
