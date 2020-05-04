%%%-------------------------------------------------------------------
%%% @author boykodm
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. тра 2020 23:58
%%%-------------------------------------------------------------------
-module(exercise1).
-author("boykodm").

%% API
-export([func/2]).

func(X,_) when 1<X, X<2 ->
  X;
func(X,K) when X>2 ->
  mult(X,K,12).

mult(X, K, N) when N>0 ->
  X*K*mult(X,K,N-1);
mult(_X,_K,0) -> 1.