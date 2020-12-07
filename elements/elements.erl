-module(elements).
-export([call/2]).



-export([idojaras/2,idojaras/1]).
-export([nonrek/1]).



mult(A,B) ->
     A * B.

nonrek(L) when is_list(L) ->
    [mult(X , X) || X <- L, X > 3];
nonrek(_) ->
    bad_arg.


call(F,D) ->
    F(D).

idojaras(L) when is_list(L) ->
    Osszes = idojaras(0,L),
    io:format("A jelentés feldolgozása lefutott mind a ~w városra ~n",[Osszes]);
idojaras(_) ->
    bad_arg.

idojaras(DB, [Eleje | Vege]) when is_list(Eleje) ->
    idojaras(idojaras(DB,Eleje), Vege);
idojaras(DB, [{V,C} | Varosok]) ->
    io:format("~w városban ~w fok van jelenleg~n", [V,C]),
    idojaras(DB + 1, Varosok);
idojaras(DB, [Adat | Varosok]) ->
    io:format("Hibás adat: ~w~n",[Adat]),
    idojaras(DB, Varosok);
idojaras(DB, []) ->
    DB.
