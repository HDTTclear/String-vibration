function treble_vector = make_vector(treble, treble_duration)
fs = 11025;               % sampling frequency, 11025 Hz on PC/Mac
speed_factor = 71/60;      % cpu speed compensation factor
%Éú³ÉÊ¸Á¿
treble_vector = zeros(1,sum(treble_duration)*fs+1);  % treble vector generator
n1 = 1;                                              % starting index
for kk = 1:length(treble)
    keynum = treble(kk);
                                                            %
    if (keynum == 0)                                  % rest period definition
        A = 0.0;                                       % amplitude at 0.0
        freq = 440;
    else
        A = 0.5;                                       % note amplitude at 0.5
        freq = 440 * (2^( (keynum-49)/12 ));           % frequency definition
    end
    tt = 0 : (1/fs) : (treble_duration(kk)/speed_factor);  % duration generator
    tone_2=A*guitar(keynum,tt);
    tone = A*violin(keynum,tt);                    % tone generator
    win=hann(length(tone));
    tone=(tone+tone_2).*win';
   %tone=A*ricker(treble_duration(kk)/speed_factor,freq);                                                              %
    n2 = n1 + length(tone) - 1;                            % ending index & concatenate vector
    treble_vector(n1:n2) = treble_vector(n1:n2) + tone;    % vector generator
    n1 = n2;                                               % reset index
end