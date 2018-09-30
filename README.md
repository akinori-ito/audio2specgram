# audio2specgram: Calculate Time-Frequency Representation from time series
This is an R package for STFT (Shoft Term Fourier Transform). Using this package you can
calculate STFT and inverse STFT from a time series.

## Example
```
library(audio2specgram)
library(signal)

t<-seq(0,10,0.1)
t<-seq(0,100,0.1)
x<-cos(2*t)

plot(t,x,type="l")

conf<-stftconfig(width=128,frameshift=64,towindow=hanning,fromwindow=rectwin)

ft<-audio2specgram(x,conf)

image(abs(ft))

y<-specgram2audio(ft,conf)

plot(y,type="l")
