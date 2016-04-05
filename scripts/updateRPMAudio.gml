//Adjust pitch of baseline RPM to match current rpm
if (audio_is_playing(global.baselineRPM))
    audio_sound_pitch(global.baselineRPM,(global.currentRPM/8000)+.5);

    
//If current RPM becomes too low and it is not during engine ignition 
//disable engine and stop audio: Engine Stall
if (global.currentRPM < 100 && !global.engineStarting){
    global.engineOn = false;
    if (audio_is_playing(global.baselineRPM))
        audio_stop_sound(global.baselineRPM);
}
