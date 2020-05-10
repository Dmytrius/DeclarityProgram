
%% 1. Класифікація тіл обертань.

-module(exercise1_1).
-author("boykodm").

%% API
-export([rotate_classification/1]).


rotate_classification('circle') -> 'Ball';
rotate_classification('triangle') -> 'Cone';
rotate_classification('square') -> 'Cylinder'.