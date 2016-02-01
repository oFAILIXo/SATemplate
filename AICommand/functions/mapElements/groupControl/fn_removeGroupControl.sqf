#include "..\interactiveIcon\functions.h"
#include "functions.h"

/*
	Author: [SA] Duda

	Description:
	Remove the specified group control (do not call directly - use AIC_fnc_deleteMapElement instead)

	Parameter(s):
	_this select 0: STRING - group control id

	Returns: 
	Nothing
*/

private ["_groupControlId"];

_groupControlId = param [0];

private ["_groupControls"];

AIC_fnc_setGroupControlGroup(_groupControlId,nil);
AIC_fnc_setGroupControlInteractiveIcon(_groupControlId,nil);
AIC_fnc_setGroupControlWaypointIcons(_groupControlId,nil);
AIC_fnc_setGroupControlAddingWaypoints(_groupControlId,nil);
AIC_fnc_setGroupControlWaypointRevision(_groupControlId,nil);
AIC_fnc_setGroupControlColor(_groupControlId,nil);
AIC_fnc_setGroupControlType(_groupControlId,nil);
AIC_fnc_setGroupControlActions(_groupControlId,nil);
AIC_fnc_setGroupControlActionsRevision(_groupControlId,nil);

_groupControls = AIC_fnc_getGroupControls();
_groupControls = _groupControls - [_groupControlId];
AIC_fnc_setGroupControls(_groupControls);
