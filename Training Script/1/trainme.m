# X will be generated in the program named LoadMNISTImages function.

X=loadMNISTImages('train-images.idx3-ubyte');


# We use 1000 datasets for our training. i.e m=1000.
X=X(:,1:10000);
A = ones(1,10000);
#Adding x0=1 as for constant.
X=[A;X];


Y=loadMNISTLabels('train-labels.idx1-ubyte');
Y=Y(1:10000)';

# We are considering the result as a binary thingy.
for buga=1:10000,
  if Y(buga)==1,
    Y(buga)=1;
   else 
    Y(buga)=0;
  end;
end;


# This function calculates the hypothesis fucntion.
# O-A horizontal vector of the parameters that the gradient descent will find out.
# X- A 2d array that contains all the Training set column wise. i.e each column represents a particular picture.
# Returns a horizontal vector containing the result of hypothesis(b). 
function b = h(O,X)

z=O*X;
b=1./(1+e.^-z);

end


#New set of thetas or O's.
# Y - this is a horizonal vector containing the actual result.
# This function calculates theta for gradient descent.
# m is the number of elements in the training set.
# aplha is the learning rate.
function boo = newTheta(O,b,Y,X,m,alpha)

boo= O-((alpha*(1./m))*((b-Y)*X'));

end

# Now we write the gradient descent loop.
function Z = gradientDescent(f,O,Y,X)
  for c=1:f,
    k=newTheta(O,h(O,X),Y,X,10000,0.03);
    O=k;
  end;
    Z=O;
end

O=ones(1,785);

O=gradientDescent(100000,O,Y,X);

O

save Thetafor1.txt O -ascii;
save Thetafor1Binary.dat O; 


