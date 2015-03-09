function cv = buildbox( l,w,h )
%BUILDBOX Summary of this function goes here
%   Detailed explanation goes here
    s = 2*(l.*w + w.*h + l.*h);
    c = 2.*s;
    v = l.*w.*h;
    cv = [c;v];
end

