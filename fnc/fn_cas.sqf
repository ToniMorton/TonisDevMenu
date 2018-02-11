_veh = "B_Plane_Fighter_01_F" createVehicle (player modeltoworld [0,5,250]);
_veh setPos [(getPos _veh select 0) + (_x * 40), getPos _veh select 1, 250];
_veh setDir getdir player;
_dir = getdir player;
_speed = 500;
_veh setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
player moveInDriver _veh;
player flyInHeight 250;
_veh engineOn true;