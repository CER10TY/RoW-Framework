// F3 - Folk Assign Gear Script - AAF
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES --
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pp			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Lasers
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_ACO_grn";		// ACO
_scope2 = "optic_MRCO";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x
_scope4 = "hlc_optic_kobra";    // KOBRA Scope
_scope5 = "HLC_Optic_1p29";		// 1P29 Rifle Combat Optic

// Default setup
_attachments = [_attach1,_scope4]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "R3F_Famas_F1";
_riflemag = "R3F_25Rnd_556x45_FAMAS";
_riflemag_tr = "R3F_25Rnd_556x45_TRACER_FAMAS";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "R3F_Famas_surb";
_carbinemag = "R3F_30Rnd_556x45_FAMAS";
_carbinemag_tr = "R3F_30Rnd_556x45_TRACER_FAMAS";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "R3F_MP5SD";
_smgmag = "R3F_30Rnd_9x19_MP5";
_smgmag_tr = "R3F_30Rnd_9x19_MP5";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "R3F_Famas_F1_M203";
_glriflemag = "R3F_25Rnd_556x45_FAMAS";
_glriflemag_tr = "R3F_25Rnd_556x45_TRACER_FAMAS";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "R3F_PAMAS";
_pistolmag = "R3F_15Rnd_9x19_PAMAS";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_INDEP";

// UAV Terminal
_uavterminal = "I_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_khk";			// carries 120, weighs 20
_bagmedium = "B_FieldPack_oli";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "I_UAV_01_backpack_F";			// used by UAV operator
_bagTFARlongRANGE = "tf_anprc155"; 			// used by ground infantry leaders
_bagTFARairBORNE = "tf_anarc164"; 			// used by pilots and other airborne troops

// ====================================================================================

// MEDICAL
_bandage = "AGM_Bandage";					// 5 Per Soldier, 10 Per TL, 20 Per Medic
_epipen = "AGM_Epipen";  					// 1 Per Soldier, 1 Per TL, 10 Per Medic
_morphine = "AGM_Morphine";					// 1 Per Soldier, 2 Per TL, 15 Per Medic
_bloodbag = "AGM_Bloodbag";					// 0 Per Soldier, 0 Per TL, 5 Per Medic
_earplugs = "AGM_EarBuds";					// For Every Soldier
_sparebarrel = "AGM_SpareBarrel";			// For LMG/MMG Only

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "R3F_Minimi_762";
_ARmag = "R3F_100Rnd_762x51_MINIMI";
_ARmag_tr = "R3F_100Rnd_762x51_MINIMI";

// Medium MG
_MMG = "hlc_lmg_M60E4";
_MMGmag = "hlc_100Rnd_762x51_B_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_T_M60E4";

// Rifleman AT
_RAT = "R3F_AT4CS";
_RATmag = "R3F_AT4CS_Mag";

// Mortar
_MTR = "B_Mk6Mortar_Wpn";
_MTRmount = "B_Mk6Mortar_Support";

// Medium AT
_MAT = "R3F_ERYX";
_MATmag1 = "R3F_ERYX_Mag";
_MATmag2 = "R3F_ERYX_Mag";

// Surface Air
_SAM = "launch_I_Titan_F";
_SAMmag = "Titan_AA";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

_baseUniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_baseHelmet = ["H_HelmetIA_net","H_HelmetIA_camo","H_HelmetIA"];
_baseGlasses = [];

// Armored vests
_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];
_mediumRig = ["V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_I_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_oli"];
_ghillieGlasses = [];

// Spec Op - no nice stuff for AAF :(
_sfuniform = _baseUniform;
_sfhelmet = _baseHelmet;
_sfRig = _mediumRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons and backpacks

	removeBackpack _unit;
	removeallweapons _unit;

	// We add a single first aid kit (FAK)

	//_unit addItem _firstaid;

	// The following code removes any pre-added NVGs

	if(_nvg in (assignedItems _unit)) then
	{
		_unit unassignItem _nvg;
		_unit removeItem _nvg;
	};
	// uncomment to remove nvgoogles
	_unit linkItem _nvg;					// add universal NVG for this faction

	//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
	//_unit linkItem "ItemGPS"; 				// add gps to this faction
	//_unit linkItem "ItemMap";
	//_unit linkItem "ItemCompass";
	//_unit linkItem "ItemRadio";
	//_unit linkItem "ItemWatch";

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_aaf_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{	
		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{		
		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		["m"] call _backpack;
		{_unit addItem _bandage} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
		{_unit addItem _morphine} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
		{_unit addItem _epipen} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItem _bloodbag} forEach [1,2,3,4,5];
		_unit addItem _earplugs;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{		
		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,4];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		//(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,6];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;	
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;

	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addmagazines [_MATMag1,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_riflemag,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addBackpack _MTR;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		_unit addBackpack _MTRmount;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		["cc"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["r"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,3];
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;