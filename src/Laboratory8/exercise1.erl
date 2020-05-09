%% Видалити букви z, w із заданого списку латинських букв.

-module(exercise1).
-author("boykodm").

%% API
-export([filter_list/1,get_abc/0]).

get_abc() -> [d,a,e,r,c,d,g,n,w,f,c,z,s,p].

filter_list([X | Xs]) when X =:=w ->
  filter_list(Xs);
filter_list([X | Xs]) when X =:=z ->
  filter_list(Xs);
filter_list([X | Xs]) ->
  [X|filter_list(Xs)];
filter_list([]) -> [].
