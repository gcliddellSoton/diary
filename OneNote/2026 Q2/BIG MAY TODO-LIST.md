
# Writing TODO
- [ ]   Add high-frequency example to examples_grid
- [ ]   Estimate signal-noise-ratio in hard/easy examples
- [ ]   Add reference to Khaitreproduction gitlab repository
- [ ]   Make Magnitude/Amplitude labels scientifically annotated
- [ ]   Add normalisation description to example grid
- [ ]   Add images of barley/rush/calibration setups to SI
- [ ]   Add method description of cross-correlation

# Scripting TODO
- [ ] Do Klaminder + cross-corr etc WITH the jerry-mandered thresholds
- [ ] Check whether there is an implicit overlap check in the Bonisoli method
- [ ] Setup barley & rush only analysis script to tackle the cross-corr methods
- [ ] Add a preprocessor method so that if the dataset is barley, the signal is duplicated into two channels, and a small delay + noise is added to one channel
- [ ] Viewer to look at all the positive events in the dataset

# Method TODO
**Filtering:**
- [ ] 20kHz high-pass
- [ ] Spectrogram and cut
- [ ] PCEN
**Features:**
- [x] Time-domain amplitude
- [ ] Spectrogram intensity
- [ ] Wavelet transform output
- [x] Spectrum Peak prominence
- [ ] Spectral entropy
- [ ] Spectral flatness
- [ ] Cross-correlation
**Threshold adjustment:**
Always using the 1hr 1 false positive calculation!
- [x] Using a calibration file
- [x] Per file. DOESN'T WORK WELL FOR KLAMINDER, BUT DON'T KNOW WHY
- [ ] Per file minus outliers
- [ ] Sliding window. WINDOW WILL NEED TO BE TOO LARGE FOR KLAMINDER, UNLESS USING A WEIGHTED COMBINATION OF CALIBRATION FILE + WINDOW INFO
**Cross-correlation feature:**
- [x] Overlap-check
- [x] Calibrated sliding window `np.corr(x[start:end], y)`
- [ ] Coherence `np.abs(Pxy)**2 / (Pxx * Pyy)`
- [x] GCC-PHAT `Pxy = FFT(x)*conj(FFT(y)), R_PHAT=IFFT(Pxy/np.abs(Pxy)) delay=max(CC) NO GOOD
**Cross-correlation threshold:**
- Maximum
- Peak prominence