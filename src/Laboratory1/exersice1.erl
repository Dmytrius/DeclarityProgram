%%%-------------------------------------------------------------------
%%% @author boykodm
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. тра 2020 23:02
%%%-------------------------------------------------------------------
-module(exersice1).
-author("boykodm").

%% API
-export([strategy_classification/2]).


strategy_classification(0,0) -> 'Depth-first search';
strategy_classification(0,1) -> 'Breadth-first search';
strategy_classification(1,0) -> 'Hill-climbing';
strategy_classification(1,1) -> 'Best-first search'.