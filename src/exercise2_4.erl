
-module(exercise2_4).
-author("boykodm").

%% API
-export([main/1]).


main(X) when X<55 ->
  factorial(X)+X;
main(X) when X>55 ->
  X.

factorial(X) when X>=1 ->
  factorial(X-1)*X;
factorial(X) when X<1 ->
  1.