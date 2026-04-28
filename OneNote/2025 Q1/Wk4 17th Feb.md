Overall:

- - [x] Do directivity experiment
- - [x] Bar plot of Khait
- - [ ] Have plants germinated and in chamber
- - [ ] Fahy chapter 5 questions
- - [ ] Statistical simulation of 1st experiment
   

|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|Acoustics Lecture (9-11)  <br>Planning & Admin (11-12)<br><br>  <br>- Write up method for directivity experiment considering:<br>    - Reciprocity<br>    - Mounting of buzzer<br>    - Distance<br>    - Expected difference with point source<br>    - Expectations from datasheets<br>    - *Make some pictures!!!*<br>- Grab Siul for quizzing on maize planting<br>- Cover Chapter 5 TC&A exercises<br>  <br><br>Identiplant reading (1-2)  <br>Reading (2-3.30)|Over weekend:<br><br>- Scanned Vegetable Dynamicks. It talked about theoretical limits on cell growth, diffusion, cell wall expansion, membrane permeability and mechanical instability (I'm not sure I 'get' the snap-buckling yet!)<br>- Watched several youtube videos on Calcium imaging for neuroscience<br>- Some statistics reading on Sunday: NSK is mentioned in C&B. It's sequential in that you rank the treatment means and look at the largest difference first then second largest. This isn't the 'time-sequential' thing that I thought it might be<br><br>  <br>  <br><br>- Office plants have fungus gnats: can't take to GC! Growth chamber cycle up and running & started trying to germinate some more ,aize + barley<br><br>  <br><br>- Did a small amount of analysis for the directivity experiment (In page 'AIRBORNE'). Must try other textbooks:<br>    - Leo Beranek – 1) Acoustics; 2) Acoustic Measurements<br>    - Raichel – The Science & Application of...<br>    - Brekhovskikh – Waves in Layered Media<br>    - Lighthill – Waves in Fluids<br>    - Rschevkin – Lectures on the theory of sound<br>  <br>  <br>  <br>![Exported image](imgs/Exported%20image%2020260410113313-0.jpeg)  <br><br>  <br>  <br>![Exported image](imgs/Exported%20image%2020260410113314-1.jpeg) ![Exported image](imgs/Exported%20image%2020260410113319-2.jpeg)|
|Tues|Acoustics Study (9-12)<br><br>  <br><br>- [ ] Do TC&A CHAPTER 7 QUESTIONS  <br>- [ ] Write up directivity experiment results  <br>- [ ] Read calcium imaging papers!<br><br>  <br>  <br><br>Reading (2-3.30)|Spent a lot of time looking at TC&A Chapter 7 lectures + questions.<br><br>  <br><br>Some time in the library looking for alternative acoustics textbooks & sources on Calcium imaging/waves in soil.<br><br>  <br><br>2.5hrs of Identiplant in the evening.<br><br>  <br>  <br><br>Calcium notes:<br><br>- Synthetic dyes, AEQ & GFP can be used, realistically GFP<br>- What's Calmodulin?<br>- Possible source of academic references: [https://pmc.ncbi.nlm.nih.gov/articles/PMC3975371/](https://pmc.ncbi.nlm.nih.gov/articles/PMC3975371/)<br>- More digestible source: [https://astrobiology.botany.wisc.edu/gilroy-lab-home/plants-wounding-response](https://astrobiology.botany.wisc.edu/gilroy-lab-home/plants-wounding-response) and [https://drrichardbarker.wordpress.com/the-newwine-cooperative/](https://drrichardbarker.wordpress.com/the-newwine-cooperative/)<br>- Experiments I'd like to do: compare measured calcium response with Acoustic Emissions|
|Weds|Acoustics Lectures (9-10)<br><br>  <br><br>Experimental planning/work|- ==Really struggling with Q3.4!!!!==<br>    - ==Ebrahim has suggested that the lack of dV in the expansion d(rho) = (Va/Vt)d(rho)a + (Vw/Vt)d(rho)w could be the issue==<br>- Have decided the answer of 110ms^-1 in Fahy must be wrong<br>  <br>- Meeting with WK: his insights are that :<br>    - fluorescence imaging won't be that interesting as a signal from root-\>stomata as hormones have already been shown explain<br>    - He can measure root exudate production by removing some of the plant roots & placing them in a water-y syringe. Any exudates will leach into the water<br>  <br><br>==THINK ROOTS==<br><br>  <br><br>**AT HOME**<br><br>  <br>- Struggled over Riley 14 (Solutions to linear ODEs)<br>- Plotted the directivity plot!!Made the directivity plots|
|Thurs|Experimental planning/work<br><br>  <br><br>- Simulate a 'plant recordings' experiment statistically<br>- Re-try the polar directivity plot as a polar barchart<br>- Make slides for supervisor meeting tomorrow|- Filled in Supervisory Meeting Update in PGR manager<br>- Plotted Bar plot for Khait using Claude & a prompt:<br>  <br><br>"I have a file structure that is 'DataRoot/fileName1/xpmtNo/id_x_sound_y.wav' where x is the ID of an experimental object and y is the yth recording from object x. For each xpmtNo I would like to plot a bar graph with y plotted for each x in python"<br><br>- Spent a while looking at LED lights & PTC heaters for the office plants! Watched youtube reviews, shopped and did some heater power requirements calculations<br>- Started on the statistical analysis of the counts data from Khait. I wanted to simulate how small a difference in 'number of sound events' could be considered statistically significant. Got as far as trying to remind myself of what the Poisson distribution looks like and how one would fit a GLM to it!|
|Fri|Reading/writing (9-12)<br><br>  <br><br>WANT TODOs:<br><br>- - [ ] Do Chapter 7 Lecture Questions<br>- - [ ] Do Riley Green's Function exercises<br>- - [x] Take tutorial on Matplotlib<br>  <br>- - [ ] Finish doing simulation of Poisson distributed data & apply this to Khait set<br>- - [x] Extract Khait data to do 'PCA' on<br>- - [ ] Do the PCA!<br>- - [ ] Re-plot directivity<br><br>  <br>  <br><br>Supervisor Meeting (2-3.30)|- Read J. R. Johansson's Scientific Python lectures on C/Fortran in Python (Cython is not what I thought it was, it seems to be 'compiled python'!) and the one on Matplotlib, which actually gave very good explanations<br>- Had a go at PCA-ing the Khait dataset, but got hung up on the entropy calculation again!!! Must get this sorted!!!!!!!!!!! Try using the scipy.integrate|
|Sat|Identiplant Fieldwork (9-10)<br><br>  <br><br>Leaves:<br><br>- Primula<br>- Rose<br><br>Flowers:<br><br>- Ranunculus ficaria<br>- Galanthus nivalis<br>- Tulipa||
 ![Exported image](imgs/Exported%20image%2020260410113320-3.jpeg)  

