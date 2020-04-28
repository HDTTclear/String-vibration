
function music = play(treble, treble_duration,bass, bass_duration)
treble_vector=make_vector(treble,treble_duration);

bass_vector=make_vector(bass,bass_duration);

%∫œ≥… ∏¡ø
fs = 11025;               % sampling frequency, 11025 Hz on PC/Mac
%speed_factor = 71/60;      % cpu speed compensation factor
music_vector = treble_vector +high_vector +h2_vector+bass_vector+b2_vector+b3_vector;      % treble and bass vector combination
audiowrite('Tianqizhizi_violin.wav',music_vector,fs);
%sound( music_vector, fs );                        % generate sound
