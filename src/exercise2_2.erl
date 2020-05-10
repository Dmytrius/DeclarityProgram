


-module(exercise2_2).
-author("boykodm").

%% API
-export([loop/1]).


loop(X) when is_integer(X), X>=1 ->
  loop(X-1),
  io:format("~B! = ~B~n", [X,factorial(X)]);
loop(X) when X<1 -> 0.

factorial(0) -> 1;
factorial(X) when X>0 -> X*factorial(X-1).

