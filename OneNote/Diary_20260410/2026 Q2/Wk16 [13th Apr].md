---
cssclasses: diary-week
---
# Wk16 — 13th Apr
*13th Apr – 19th Apr 2026*

> [!abstract]+ 🔭 Long-Term Tasks
> - Finish writing signal processing draft
> - Clean data (change filenames, aggregate recordings, + compress)
> - Upload data to University repository and link DOI
> - Clean and upload code to Zenodo and link DOI

> [!check]+ ✅ TODO This Week
> - Make Bonisoli method corrections
> - Generate corrected Bonisoli results (not expecting a big difference)
> - Make time plan to 18 month report
> - Back-up data to hard-drive
> - Set up daily script that pushes diary to github on laptop+desktop
> - Move image files to a specific folder in dairy
> - Get poster ready
> - Finish Bonisoli section


> [!warning]+ 📅 TODO **RIGHT NOW!!!**
> - Make Bonisoli method corrections
> - Generate corrected Bonisoli results (not expecting a big difference)
> - Make time plan to 18 month report

> [!info]+ 🎯 Aims This Week
> 

---

## Mon 13th Apr

> [!abstract]+ 📋 Plan
> - [ ] (0900-1130) Make Bonisoli code corrections
> - [x] (1130-1230) Drive to Highfield
> - [x] (1300-1500) Bonisoli method section proofreading
> - [x] (????-????) Add Bonisoli Results

> [!abstract]+ Bonisoli corrections
>- [x] Make empty Git commit to allow reversal
>- [x] Add code to find 1) centre index, 2) duration, 3) do FFT and 4) find maximum. 5) calculate # oscillations
>- [ ] Run code on several small examples
>- [ ] Run on Khait, and Calibration using 5_benchmarking
>- [ ] Run on BAR/RUS using corresponding scripts

> [!note]+ 💭 Reflection
> (0900-0930) Fiddling with Obsidian formatting. Now have callouts for each day etc
> (0930-1045) Resized fonts and slide sizes in PowerPoint, rephrased Bonisoli introduction
> (1045-1230) Looking for Irene's earring, tidying up garden, driving to Southampton
> (1230-1300) Code tidying in 4_2_event_detection_bonisoli
> (1400-1515) Started to copy across code for Bonisoli corrections, starting with demonstrations in 4_3_event_detection. Also saw that results in 5_benchmarking seem to have reverted to how they were before I made corrections to how R/P are calculated. They are still correct at commit #8e8508fae9e78375313b1dca264822704337aad7
> (1530-1640) MK meeting. Very helpful comments!
> (1645-1715) Chatting with Beth
> (1715-1815) Sorting out Github repository for Obsidian. I was struggling to push/pull to GitHub and the problem turned out to be because I have 2 GitHub accounts! My ssh public key is on the gcliddellSoton account, so when I pushed, it thought I was gcliddellSoton instead of geoffreyliddell! The solution was to put my diary repository on gcliddellSoton. At the end of my time here I will need to transfer it :)

---
## Tue 14th Apr

> [!abstract]+ 📋 Plan
> - [x] Make Michal's corrections
> - [x] Run Bonisoli code on several different examples
> - [ ] (0900-1130) Make Bonisoli code corrections
> - [ ] Ask Michelle about refunding Nottingham costs (+ post on Blablacar + buy blinds)
> - [ ] Bicycle fork to EDMC??


> [!abstract]+ Bonisoli corrections
>- [x] Make empty Git commit to allow reversal
>- [x] Add code to find 1) centre index, 2) duration, 3) do FFT and 4) find maximum. 5) calculate # oscillations
>- [ ] Run code on several small examples
>- [ ] Run on Khait, and Calibration using 5_benchmarking
>- [ ] Run on BAR/RUS using corresponding scripts

> [!note]+ 💭 Reflection
> (0900-1030) Breakfast, bike handlebar struggles, Peaks trip admin
> (1100-1145) General todo list making for this week. A little late!
> (1200-1630) Michal's corrections to Bonisoli method. Still need a proofread...
> (1630-1700) Pasted in the Butterworth figure and added a caption. + made a better start to the Klaminder method section 

---
## Wed 15th Apr

> [!abstract]+ 📋 Plan
> - [ ] Start running Bonisoli code on different datasets
> - [x] Take bike to EDMC
> - [ ] Write main body of Butterworth appendix

> [!note]+ 💭 Reflection
> (0900-1010) Getting to work + Reading about back-up tools and self-hosted servers... see notes!
> (1015-1145) Ran the RMS duration calc on other examples. Changed window Hann->Top hat
> (1145-1215) Tried the wavelet based 'find_rois_cwt' from scikit-maad. It worked well, but it also made me think: could filter ringing actually be an ADVANTAGE by automating the 'post-trigger' step. Hmmmm 
> (1300-1500) Running various examples through RMS detection and CWT
> (1515-1615) Bike repair! Only remaining thing is to get a new screw for the stem...
> (1615-1645) Back to running examples through the code to estimate duration.

---
## Thu 16th Apr

> [!abstract]+ 📋 Plan
> - [ ] Poster checking
> - [ ] Start running new Bonisoli code on different datasets
> - [ ] Get rid of Mendeley duplicates: https://blog.mendeley.com/2023/08/25/ditch-those-duplicates-with-mendeley-reference-manager/

> [!note]+ 💭 Reflection
> (0900-1030) Packing car and getting to work
> (1030-1140) Trying more Bonisoli duration examples... CWT looks better in terms of separation by max. value or window lengths from
> (1140-1300) Decided on a window of 8 and threshold of 7 standard deviations. Pasted into a function in spaekit.detectors and started testing on whole files...
> (1400-1425) Added binary opening to Bonisoli... re-running file-level tests
>
> There are one GAZILLION ways that I could determine the duration. Scalogram is kind of good, so is the windowed energy. Both need some level of calibration

>[!caution]+ TODO AFTER LUNCH
> - [ ] Start a Bonisoli run on the Khait/Calibration datasets (30 mins)
> - [ ] Make Siul corrections (2hrs)


---
## Fri 17th Apr

> [!abstract]+ 📋 Plan
> - Nottingham workshop

> [!note]+ 💭 Reflection
> 

---
## Sat 18th Apr

> [!abstract]+ 📋 Plan
> - 

> [!note]+ 💭 Reflection
> 

---
*← [[Wk15|Wk15]] | [[2026 Q2]] | [[Wk17|Wk17]] →*
