function v = cartesianize(v)
	% manipulate a homogenous vector to have w = 1
	v = v / v(4);
end;
