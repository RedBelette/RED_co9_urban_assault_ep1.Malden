// Set task variable
taskReco = true;
publicVariable "taskReco";

// Remove action
_helico = _this select 0;
_id = _this select 2;
_helico removeAction _id;