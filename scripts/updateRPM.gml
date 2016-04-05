//Updates RPM, called once every step from obj_control
var accel;
accel = global.accelerator * 100;
if(global.engineOn)
    global.targetRPM = (-0.0037*power(accel,3)-0.24*power(accel,2)+132.6*accel+800);
else
    global.targetRPM = 0;

//Set change rate of RPM. Adjust currentRPM by change rate until it matches targetRPM.
if(accel == 0){ //Could use better way to calculate this
    global.RPMChangeRate = 50;
}else{
    global.RPMChangeRate = (accel);
}
if (global.targetRPM > global.currentRPM){
    global.currentRPM += global.RPMChangeRate;
}else if (global.targetRPM < global.currentRPM){
    global.currentRPM -= global.RPMChangeRate;
}

//Disables starter after current rpm passes 100
//Can implement starter to be active while ignition is presed insetead.
if (global.engineStarting && global.currentRPM > 100)
    global.engineStarting = false;

//Updates RPM audio and checks for engine stall
updateRPMAudio();
