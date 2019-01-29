x=imread('Unknown.jpg');
a=x(:,:,1);
b=x(:,:,2);
c=x(:,:,3);
d=size(a);
e=d(1);
f=d(2);

for i=1:e
    for j=1:f
        aa(i,j)=(255/(max(a)-min(a)))*(a(i,j)-min(a));
    end
end

for i=1:e
    for j=1:f
        ba(i,j)=(255/(max(b)-min(b)))*(b(i,j)-min(b));
    end
end

for i=1:e
    for j=1:f
        ca(i,j)=(255/(max(c)-min(c)))*(c(i,j)-min(c));
    end
end

for i=1:255
    va(i)=i;
end
[aaa,aaaind]=histc(va,aa);
