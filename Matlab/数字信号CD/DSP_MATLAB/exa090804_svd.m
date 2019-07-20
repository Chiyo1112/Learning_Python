%-----------------------------------------------------------------------
% exa090804_svd.m, for example 9.8.4
% to test svd.m;
% 在MATLAB6.1 和 MATLAB5.3下运行该程序，所得到的 U,V矩阵稍有不同，
% 但奇异值是一样的
%-----------------------------------------------------------------------
clear all;

% 对给定的矩阵 X，对其作奇异值分解；
X=[1 1 1;2 2 1;3 1 3;1 0 1]
y=[1 2 4 3];
y=y';
[U,S,V]=svd(X)
yp=U'*y
cls=V*(yp(1:3)./diag(S));
els=sum(yp(3+1:4).^2);
cls
els