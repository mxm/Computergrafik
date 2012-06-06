M_NDC = [ 1 / tand(30) 0 0 0; 
	  0 1 / tand(30) 0 0; 
	  0 0 -101/99 -200/99; 
	  0 0 -1 0 ];
M_NDC_i = inverse(M_NDC);

Aw = [0,0,1,1]';
Bw = [0,0,2,1]';

0.5 - interpolate(Aw, Bw, M_NDC, M_NDC_i)

Aw = [0,0,1,1]';
Bw = [0,0,10,1]';

0.5 - interpolate(Aw, Bw, M_NDC, M_NDC_i)

Aw = [0,0,1,1]';
Bw = [0,0,100,1]';

0.5 - interpolate(Aw, Bw, M_NDC, M_NDC_i)
