%%%------------0.-------------------------------------------------------
%%% @author boykodm
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. тра 2020 20:59
%%%-------------------------------------------------------------------
-module(exercise1).
-author("boykodm").

%% API
-export([func_main/4]).

%% +(X, FinalX, StepSize, N)
func_main(X,Xf,H,N) ->
  func_list(X,Xf+H/100,H,N).

%% +(X, FinalX, StepSize, N)
func_list(X,Xf,H,N) when X=<Xf ->
  [sum_tail(X,N,0)|func_list(X+H,Xf,H,N)];
func_list(X,Xf,_,_) when X>Xf -> [].

sum_tail(X, N, _) ->
  math:cos(X+2*N)/(math:exp(N)+1)-2*math:exp(X).