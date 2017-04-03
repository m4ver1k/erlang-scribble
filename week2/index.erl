-module(index).
-export([get_file_contents/1,show_file_contents/1,index/1]).
% Used to read a file into a list of lines.
% Example files available in:
%   gettysburg-address.txt (short)
%   dickens-christmas.txt  (long)
  

% Get the contents of a text file into a list of lines.
% Each line has its trailing newline removed.

get_file_contents(Name) ->
    {ok,File} = file:open(Name,[read]),
    Rev = get_all_lines(File,[]),
lists:reverse(Rev).

% Auxiliary function for get_file_contents.
% Not exported.

get_all_lines(File,Partial) ->
    case io:get_line(File,"") of
        eof -> file:close(File),
               Partial;
        Line -> {Strip,_} = lists:split(length(Line)-1,Line),
                get_all_lines(File,[Strip|Partial])
    end.

% Show the contents of a list of strings.
% Can be used to check the results of calling get_file_contents.

show_file_contents([L|Ls]) ->
    io:format("~s~n",[L]),
    show_file_contents(Ls);
 show_file_contents([]) ->
    ok.    

%Get Index of lines where a word appear     
index(Filename)->
	lines(get_file_contents(Filename),[],1).

%Read each line and find line num of words.
lines([],RES,_)->
	RES;
lines([L|Ls],RES,LINENO)->
    lines(Ls,words(string:tokens(L," "),RES,LINENO),LINENO+1).
%For each word in a line find if the RES list already have an entry (Tuple with line nos) 
%if found increment it else add new one.
words([],RES,_)->
    RES;
words([W|Ws],RES,LNO)->
	case lists:keyfind(W,1,RES) of
		false->
			words(Ws,RES++[{W,[LNO]}],LNO);
		T->
            LINES=element(2,T),
            case lists:member(LNO,LINES) of
                false->
                    NT={W,LINES++[LNO]},
                    words(Ws,lists:keyreplace(W,1,RES,NT),LNO);
                true->
                    words(Ws,RES,LNO)
            end
	end.