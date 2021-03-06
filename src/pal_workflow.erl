%% ------------------------------------------------------------------
%% The MIT License
%%
%% Copyright (c) 2014-2015 Andrei Nesterov <ae.nesterov@gmail.com>
%%
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to
%% deal in the Software without restriction, including without limitation the
%% rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
%% sell copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%%
%% The above copyright notice and this permission notice shall be included in
%% all copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
%% IN THE SOFTWARE.
%% ------------------------------------------------------------------

-module(pal_workflow).

%% Types

-type error_reason() :: {Type :: atom(), Data :: any()}.
-type result()
	:: {ok,    Data     :: map()}
	 | {stop,  HttpResp :: pal_http:response()}
	 | {error, Reason   :: error_reason()}.

-export_type([result/0, error_reason/0]).

%% Callbacks

-callback decl() -> pt_workflow:declaration().

%% Optional.
%%
%%	-callback init(Options) -> NewOptions
%%		when
%%			Options    :: map(),
%%			NewOptions :: map().

%% Optional.
%%
%%	-callback handle(Handlers, Data, Metadata, State) -> Result
%%		when
%%			Handlers :: list(module()),
%%			Data     :: map(),
%%			Metadata :: map(),
%%			State    :: map(),
%%			Result   :: result().

