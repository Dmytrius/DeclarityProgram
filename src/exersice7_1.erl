%%1. Два спортсмени можуть брати участь в одному і тому
%% ж змаганні, якщо вони займаються одним і тим же видом спорту і мають один і той же розряд.

-module(exersice7_1).
-author("boykodm").

%% API
-export([sportsmans/0,filter/1]).

% {Name, Sport type, Class}
sportsmans() ->
  [ {adam, tennis, 1},
    {bob, soccer, 1},
    {dick, swim, 1},
    {john, tennis, 2},
    {mike, soccer, 2},
    {nick, soccer, 1}].
filter(Sportsman) -> filter(Sportsman, []).

filter([Sportsman | Rest], Acc) ->
  case Sportsman of
    {_, soccer, 1} -> filter(Rest, [Sportsman | Acc]);
    {_, _, _} -> filter(Rest, Acc)
  end;

filter([],Acc) -> Acc.

