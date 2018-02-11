_providedtext = _this select 0;
_title = parsetext "<t color='#00E8FF' align='center' size='2'>Toni's Dev Menu:<br/></t>";
_body = parsetext format ["<t align='center'>%1</t>",_providedtext];
_hint = composeText [_title,_body];
hintsilent _hint;