private _categoryStr = format ["ACE %1", LLSTRING(Menu)];

[
    QGVAR(requireSpecialist),
    "CHECKBOX",
    [LLSTRING(RequireSpecialist_DisplayName),LLSTRING(RequireSpecialist_Description)],
    _categoryStr,
    false,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(punishNonSpecialists),
    "CHECKBOX",
    [LLSTRING(PunishNonSpecialists_DisplayName),LLSTRING(PunishNonSpecialists_Description)],
    _categoryStr,
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(explodeOnDefuse),
    "CHECKBOX",
    [LLSTRING(ExplodeOnDefuse_DisplayName),LLSTRING(ExplodeOnDefuse_Description)],
    _categoryStr,
    true,
    1
] call CBA_fnc_addSetting;

// Variable names to preserve https://github.com/acemod/ACE3/pull/6882
[
    QGVAR(customTimerMin),
    "TIME",
    [LLSTRING(TimerMin_DisplayName), LLSTRING(TimerMin_Description)],
    [_categoryStr, LLSTRING(ExplosiveTimer)],
    [0, 5999, TIMER_VALUE_MIN],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(customTimerMax),
    "TIME",
    [LLSTRING(TimerMax_DisplayName), LLSTRING(TimerMax_Description)],
    [_categoryStr, LLSTRING(ExplosiveTimer)],
    [0, 5999, TIMER_VALUE_MAX],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(customTimerDefault),
    "TIME",
    [LLSTRING(TimerDefault_DisplayName), LLSTRING(TimerDefault_Description)],
    [_categoryStr, LLSTRING(ExplosiveTimer)],
    [0, 5999, TIMER_VALUE_DEFAULT]
] call CBA_fnc_addSetting;

[
    "Aux212_DemoCharges",
    "EDITBOX",
    ["Explosive Whitelist", "This is an array of array's to the system , to insert new explosive follow the pattern \n [['EXPLOSIVE_AMMO_CLASS', 'NAME', 'SAFE_DISTANCE']] \n don't forget that it's a group of array's inside an array"],
    ["Aux212", "Demo SOP Automation"],
    "[ ['Aux212_X3_Thermal_Disruptor_Ammo', 'X3' , '10m'],['Aux212_X10_Thermal_Disruptor_Ammo','X10' , '30m'],['Aux212_7PrG_Proton_Charge_Ammo','Proton Charge', '10m'], ['JLTS_explosive_emp_10_Ammo', 'EMP MK2', '10m'],['JLTS_explosive_emp_50_ammo', 'EMP MK5', '50m'] ]",
    1
] call CBA_fnc_addSetting;
