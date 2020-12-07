-module(atvalto).
-export([convert_length/1,test/1]).
-export([call/2]).

call(F,A) ->
    F(A).

test(A) ->
    case A of
        1 -> egy;
        2 -> ketto;
        _ -> egyeb
        end.

convert_length(Length) ->
    case Length of 
        {centimeter,X} ->
            {inch, X /2.54};
        {inc,X} ->
            {centimeter, X * 2.54}
        end.