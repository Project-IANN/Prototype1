#This module will detect 1.

#load test.dat;
load Thetafor8Binary.dat;
load Buga.dat
#Photo = loadMNISTImages('train-images.idx3-ubyte');
#Photo1 = Photo(:,1191);
#Photo1 = [1;Photo1];
#Photo1 = Photo1';


function per = h(O,X)
  z=O*X';
  per=1./(1+e.^-z);

end

Photo1=Moto;

ans=h(O8,Photo1);
ans

