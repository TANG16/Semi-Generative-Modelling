function [ Y ] = lucasNLL_T( theta, n0000, n0001, n0010, n0011, ...
    n0100, n0101, n0110, n0111, n1000, n1001, n1010, n1011, n1100, n1101, ...
    n1110, n1111)
%log likelihood of unlabelled target data
a = sigm(theta(1));
b = sigm(theta(2));
c = sigm(theta(3));
d = sigm(theta(4));
e = sigm(theta(5));
f = sigm(theta(6));
g = sigm(theta(7));
h = sigm(theta(8));
k = sigm(theta(9));
m = sigm(theta(10));

N = n0000+n0001+n0010+n0011+n0100+n0101+n0110+n0111+...
                n1000+n1001+n1010+n1011+n1100+n1101+n1110+n1111;

Y = -(n0000*log( a*(1-f)*(1-k)  + (1-a)*(1-e)*(1-g) ) + ...
    n0001*log( a*(1-f)*k        + (1-a)*(1-e)*g ) + ...
    n0010*log( a*f*(1-m)        + (1-a)*e*(1-h)) + ...
    n0011*log( a*f*m            + (1-a)*e*h) + ...
    n0100*log( b*(1-f)*(1-k)    + (1-b)*(1-e)*(1-g)) + ...
    n0101*log( b*(1-f)*k        + (1-b)*(1-e)*g) + ...
    n0110*log( b*f*(1-m)        + (1-b)*e*(1-h)) + ...
    n0111*log( b*f*m            + (1-b)*e*h) + ...
    n1000*log( c*(1-f)*(1-k)    + (1-c)*(1-e)*(1-g) ) + ...
    n1001*log( c*(1-f)*k        + (1-c)*(1-e)*g ) + ...
    n1010*log( c*f*(1-m)        + (1-c)*e*(1-h)) + ...
    n1011*log( c*f*m            + (1-c)*e*h) + ...
    n1100*log( d*(1-f)*(1-k)    + (1-d)*(1-e)*(1-g)) + ...
    n1101*log( d*(1-f)*k        + (1-d)*(1-e)*g) + ...
    n1110*log( d*f*(1-m)        + (1-d)*e*(1-h)) + ...
    n1111*log( d*f*m            + (1-d)*e*h) )/N;

end

