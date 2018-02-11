disableserialization;
_mode = _this select 0;
_textbox = (finddisplay 2686) displayctrl 1999;
_input = ctrltext _textbox;
_inputCode = compile _input;
switch (_mode) do 
{
//--- Local
case 0: {call _inputCode};
//--- Global
case 1: {[[], _inputCode] spawn {_this remoteExec ["call", 0]}};
//--- Server
case 2: {[[], _inputCode] spawn {_this remoteExec ["call", 2]}};
};

profileNamespace setVariable ["rscdebugconsole_expression",_input];