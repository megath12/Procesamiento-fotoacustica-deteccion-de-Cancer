function [xf,yf] = tfou(muestras,senal,Fs)
NFFT = 2^nextpow2(muestras);
Y = fft(senal, NFFT)/muestras;
xf = Fs/2*linspace(0,1,NFFT/2+1);
yf=2*abs(Y(1:NFFT/2+1));
end

% http://rubensm.com/representar-el-espectro-frecuencial-de-un-archivo-audio-con-matlab/
