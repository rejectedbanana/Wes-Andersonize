function cmp=zissou2(vargin)

% function cmp=zissou2(vargin)
%
% Colormap based on the color palette of Wes Anderson's Life Aquatic.
% Inspired by and translated from https://github.com/karthik/wesanderson/blob/master/README.md
% and additional colors pulled from movie poster
%
% KIM 10.14


if nargin<1
    len=length(colormap);
else
    len=vargin(1);
end;

old = [
    0.1055    0.2031    0.4219
    0.0039    0.6680    0.9102
    0.7617    0.8047    0.8125
    0.8789    0.6836         0
    0.9570    0.2930    0.1016];


xold=(1:size(old,1))./size(old,1);
dx = 1/(size(old,1)-1);
xold=0:dx:1;
dx = 1/(len-1);
xnew = 0:dx:1;
cmp=interp1(xold,old,xnew);