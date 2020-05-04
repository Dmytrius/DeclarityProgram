%%%-------------------------------------------------------------------
%%% @author boykodm
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. тра 2020 00:18
%%%-------------------------------------------------------------------
-module(exercise3).
-author("boykodm").

%% API
-export([func/3]).


func(X,K,_N) when X<0 ->
  K;
func(X,K,N) when X>0 ->
  summ(X,K,N).

summ(X,K,N) when N>0 ->
  (X*K+2)+summ(X,K,N-1);
summ(_X,_K,0) -> 0.