function UNRZ(h)
clf;
n=1;
l=length(h);
h(l+1)=1;
while n<=length(h)-1;
    t=n-1:0.001:n;
if h(n) == 0
    if h(n+1)==0 
        y=(t>n);
    else
        y=(t==n);
    end
    d=plot(t,y);grid on;
    title('Line code UNIPOLAR NRZ');
    set(d,'LineWidth',2.5);
    hold on;
    axis([0 length(h)-1 -1.5 1.5]);
    disp('zero');
else
    if h(n+1)==0
        y=(t<n)-0*(t==n);
    else
        y=(t<n)+1*(t==n);
    end
    d=plot(t,y);
    grid on;
    title('Line code UNIPOLAR NRZ');
    set(d,'LineWidth',2.5);
    hold on;
    axis([0 length(h)-1 -1.5 1.5]);
    disp('one');
end
n=n+1;
pause;
end