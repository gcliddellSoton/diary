---
cssclasses: diary-week
---
# Wk19 — 4th May
*4th May – 10th May 2026*

> [!abstract]+ 🔭 Long-Term Goals
> - Complete draft and submit
> - Do new experiment
> - Write 18 month report

> [!check]+ ✅ TODO This Week
> - Start QPD section
> - Timeplan next experiments...
> - Get car paintwork fixed
> - Set up towel based capillary mat experiment

---

## Mon 4th May

> [!todo]+ 📋 Plan

> [!note]+ 💭 Reflection
> 

---

## Tue 5th May

> [!todo]+ 📋 Plan
> - [x] Michal corrections
> - [x] Write-up rush dataset description
> - [x] Outline the Geoffrey method (burger)
> - [ ] Describe PCEN and why

> [!note]+ 💭 Reflection
> - Not as focused as the ideal
> - Morning: fixed text correction suggestions from Michal
> - Lunch: distracted
> - (1400-1700) Inkscape construction of barley/rush dataset diagrams

Inkscape learnt:


---

## Wed 6th May

> [!todo]+ 📋 Plan
> - [x] (0900-1000) Read rushes_plan and rushes_interim and rush_final then write rush dataset description
> - [ ] (1000-1100) Write outline of Geoffrey method now that the motivation has been described.
> 	- pcen feature
> 	- hypothesis test
> 	- cross-correlation
> - [ ] Add image of PCEN and the results of a complete run, comparing with Klaminder

> [!note]+ 💭 Reflection
> (1000-1050) Looked at how to automatically mount smb shares at boot...
> (1050-1130) Fixed not being able to vie .heic files: `sudo dnf install heif-pixbuf-loader` then also `sudo dnf install libheif-tools`
> (1130-1200) Writing rush section

---

## Thu 7th May

> [!todo]+ 📋 Plan
> - [x] Select files for WISTERIA interview panel: 
> 	- 2 channels-> 4 files 
> 	- 10 minutes each
> 	- Include T131, 17_p17, a single sample spike and 'screech'
> - [x] Check software licenses for
> - [ ] Show examples of a histogram of spectrogram values

| Software                | License                  |
| ----------------------- | ------------------------ |
| SciPy                   | BSD 3-Clause             |
| Audacity                | GPLv3/2  docs: CC-BY 3.0 |
| MAAD                    | BSD 3-Clause             |
| Khait data              | CC0 1.0                  |
| Khait code              | CC BY 4.0                |
| Python standard library | ?                        |
To make a simple summary table:
```python
import os
with open("xpmt_0_barley_groundtruth.json") as f:
    data = json.load(f)
for key, val in data.items():
    num_positives = len(val["events_observed_manually"]["start"])
    print(f"{key}\t\t{num_positives}\t\t{val["events_observed_manually"]["start"]}")
```
To make the fakes:
```python
import spaekit
import soundfile as sf
total_len_samples = 10 * 60 * 500000
examples = ["barley", "spike", "rush", "screech"]
lens = [0.2, 0.3, 0.4, 0.1]
out = np.empty((2, 0))
for len, example in zip(lens, examples):
	len_samples = int(lens*total_len_samples)
	y, fs, _, _ = spaekit.utils.load_example(example, clip_length=len_samples)
	out = np.concatenate((out, y), axis=1)
sf.write("2026-05-07_10-30-24_test1.wav", out.T, 500000, format='WAV')
```
34.8kHz/28.3kHz for channel 2/1

> [!note]+ 💭 Reflection
> - (0900-1000) Lost keys
> - (1000-1200) Putting together interview files for Tiina
> - (1200-1230) Student Enterprise 1:1
> - (1230-1400) Lunch
> - (1400-1530) Checked software licenses & tidied file names

---

## Fri 8th May

> [!todo]+ 📋 Plan
> - Create example of why intensity based threshold does not work statistically ()
> - Create example of low-pass filtering the spectrogram

1. Assuming independent bins:
2. 

> [!note]+ 💭 Reflection
> - Test each feature methodically and compare against Klaminder
> - Test various PCEN parameters and show that it creates garbled distributions
> - Using the best feature test each xcorr method methodically against Khait


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
- [ ] Per file
- [ ] Per file minus outliers
- [ ] Sliding window
**Cross-correlation feature:**
- [x] Overlap-check
- [x] Calibrated sliding window `np.corr(x[start:end], y)`
- Coherence `np.abs(Pxy)**2 / (Pxx * Pyy)`
- GCC-PHAT `Pxy = FFT(x)*conj(FFT(y)), R_PHAT=IFFT(Pxy/np.abs(Pxy)) delay=max(CC)`
**Cross-correlation threshold:**
- Maximum
- Peak prominence

MK check:
- First: klaminder feature + bonisoli threshold + khait cross microphone check (1.5 days)
- Second: spectrogram intensity as a feature (1.5 days)
- Whether cross-correlation is a good feature to use too
- Clarify magnitude in examples grid
- Combine figures together

Up to now I had made lots of images etc, and tested lots of parameters for the PCEN filter and looked at the histograms of pixel values, but without a methodical approach
![[Pasted image 20260508122853.png|590]]
After listing all of the possible filters, features that could be thresholded, cross-correlation variations and possible ways of thresholding the cross-correlation, it was obvious that I had skipped the next logical step, which would be to look for abnormally large values in the spectrogram directly. (Sorry, I know you said I should have done that first...)
![[Screenshot from 2026-05-08 12-27-30.png]]
![[Screenshot from 2026-05-08 12-27-18.png]]
  
![[Screenshot from 2026-05-08 12-26-50.png]]
![[Pasted image 20260508122853.png]]



---

## Sat 9th May

> [!todo]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

---
*← [[Wk18|Wk18]] | [[2026 Q2]] | [[Wk20|Wk20]] →*
