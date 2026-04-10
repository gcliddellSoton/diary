**Growing**

- Seed sterilisation
- Suitability of the wick-watering method
- Uneven drying out in the chamber

Which way up to plant seeds
 \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>     

**Recording**

- Limitations of CM16
- The egg
- Directivity experiment
- How to make sure Avisoft Recorder works correctly!
- File storing strategy \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>        

**Analysis**

- Packages for import .wav files
- Visualising waveforms from large audio files
- ==SEEKING: use package soundfile (libsndfile wrapper)==
- Energy calculation
- Sensible methods of looking at correlation between ch1/ch2

- Imported using `scipy.io.wavefile.read()` and a path. Use `os.path.join()` for compatibility on both Windows & Linux! The files were saved in different folders labelled by channel number
- The values read in from WAV format were modulused then transformed to a very approximate ‘dB SPL’ using data provided by AVISOFT and assuming a linear SPL → Voltage transfer function and normal 0dB point of 20 𝜇 P .
- Datashader was then used to render plots of the two waveforms and save them to PNG files of 1000x500 pixels
- The PNG files are then read back in and plotted with `plt.imshow()`. The Axis scales are then reproduced by relabelling the ticks using a function that tranforms PixelPosition[0,500] \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>  
 \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>      \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>        

   
   
 
 \> From \<[https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx](https://sotonac-my.sharepoint.com/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20First%20Experiment/Report.docx)\>