-module(kazoo_command_play).

-export([create_command_play/1]).

create_command_play(Url) ->
%% [{<<"module">>,<<"play">>},{<<"data">>,[{<<"id">>,Text}]},{<<"children">>,[]}].
[{<<"module">>,<<"play">>},{<<"data">>,[{<<"id">>,Url}]}].

