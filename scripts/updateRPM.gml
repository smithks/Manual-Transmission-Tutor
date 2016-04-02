//Updates RPM, called once every step from obj_control
var accel;
accel = global.accelerator * 100;
global.targetRPM = (-0.0037*power(accel,3)-0.24*power(accel,2)+132.6*accel+800);

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

updateRPMAudio();
