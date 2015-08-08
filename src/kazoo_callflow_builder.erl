-module(kazoo_callflow_builder).

-export([build/1]).
-export([add_child/2,add_child/3]).

add_child(Parent, Child) ->
 [Module1, Data1] = Parent,
 [Module1, Data1, {<<"children">>,[{<<"_">>,Child}]}].
 
 add_child([Module,Data], Child, Option) ->
  [Module, Data, {<<"children">>,[{Option,Child}]}];
 
 add_child([Module,Data,Children], Child, Option) ->
 %% [Module1, Data1] = Parent,
	{<<"children">>,[Head|Last]} = Children,
	 %% case Option of 
		%%<<"_">> -> [Module, Data, {<<"children">>,[Head|Last]++[{Option,Child}]}];
	%%	_ -> [Module, Data, {<<"children">>,[{Option,Child},Head|Last]}]
	 %% end.
	 [Module, Data, {<<"children">>,[{Option,Child},Head|Last]}].

	 build(Data) ->
jsx:encode(Data).