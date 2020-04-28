%按照12平均律音标
%主旋律的谱子是t，和弦的谱子是high，低音部的谱子是bass

clear, clc

t_A = [ 56 55   56 55 56 51 54 52   49 0 40 44 49   51 0 44 48 51   52 0 44 56 55 ...
      56 55 56 51 54 52   49 0 40 44 49   51 0 44 52 51   49 0 51 52 54   56 47 57 56 ...
      54 45 56 54   52 44 54 52   51 0 44 56 0   0 56 68 0 0 55   56 0 0 55 56 55 ...
      56 55 56 51 54 52   49 0 40 44 49   51 0 44 48 51   52 0 44 56 55   56 55 56 51 54 52 ...
      49 0 40 44 49   51 0 44 52 51   49];
tdur_A = [ .5 .5   .5 .5 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5 ...
         .5 .5 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5   1.5 .5 .5 .5 ...
        1.5 .5 .5 .5   1.5 .5 .5 .5   1 .5 .5 .5 .5  .5 .5 .5 .5 .5 .5   .5 .5 .5 .5 .5 .5 ...
         .5 .5 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5   1 .5 .5 .5 .5   .5 .5 .5 .5 .5 .5 ...
         1 .5 .5 .5 .5   1 .5 .5 .5 .5   2];


b_A = [ 0   0   25 32 37 0 0   20 32 36 0 0   25 32 39 0 0 ...
      0   25 32 37 0 0   20 32 36 0 0   25 32 37 0   28 35 40 0 0 ...
      23 35 39 0 0   25 32 37 0 0   20 32 44 0 44   56 0 0 55 56 0   0 55 56 0 0 ...
      0   25 32 37 0 0   20 32 36 0 0   25 32 37 0 0   0 ...
      25 32 37 0 0   20 32 36 0 0   25 32 37 0];

bdur_A = [ 1   3   .5 .5 .5 .5 1   .5 .5 .5 .5 1   .5 .5 .5 .5 1 ...
         3   .5 .5 .5 .5 1   .5 .5 .5 .5 1   .5 .5 .5 1.5   .5 .5 .5 .5 1 ...
        .5 .5 .5 .5 1   .5 .5 .5 .5 1   .5 .5 .5 1 .5   .5 .5 .5 .5 .5 .5   .5 .5 .5 .5 1 ...
         3   .5 .5 .5 .5 1   .5 .5 .5 .5 1   .5 .5 .5 .5 1   3 ...
        .5 .5 .5 .5 1   .5 .5 .5 .5 1   .5 .5 .5 .5];


play(t_A,tdur_A,b_A,bdur_A);