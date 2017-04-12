-module(peak_finder_one_dimensional). 
-export([peak/1]). 

% Peak definition: b is a peak if and only if b >= a and b >= c %

% return the first found peak in a list, undefined if no peak found %
peak(List) -> peak(List, undefined, undefined).
peak([Head|Tail], Previous, Peak) when Peak == undefined -> peak(Tail, Head, find_peak(Previous, Head, get_next(Tail)));
peak(_, _, Peak) -> Peak.

find_peak(undefined, Current, Right) when Current >= Right -> Current;
find_peak(Left, Current, undefined) when Current >= Left -> Current;
find_peak(Left, Current, Right) when Current >= Left andalso Current >= Right -> Current;
find_peak(undefined, Current, undefined) -> Current;
find_peak(_, _, _) -> undefined.

% returns list's head %
get_next([]) -> undefined;
get_next([Head|_]) -> Head.