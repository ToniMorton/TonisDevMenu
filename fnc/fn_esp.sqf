if(isNil 'RGB_ESP_LOOP') then {RGB_ESP_LOOP = false;};
RGB_ESP_LOOP = !RGB_ESP_LOOP;
[] spawn {
	_r = 255;
	_g = 0;
	_b = 0;
	RGB = [0,0,0,1];
	onEachFrame {
		{
			if((isPlayer _x) && ((side _x) == (side player)) && ((player distance _x) < 1500) && (getPlayerUID _x != "")) then {
				_pos = getPosATL _x;
				_eyepos = ASLToATL eyePos _x;
				_1 = _x modelToWorld [-0.5,0,0];
				_2 = _x modelToWorld [0.5,0,0];
				_3 = _x modelToWorld [-0.5,0,0];
				_4 = _x modelToWorld [0.5,0,0];
				_1 set [2,_pos select 2];
				_2 set [2,_pos select 2];
				_3 set [2,(_eyepos select 2)+0.5];
				_4 set [2,(_eyepos select 2)+0.5];
				_HP = (damage _x - 1) * -100;
				drawIcon3D["",RGB,_eyepos,0.1,0.1,45,format["%1(%2m) - %3HP",name _x,round(player distance _x),round(_HP)],1,0.04,'EtelkaNarrowMediumPro'];
				drawLine3D[_1,_2,RGB];
				drawLine3D[_2,_4,RGB];
				drawLine3D[_4,_3,RGB];
				drawLine3D[_3,_1,RGB];
			};
			if((isPlayer _x) && ((side _x) != (side player)) && ((player distance _x) < 1500) && (getPlayerUID _x != "")) then {
				_pos = getPosATL _x;
				_eyepos = ASLToATL eyePos _x;
				_1 = _x modelToWorld [-0.5,0,0];
				_2 = _x modelToWorld [0.5,0,0];
				_3 = _x modelToWorld [-0.5,0,0];
				_4 = _x modelToWorld [0.5,0,0];
				_1 set [2,_pos select 2];
				_2 set [2,_pos select 2];
				_3 set [2,(_eyepos select 2)+0.5];
				_4 set [2,(_eyepos select 2)+0.5];
				_HP = (damage _x - 1) * -100;
				drawIcon3D["",[1,0,0,1],_eyepos,0.1,0.1,45,format["%1(%2m) - %3HP",name _x,round(player distance _x),round(_HP)],1,0.04,'EtelkaNarrowMediumPro'];
				drawLine3D[_1,_2,[1,0,0,1]];
				drawLine3D[_2,_4,[1,0,0,1]];
				drawLine3D[_4,_3,[1,0,0,1]];
				drawLine3D[_3,_1,[1,0,0,1]];
			};
		} forEach playableUnits;
	};
	while{RGB_ESP_LOOP} do {
		_done = false;
		if(_r == 255 && _g < 255 && _b == 0 && !_done) then {
			_g = _g + 1;
			_done = true;
		};
		if(_r > 0 && _g == 255 && _b == 0 && !_done) then {
			_r = _r - 1;
			_done = true;
		};
		if(_r == 0 && _g == 255 && _b < 255 && !_done) then {
			_b = _b + 1;
			_done = true;
		};
		if(_r == 0 && _g > 0 && _b == 255 && !_done) then {
			_g = _g - 1;
			_done = true;
		};
		if(_r < 255 && _g == 0 && _b == 255 && !_done) then {
			_r = _r + 1;
			_done = true;
		};
		if(_r == 255 && _g == 0 && _b > 0 && !_done) then {
			_b = _b - 1;
			_done = true;
		};
		sleep 0.001;
		RGB = [_r/255,_g/255,_b/255,1];
	};
	onEachFrame{};
};