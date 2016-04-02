///Updates the currently playing RPM audio to match the current RPM.
var bottomRPM = floor(global.currentRPM / 500) ;
if (bottomRPM > 15)
    bottomRPM = 15;
//Need to find the balance needed between audio
var fraction = frac(global.currentRPM);
if (fraction >= .5){
    fraction -= .5;
} 

var split = fraction / .5;

//Play the audio if it is not currently playing.
if (!audio_is_playing(global.rpmAudio[bottomRPM])){
    audio_play_sound(global.rpmAudio[bottomRPM],1,true);
}
if (!audio_is_playing(global.rpmAudio[bottomRPM+1])){
    audio_play_sound(global.rpmAudio[bottomRPM+1],1,true);
}

audio_sound_gain(global.rpmAudio[bottomRPM+1],split,0);
audio_sound_gain(global.rpmAudio[bottomRPM],1-split,0);

