%%%-------------------------------------------------------------------
%%% @author boykodm
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. тра 2020 00:05
%%%-------------------------------------------------------------------
-module(exercise2).
-author("boykodm").

%% API
-export([func/1]).


func(X) when X<1 ->
  0;
func(X) when X>1 ->
  factorial(X).

factorial(X) when X>0 ->
  X*factorial(X-1);
factorial(0) ->
  1.