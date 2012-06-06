function v = interpolate(Aw, Bw, M_NDC, M_NDC_i)
	Andc = cartesianize(M_NDC * Aw);
	Bndc = cartesianize(M_NDC * Bw);
	Mndc = (Andc + Bndc) / 2;
	Mw = cartesianize(M_NDC_i * Mndc);
	lambda = [Aw Bw] \ Mw; % solve system
	v = lambda(2); % our solution
end;
