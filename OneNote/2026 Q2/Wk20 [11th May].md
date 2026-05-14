---
cssclasses: diary-week
---
# Wk20 — 11th May
*11th May – 17th May 2026*

> [!abstract]+ 🔭 Long-Term Goals
> - 

> [!check]+ ✅ TODO This Week
> - Get acquainted with Conviron chamber
> - Write presentation for Dynamics Group meeting
> - Finish first iteration of the QPD section (Klaminder + varying threshold + cross-corr) 


> [!info]+ 🎯 Aims This Week
> - 
> - 
> - 

---

## Mon 11th May

On Sunday I had a go at running `peak_prom_per_file` without the cross-microphone check, just peak prominence + per-file threshold. Unfortunately the per-file threshold is way way too low! (Too many false positives). I've changed the calculation of p_fa to use the number of spectrogram slices, not the number of window-widths. This is jerry-mandering and won't lead to better results in the long run!

Sudden ModuleNotFoundError coming from `from scipy.signal import ShortTimeFFT`. No idea why as the exact same commands work from an interactive job.

Weirdly... If I set the threshold for `peak_prominence_per_file` using a fitted distribution, it turns out quite badly most of the time, but PERFECTLY on the barley dataset? Can't explain why, but maybe the noise doesn't always fit a Gumbel.

TODO: add to python script:
`from config_method import *`

TODO: add to slurm script:
`python analyse_method.py`


> [!todo]+ 📋 Plan
> - [x] Test `peak_prom_per_file` without cross microphone check
> - [x] Start `peak_prom_per_file` WITH cross microphone check
> - [ ] Do Conviron induction
> - [ ] Add example to example grid, add normalisation description, move magnitude label
> - [ ] Tick off other things on list from 27th Apr

Results:
- Consistent threshold across Calibration, Barley, Rush is not good, but when adjusted to each set of recordings, the sensitivity is by far the best
- Adjusting on a per-file segment basis while iterating through each file did not work very well (filtering done by cutting the spectrogram)
- Best sensitivity is therefore achieved using a calibrated system, but calibration must be done for each recording session. ALTERNATIVE: create an MAP estimate of the noise, given a PRIOR estimate from the calibration file. <- probably an over-complicated method...
- Using a cross-microphone check with the peak prominence threshold increased the Predictive Value, but at the expense of sensitivity! ALTERNATIVE: use a more sensitive cross-correlation threshold 

SLURM run times...
* Khait - a few seconds
* Calibration: 00:04:19 elapsed, 01:04:45 core-walltime
* Barley:         --:--:--    elapsed, --:--:--    core-walltime
* Rush           --:--:--    elapsed, --:--:--    core-walltime
66 : 3684

> [!note]+ 💭 Reflection
> It's taking too long to do all of the manual adjustments for each dataset when running the peak_prom_per_file method. I need to be able to hit 'run' and let it go, as by the time its finished, I've forgotten what I was actually doing! In theory, so far I have run:
> 	- peak prominence + dataset specific threshold + no cross-check (i.e. klaminder)
> 	- peak prominence + variable threshold + no cross-check
> 	- peak prominence + dataset specific threshold + cross-check
> And eventually I also need to have run:
> 	- peak prominence + fixed threshold + no cross-check (i.e. what klaminder should be)
> 	- peak prominence + fixed threshold + cross-check (klaminder with khait improvement)
> 	- peak prominence + variable threshold + no cross-check
> 	- peak prominence + variable threshold + cross-check
> 	- peak prominence + variable threshold + cross-check + <3 oscillations


---

## Tue 12th May

> [!todo]+ 📋 Plan
<<<<<<< HEAD
> - Need to make it so that I can do all the runs and save the results with figures! Consolidate the procedure for getting the results
> 	- Run 5_1_generate_groundtruths.py
> 	- Run 5_2_benchmarking.py
> 	- Run 5_3_barley.slurm
=======
> - [x] Get all combos of prominence/cross-corr/variable thresh running
> - [ ] Submit PowerPoint + abstract to Vanui
> - [ ] Find somewhere to call for car paintwork job

At 1306: .out is on line 5152. It seems that changing files during a slurm job is not a good idea! Changing config_bonisoli.py to have verbose: False. Nevertheless, at 1400 although no visible progress in .out, everything does seem to be working!

Things started:
- Re-run of all methods on Cal/Bar/Rus using the new script (in order to double-check its working)
- Started runs ofCal/Bar/Rus using the variety of new methods

TODO: generate the plots for all the new methods in benchmarking_analyse_results.ipynb
>>>>>>> 5edc5691fe7605c89307c041723e19217466e206

> [!note]+ 💭 Reflection
> (0900-1030) Distracted by: Biolab, CMP7000 controller manual, pump spec
> (1030-1330) Code re-factor, then running KHA/BON/KLA on Cal/Bar/Rus
> (1400-1600) Started running all the other methods on Cal/Bar/Rus
> (1700-1700) Bonisoli crashed on Bar. Restart it with bonisoli config verbose=True

peak_prom_fix_check ran
prak_prom_fix_nocheck
peak_prom_var_nocheck
All ran on calibration. There are NO problems with the calibration dataset or the Khait method. BUT the others seem to be being OOM killed. Reducing the number of workers for the overnight run!

---

## Wed 13th May

> [!todo]+ 📋 Plan
> - [ ] Run khait_plus_corr on a single file e.g. 131 on desktop just to see what happens
> - [x] Send presentation

> [!note]+ 💭 Reflection
> (0900-1100) 
> 	1. Made a few recordings of mint. They look promising
> 	2. Started collating results for peak_prom_* runs. khait_plus_corr didn't run
> (1300-1400) 
> 	Siul meeting. Agreed to push on with cross-correlation method and ditch frankenstein-ing the peak prominence method
> (1400-1750)
> 	 Made more example cross-correlation notebooks! circular convolution + threshold of 0.175 looks good. Short+long window is also okay, but less good. Next need to make a new notebook using the function I've written in detector module

---

## Thu 14th May

> [!todo]+ 📋 Plan
> - [ ] Summarise the results of the xcorr_test notebooks
> - [ ] Pull up the function from plantSoundReproduction and rushRepo
> - [ ] Decide on `corr_thresh` for the new function by running tests
> - [ ] Run full `khait_plus_corr`

> [!note]+ 💭 Reflection
> (0900-1000) Meeting before interviews
> (1000-1145) Made diagram for DG group presentation, wrote title & abstract, then sent it
> (1145-1400) Lunch with Mohammed Ali & Katherine. Both lovely.
> (1400-1500) Wrote notes on Inkscape tips used to make the transpiration diagram
> (1500-1600) .... [TICK OFF THE THINGS IN THE PLAN!!]

Rahul:
- Nice. Mostly interested in analytical methods
- Was excited by the idea of coming to the UK to meet past collaborators
Ajay Kumar:
* Very enthusiastic and personable
* Appears very ambitious and driven as well as marketing himself well
* Publication record looks somehow suspicious as there are many papers with very similar names
---

## Fri 15th May

> [!todo]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

---

## Sat 16th May

> [!todo]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

---
*← [[Wk19|Wk19]] | [[2026 Q2]] | [[Wk21|Wk21]] →*
