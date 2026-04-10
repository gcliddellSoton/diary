|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|????|Ironed out errors in 'extractFrom1File'. It was pretty close first time though!!!<br><br>- Fiddled with `threshDB` a little after checking the code on file 135<br>- `np.where` object returns (axis0, axis1, …) so had to remove a [0] from the end!<br>- Added an absolute `start_idx` using `s1.tell() - CHUNK_SIZE`<br>- np.concatenate isn't write for arrays of (n,). np.array([np.array, np.array]) does it<br>- Reduced CHUNK_SIZE for running on desktop w/o crashes<br>- Finally added loop over files<br><br>  <br><br>Started to collate information on equipment again…|
|Tues|TODO:<br><br>- Generate plots for example 135/90s<br>- Fix khaitreproduction/folderSummary.py, which has a mistake in the check of contiguous plant IDs!!<br>- Fix 'helperFunctions' in the other|(11.00-11.40) Tidying up notes, looking back through 'khaitreproduction' repository  <br>(11.40-12.30) Setting up Iridis login  <br>(13.30-15.00) Learning about: sys.argv, re-doing ssh config, transferring data to Iridis!!|
|Weds|||
|Thurs|TODO:<br><br>- - [x] water plants<br>- - [x] submit ranunculus sheet<br>- - [x] submit COSHH form|AM: worked from home, finally got some stuff up and running on the HPC, but have yet to adapt the code to make use of the number of CPUs! ran 'snippet_extractBlipsFrom1File.py'<br><br>  <br><br>Chaitanya joined for supervisor meeting. He was very enthusiastic and had lots of good questions|
|Fri|TODO:<br><br>1. mv extractFrom1File -\> extractParallel<br>2. create extractFrom1File<br>3.   <br>    <br><br>  <br>  <br><br>1. Signal processing tutorial:<br>    1. Outline<br>    2. Section 1: Basic Time-Frequency analysis<br>    3. Section 2: Electronic circuits<br>    4. Section 3: Econometrics<br>    5. Section 4: Audio<br>2. Write-up of blip extraction procedure:<br>    1. Volume threshold: from noise statistics<br>    2. Overlap check: from distance calculation|AM: Submitted COSHH assessment for ethanol and toluidine. Created multiprocessing example script.  <br>2 files, blocksize = 50 000 000, poolsize = … , t = 58s  <br>2 files, blocksize = 20 000 000, poolsize = cpu_count()-3, t = 40, 35, 44  <br>4 files, blocksize = 20 000 000, poolsize = cpu_count()-3, t = 61, 47, 47, 57  <br>8 files, blocksize = 20 000 000, poolsize = cpu_count()-3, t = 54, 76, 68… (also added s.tell()!! and overlap parameter!)<br><br>  <br><br>Tried adapting<br><br>  <br><br>Things:<br><br>- It's annoying not to be able to see the output of processes as things run! Is it possible to report their progress to a temporary log file?<br>- Sharing|
|Sat|||

135 20s successfully snaffled. 90s clip gets filtered out with a butterworth

**Signal Processing Tutorial**
   

1. Transforms: Fourier, Z, Hilbert
2. History: Electronic Filter design, modulation & de-modulation
3. Practical Elements: when are classical filters useful? 5. Time-domain Methods: Model-based filtering
   

1. Visualisation: Bode Plots, Periodogram, Spectrograms, the STFT
2. Spectral Estimation. Why? And How?
   

**Agenda**
 
- HPC now under use!
- Blip extraction results acquired, but not optimal
- COSHH not done
- Shopping list: sort of. **CM16/CMPA-5V** From \<[https://avisoft.com/ultrasound-microphones/cm16-cmpa/](https://avisoft.com/ultrasound-microphones/cm16-cmpa/)\>
   

**Actions**

1. Final corrections to 'KhaitReproduction'. Upload to GitHub as 'PlantSoundReproduction'
2. Write-up pre-processing & blip extraction with statistical analysis
3. Submit COSHH
4. Submit shopping list  
**AIMS**

1. Statistical analysis of extracted blips
2. Submission of Ranunculus QS

**Shopping List**

- Drying rack
- Domestos
- RS232 Connector for //axis & O-Haus scales
- Measuring cylinder
- Silica gel packets