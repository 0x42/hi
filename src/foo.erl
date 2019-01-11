-module(foo).

-export([ex1/1]).
-export([do/1]).

-type ttt_id() :: any().

-export_type([ttt_id/0]).

ex1(_arg) -> ok.

do(Fun) ->
    try Fun() of
        ok ->
            ok;
        R ->
            {ok, R}
    catch
        Thrown -> {error, Thrown}
    end.