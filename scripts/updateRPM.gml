//Updates RPM, called once every step from obj_control
var accel;
accel = global.accelerator * 100;
global.targetRPM = (-0.0037*power(accel,3)-0.24*power(accel,2)+132.6*accel+800);
if(accel == 0){
    global.RPMChangeRate = 50;
}else{
    global.RPMChangeRate = (accel);
}
if (global.targetRPM > global.currentRPM){
    global.currentRPM += global.RPMChangeRate;
}else if (global.targetRPM < global.currentRPM){
    global.currentRPM -= global.RPMChangeRate;
}
