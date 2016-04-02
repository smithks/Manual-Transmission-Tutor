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

//Needle variables
global.tachNeedleAngleStart = 315;
global.tachNeedleAngleMax = 45;

//RPM Audio Array
global.rpmAudio[0] = snd_0rpm;
global.rpmAudio[1] = snd_500rpm;
global.rpmAudio[2] = snd_1000rpm;
global.rpmAudio[3] = snd_1500rpm;
global.rpmAudio[4] = snd_2000rpm;
global.rpmAudio[5] = snd_2500rpm;
global.rpmAudio[6] = snd_3000rpm;
global.rpmAudio[7] = snd_3500rpm;
global.rpmAudio[8] = snd_4000rpm;
global.rpmAudio[9] = snd_4500rpm;
global.rpmAudio[10] = snd_5000rpm;
global.rpmAudio[11] = snd_5500rpm;
global.rpmAudio[12] = snd_6000rpm;
global.rpmAudio[13] = snd_6500rpm;
global.rpmAudio[14] = snd_7000rpm;
global.rpmAudio[15] = snd_7500rpm;
global.rpmAudio[16] = snd_8000rpm;

