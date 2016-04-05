draw_set_font(fnt_arial32);

//Gear Variables
global.currGear = 0;
global.inGear = false;

//Pedal variables
global.accelerator = 0;
global.clutch = 0;
global.brake = 0;

//RPM variables
global.currentRPM = 0;
global.targetRPM = 0;
global.RPMChangeRate = 0;

//Engine status
global.engineOn = false;
global.engineStarting = false;

//Needle variables
global.tachNeedleAngleStart = 315;
global.tachNeedleAngleMax = 45;

//Baseline RPM audio
global.baselineRPM = snd_4000rpm;

