% a) Create a vector A=[0, 10, 20, 30, …300];

A = 0 : 10 : 300

% b) Create a column 10-element vector: B=[5 5 5 5 …. 5]T
% . Use: …*ones(…, …)+…

B = 5*ones(10,1);

% c) Create a matrix C=2x6 with all zeros. Use Matlab function zeros.

C = zeros(2,6);

% d) Create a matrix D 4x6 with random elements between 5 and 10. Use: …*rand(…, …)+…

D = 5 + (10-5) * rand(4, 6);

% e) Assign E=D; and then replace rows 2 and 3 of matrix E with matrix C

E = D;
E(2,:)= C(1,:);
E(3,:)= C(1,:);  

% f) Create a matrix F: 

F = [ones(8,1) [D; E] ones(8,1)];

