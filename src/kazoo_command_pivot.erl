-module(kazoo_command_pivot).

-export([create_command_pivot/1]).

create_command_pivot(Voice_url) ->
[{<<"module">>,<<"pivot">>},{<<"data">>,[{<<"voice_url">>,Voice_url}]}].
%%[{<<"module">>,<<"pivot">>},{<<"data">>,[{<<"voice_url">>,Voice_url}]},{<<"children">>,[]}].

