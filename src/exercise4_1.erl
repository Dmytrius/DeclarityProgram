%% 1. Видалити із списку елементи, що повторюються, залишивши один екземпляр.

-module(exercise4_1).
-author("boykodm").

%% API
-export([get_test/0, func_main/1]).

get_test() ->
  [1,2,3,4,5,5,6,2].

func_main(List) -> func_main(List,[]).

func_main([],Acc) -> lists:reverse(Acc);

func_main([H|T],Acc) ->
  case lists:member(H,Acc) of
    true -> func_main(T, Acc);
    false -> func_main(T, [H|Acc])
  end.
