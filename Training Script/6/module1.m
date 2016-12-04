#This module will detect 1.

#load test.dat;
load Thetafor6Binary.dat;
#load buga.dat
Photo = loadMNISTImages('train-images.idx3-ubyte');
Photo1 = Photo(:,19);
Photo1 = [1;Photo1];
Photo1 = Photo1';


function per = h(O,X)
  z=O*X';
  per=1./(1+e.^-z);

end

#Photo1=photo;

ans=h(O6,Photo1);
ans

