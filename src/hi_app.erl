%%%-------------------------------------------------------------------
%% @doc hi public API
%% @end
%%%-------------------------------------------------------------------

-module(hi_app).

-behaviour(application).
-type super_type() :: #{
        name := ft()
       }.

-type ft() :: foo:ttt().

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================
some() -> 123/123.

start(_StartType, _StartArgs) ->
    io:format("Hi there~n"),

    Fun = fun() ->
      io:format("lambda was run.~n"),
      valid = some()
    end,
    foo:do(fun() -> Fun() end),
    io:format("> ~p~n", [hello_world]),
    hi_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) -> ok.

%%====================================================================
%% Internal functions
%%====================================================================

