-module(peak_finder_one_dimensional). 
-export([peak/1,p/1]). 

% Peak definition: b is a peak if and only if b >= a and b >= c %

% return the first found peak in a list %
p([H|T]) -> p(H, T).
p(A, [B|_]) when A >= B -> A;
p(A, []) -> A;
p(_, [A|T]) -> p(A, T).