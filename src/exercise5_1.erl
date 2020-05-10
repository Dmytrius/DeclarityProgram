%%1. Задано список, довжина якого кратна 4. Видалити 1-у чверть списку, а
%% елементи 3-ої розташувати в порядку, зворотному заданому.

-module(exercise5_1).
-author("boykodm").

%% API
-export([list_pro_main1/1, get_list/0]).

get_list() ->
  [11,12,13,14, 21,22,23,24, 31,32,33,34, 41,42,43,44].

list_pro_main1(L)->
  K = length(L) div 4,
  K2 = K+1,
  K3 = 2*K+1,
  K4 = 3*K+1,
  list_pro(L,1,K2,K3,K4,[]).

% 1st quarter
list_pro([_X|Xs],I,K2,K3,K4,Acc) when I<K2 -> list_pro(Xs,I+1,K2,K3,K4,Acc);  %%deleted

% 2nd quarter
list_pro([X|Xs],I,K2,K3,K4,Acc) when I>=K2,I<K3 -> [X|list_pro(Xs,I+1,K2,K3,K4,Acc)];

% 3rd quarter
list_pro([X|Xs],I,K2,K3,K4,Acc) when I>=K3, I<K4 -> list_pro(Xs,I+1,K2,K3,K4,[X|Acc]);  %%reverse

% 4th quarter
list_pro(Xs,K4,_K2,_K3,K4,Acc) -> Acc ++ Xs.