Directivity pattern:

- -3dB FoV at a given distance is around 60\degrees, which compares fairly well with the datasheet's 70\degrees
- Graphs aren't QUITE centred around theta = 0, which is unsurprising, given that the transmitter was bluetacked to the mic stand and was visually very slightly off in the direction expected from the data
- Signal strength: next step is to try to characterise the strength of the source (approximately!). Unsure how to get from dB FS to dB SPL

![Exported image](imgs/Exported%20image%2020260410113322-4.png)

**MAKING A HEATED PROPAGATOR**
 
How much power would it take to increase the heat of a 20cm x 35cm x 15cm = 0.0084m^3 box to 25degrees with an outside temperature of 15degrees.  
The box is made of 1.5mm thick pp5 on all sides. Surface area of the box = 2 * (0.2*0.35 + 0.2*0.15 + 0.35*0.15) = 0.305m^2
 
Energy balance to raise the temperature initially assuming complete insulation:
 
E = mΔcpT -\> 1.204 *0.0084 * 1.004 * 10 = 0.1015 J
 
If we assume that the boundary of box (2mm thick) is not insulating at all, I.e. it has the same heat conduction as air, but that the air inside and outside is always well mixed, then we arrive at an expression for the heat flux  
At 25Degrees and 1bara thermal conductivity is 24.36 mW/m.K, so
 
J = - K*A ( ΔT / Δx ) = - 24.36 * 0.305 * 10 / 0.002 = -37W of heat flux out of the box
 
If the bottom of the box is perfectly insulated on it's large bottom side and the outside temperature increases to 18 degrees...
 
J = -24.36 * 0.235 * 7 / 0.002 = -20W
 
I'm going to guess that we can assume the situation is a fair bit better than this and that 10W will probably do, but if they're really cheap, I'll think about 20W!
 
RS 725-6474 ([https://uk.rs-online.com/web/p/heating-elements/7256474?gb=s](https://uk.rs-online.com/web/p/heating-elements/7256474?gb=s)) would do it seems! Add in a 12V 2A power supply, splice with MOSFET and add an SHT21 in the propagator box for control. Glue everything down for security!
      

**FRIDAY MEETING**
   

- (MK) Plot distance vs. dB and estimate loss/geometric spreading  
- (MK) Other possibilities: find frequency response of the buzzer, try driving with a pulse, echolocation, cross-correlation method etc. etc.  
- (TR) Considerations: reverse daylight hours?  
- (MK) Some measure of environmental ultrasound would also be great!  
Measuring ambient levels  
*Paul White* for statistical signal processing!!  
- (MK) Haptic poker  
- (TR) LOOK IN THE SUPPLEMENTARY MATERIAL

Number of recordings from each plant in (Khait, 2024)
 ![Exported image](imgs/Exported%20image%2020260410113323-5.png)  

![Exported image](imgs/Exported%20image%2020260410113324-6.jpeg) ![Exported image](imgs/Exported%20image%2020260410113325-7.jpeg)