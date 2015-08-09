-module(kazoo_command_collect_dtmf).

-export([create_command_collect_dtmf/1,create_command_collect_dtmf/2]).

create_command_collect_dtmf(CollectionName) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,4}]}].

create_command_collect_dtmf(CollectionName,MaxDigits) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,MaxDigits}]}].
