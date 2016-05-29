-module(wechat_config).
-export([get_global_option/1]).

-spec get_global_option(atom()) -> any() | undefined.
get_global_option(Key)->
  case application:get_env(wechat, Key) of
    {ok,Val}->
      Val;
    _ ->
      undefined
  end.
