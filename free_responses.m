%1
answer1 = 'For all the Haar matrix operations, dont the vectors need to have a length that is a power of two?';
u = [31,29,23,17,-6,-8,-2,-4];
w = [u,u,u,u,u,u,u,u];
%2
answer2 = 'haar_inv is the inverse of haar. The compression algorithm gives many repeating values, allowing for a more efficient encoding';
ok = haar(w);
%3
answer3 = 'For k = 3,4,5,6, the resultant vector remains the same except for the very first 2^{n-k} elements. Handel gets sped up after each iteration of Haar. This makes sense, since it compresses it by 2x in each iteration, thus increasing the speed and perceived pitch by 2x.';
for i=3:6 % there are only 64 elements in w, = 2^6
    a3(i,:) = haar_step(w,i);
end

load handel
handel = y(1:65536);
c1 = haar(handel);
c1(32768:end) = 0;
c1_inv = haar_inv(c1);

%4
load durer
Xdurer = X(1:512,:);
Xdurer(:,510:512) = 50;
figure
colormap(gray)
imagesc(Xdurer)

T = [
    1212 -306 -146 -54 -24 -68 -40 4
    30 36 -90 -2 8 -20 8 -4
    -50 -10 -20 -24 0 72 -16 -16
    82 38 -24 68 48 -64 32 8
    8 8 -32 16 -48 -48 -16 16
    20 20 -56 -16 -16 32 -16 -16
    -8 8 -48 0 -16 -16 -16 -16
    44 36 0 8 80 -16 -16 0];
P = haar_inv2d(T);
ames_P = [
    576 704 1152 1280 1344 1472 1536 1536
    704 640 1156 1088 1344 1408 1536 1600
    768 832 1216 1472 1472 1536 1600 1600
    832 832 960 1344 1536 1536 1600 1536
    832 832 960 1216 1536 1600 1536 1536
    960 896 896 1088 1600 1600 1600 1536
    768 768 832 832 1280 1472 1600 1600
    448 768 704 640 1280 1408 1600 1600];

%Ames Paper's typo: ames_P(2,3) = 1156, but the real answer is 1152

%5
A = [100,103,99,97,93,94,78,73;
    102,97,100,111,113,104,96,82;
    99,109,104,95,93,92,88,76;
    114,104,99,102,93,82,75,75;
    96,91,91,87,79,78,77,76;
    90,88,83,78,77,74,76,76;
    92,81,73,72,69,65,66,62;
    75,70,69,65,60,55,61,65];
C1 = haar_2d_n(A);
C = round(C1);

