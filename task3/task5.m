filename = 'seiska.wav';
[x,Fs] = audioread(filename);
disp('Play the original sound and spectrogram');
figure,specgram(x,[],Fs);
 soundsc(x,Fs);
 pause(2)
 disp('Play the transfered sound and spectrogram');
 h = fir1(30, 0.3, 'high');
 y = filter(h, 1, x);
  soundsc(y,Fs);
 figure,specgram(y,[],Fs);