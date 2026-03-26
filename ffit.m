R_cal=[19.12,12.18,9.31,4.42,3.35];
T_cal=[10,21.1,26.6,45,52];
[NTC,~]=creatFit(T_cal,R_cal);
disp(NTC)

R1=1e4;
T=0:0.1:100;

R=feval(NTC,T);
plot(T,(5/1024)*floor(5*R./(R+R1)/(5/1024)));
ylim([0 5]);
title('voltage divider output');
xlable(['temperature']);
ylable('voltage (v)');
