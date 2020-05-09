%% Задана матриця невідомих розмірів. Отримати матрицю, в якій крайні
%% елементи головної діагоналі поміняються місцями.


-module(exercise1).
-author("boykodm").

%% API
-export([func/1]).

matrix_data(1) ->
  [[1,2,3],
    [2,4,6],
    [9,4,5]].

func(M) ->
  [[A | R1] | Rs] = matrix_data(M),
  Z = get_z(Rs),
  [[Z | R1] | get_matr(Rs, A)].

get_z([R]) ->
  lists:last(R);

get_z([_ | Rs]) ->
  get_z(Rs).

get_matr([R], A) ->
  [ch_row(R, A)];

get_matr([R|Rs], A) ->
  [R | get_matr(Rs, A)].

ch_row([_], A) -> [A];
ch_row([X|Xs], A) ->
  [X|ch_row(Xs, A)].
