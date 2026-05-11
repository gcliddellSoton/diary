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
> - [ ] Test `peak_prom_per_file` without cross microphone check
> - [ ] Start `peak_prom_per_file` WITH cross microphone check
> - [ ] Do Conviron induction
> - [ ] Add example to example grid, add normalisation description, move magnitude label
> - [ ] Tick off other things on list from 27th Apr


> [!note]+ 💭 Reflection
> 

---

## Tue 12th May

> [!todo]+ 📋 Plan
> - [ ] Check whether `peak_prom_per_file` worked again
> - [ ] Run `spectrogram_intensity`
> - [ ] 

> [!note]+ 💭 Reflection
> 

---

## Wed 13th May

> [!todo]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

---

## Thu 14th May

> [!todo]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

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
