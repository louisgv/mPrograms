function dy=K_Ar_dating(t,x)
ka=0.581*(10.^-10);
kc=4.962*(10.^-10);
dy(1,1)=-(kc+ka).*x(1);
dy(2,1)=ka.*x(1);
dy(3,1)=kc.*x(1);
end