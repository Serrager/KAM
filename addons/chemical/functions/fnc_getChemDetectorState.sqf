#include "script_component.hpp"
/*
 * Author: DiGii
 * 
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call kat_chemical_fnc_coughing;
 *
 * Public: No
*/
params["_unit", "_isOnOff"];

private _currentState = _unit getVariable [QGVAR(chemDetectorState), false];
if("ChemicalDetector_01_watch_F" in (assigneditems _unit) && _currentState == _isOnOff) then {
	true
} else {
	false
};