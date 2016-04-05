/**
if (global.currentRPM >= 1000 && global.currentRPM <= 2000){
    global.playing = true;    
}else{
    global.playing = false;
}

if (global.playing){
    var split = frac(global.currentRPM / 1000);
    
    if(!audio_is_playing(global.rpmAudio[2])){
        audio_play_sound(global.rpmAudio[2],1,true);
    }
    if (!audio_is_playing(global.rpmAudio[4])){
        audio_play_sound(global.rpmAudio[4],1,true);
    }
    
    audio_sound_gain(global.rpmAudio[4],split,0);
    audio_sound_gain(global.rpmAudio[2],1-split,0);
}
*/
audio_sound_pitch(global.baselineRPM4000,(global.currentRPM/8000)+.5);
