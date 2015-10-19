%%%---------------------------------------------------------------------------------
%%% @author Martin & Eric <erlware-dev@googlegroups.com>
%%%   [http://www.erlware.org]
%%% @copyright 2008-2010 erlware
%%% @doc RPC over TCP server. This module defines a server process that listens for
%%% incoming TCP conncections and allows the user to execute RPC commands via that
%%% TCP stream.
%%%
%%% @end
%%%---------------------------------------------------------------------------------

-module(tr_server).
-behaviour(gen_server).

%% API
-export([]).

%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-define(SERVER, ?MODULE).
-define(DEFAULT_PORT, 1055).

-record(state, {port, lsock, request_count=0}).
