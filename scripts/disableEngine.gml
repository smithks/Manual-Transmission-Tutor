///Disables the engine, called when ignition switch is pressed while engine is on.
global.engineOn = false;
var currPitch = audio_sound_get_pitch(global.baselineRPM);
while (currPitch > 0){
    currPitch -= .01;
    audio_sound_pitch(global.baselineRPM,currPitch);
}
audio_stop_sound(global.baselineRPM);
