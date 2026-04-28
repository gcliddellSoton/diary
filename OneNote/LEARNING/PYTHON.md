1. **Running from the command-line and debugging**
2. **Hints & Tips**
    1. **returns**
    2. **enumerate()**
    3. ***args, **kwargs**
    4. **sys.argv**
    5. **pickle/json**
    6. **multiprocessing**
    7. **version stamping**
    8. **error handling**
3. **NumPy/Matplotlib/Pandas**
    1. **rename pandas columns**
    2. **f-strings + LaTeX plots**
    3. **applying functions to a sliding window**
    4. **comic sans for matplotlib**
 
# 1. **Running from the command-line and debugging**

Running python in the commandline:  
```  
python -i file.py  
```  
runs it and ends in the interpreter for exploration. To break inside a function using the native debugger, write the following command where you want it:  
```  
breakpoint()  
```  
You can then use

|   |   |
|---|---|
|``c```|to continue to next breakpoint|
|```h```|for help|
|```s```|For 'step' into next function|

etc. Etc. And I think ```exit``` runs the rest of the program without stopping, although I'm yet to work this out!
    
# **2. Hints & Tips**
 
|   |   |
|---|---|
|**Function/Tip**|**Description/Example**|
|**Return … if … else ...**|Can have if/else clause in return statement|
|**Enumerate()**|```  <br>for i, item in enumerate(['1', '2', '3']):  <br>print(f'{item} is number {i} in the list.')  <br>```  <br>would print '1' is number 0 in the list and so on! An easy way to get an index with your iterable 😊|
|***args, **kwargs**|*args = arguments  <br>**kwargs = keyword arguments<br><br>  <br><br>Within a function that has **kwargs in its definition, you can access these variables by var = kwargs.pop('var'), so it's just a dictionary!! May be very useful in the making of wrapper functions for plotting|
|**sys.argv**|A list of command-line arguments for instance if you did  <br>```  <br>#!/usr/bin python3  <br>#Title: argPrinter.py  <br>import sys  <br>for i in sys.argv:  <br>print(i)  <br>```<br><br>  <br><br>Then you would get  <br>```  <br>$ Python3 argPrinter.py -a foo –b ee  <br>['argPrinter.py', '-a', 'foo', '-b', 'ee']  <br>```|
|**Pickle/Json**|Serialisation methods, so good for storing output files/saving progress etc.!!!<br><br>- Pickle = binary (more space efficient)<br>- Json = unicode (more interoperable!)<br><br>  <br><br>For json...  <br>null \<-\> None<br><br>  <br><br>#write  <br>with open("myfile.out", 'w') as f:  <br>json.dumps(mydata, f)<br><br>  <br><br>#read  <br>with open("myfile.out", 'r') as f:  <br>data = f.read()  <br>data = json.loads(data)<br><br>  <br><br>#read (2nd method)  <br>With open("myfile.out", 'r') as f:  <br>data = json.load(f)|
|**Multiprocessing**|classes:<br><br>- Process(target, args) is exactly that!<br>    - methods: start/join/kill/terminate/is_alive<br>  <br>- Pool(processes) starts a number of processes, maybe easier than creating processes directly<br>    - methods: map, impa_unordered, apply_async<br>  <br>- Queue() [see also queue library!] not currently necessary, but might be useful for saving progress etc!<br><br>  <br>  <br>  <br><br>- Array(), Value() [see also array library] created shared memory to be accessed by the processes|
|**Version-stamping**|I want the output of my code to be stamped with:<br><br>- repository name<br>- commit hash<br>- filename<br><br>As this will make sure that I can ALWAYS reproduce any of the figures that I have ever made!! Simplest is … open(".git/refs/HEAD").read(). Next most sophist.  <br>```  <br>import subprocess  <br>subprocess.check_output([  <br>'git',  <br>'rev-parse',  <br>'HEAD'  <br>]).decode('ascii').strip()  <br>```  <br>Or alternatively...  <br>```  <br>import subprocess, os  <br>subprocess.check_output(  <br>["git", "describe", "--always"],  <br>cwd=os.path.dirname(os.path.abspath(__file__))  <br>).strip().decode()  <br>```<br><br>  <br><br>Or a frankenstein solution:  <br>```  <br>import os  <br>repo = os.path.dirname(os.path.abspath(__file__))  <br>commit = open(os.path.join(repo, '.git', 'refs', 'HEAD')).read()  <br>```|
|**error handling…**|DO NOT USE TRY/EXCEPT UNLESS YOU KNOW MORE THAN ME!!!<br><br>  <br><br>If you're worrying about something that's inside a function, the best thing you can do is return early with an error code.<br><br>  <br><br>def func(arg1, arg2):  <br>return err, val<br><br>  <br><br>If you have to use try/except, make sure to use them PROPERLY. Except only the error type that you are expecting. Then if another error is raised, then it will be raised separately.<br><br>  <br><br>[Stop using Try/Catch in Python. An introduction to Safe Assignment in… \| by Adonis Gaitatzis \| Medium](https://gaitatzis.medium.com/stop-using-try-catch-in-python-2c8f55870372)<br><br>\> From \<[https://gaitatzis.medium.com/stop-using-try-catch-in-python-2c8f55870372](https://gaitatzis.medium.com/stop-using-try-catch-in-python-2c8f55870372)\>|


**F-strings!!!**
   

# 3. **NUMPY/PANDAS/MATPLOTLIB**
 
**NumPy**  
**Scientific Python Lectures — Scientific Python Lectures**

\> From \<[https://lectures.scientific-python.org/index.html](https://lectures.scientific-python.org/index.html)\>   
**Matplotlib**  
Follow the Scientific Python Lectures too! But also:  
[https://nbviewer.org/github/jrjohansson/scientific-python-lectures/tree/master/](https://nbviewer.org/github/jrjohansson/scientific-python-lectures/tree/master/)
   

|   |                                                                                                                                                                                                                                                                                                                                                                                                                                            |   |
|---|---|---|
|**Thing**| **Syntax**                                                                                                                                                                                                                                                                                                                                                                                                                                 |**Description**|
|**Rename pandas cols**| df.rename(columns={'oldName': 'newName'}, inplace=True)                                                                                                                                                                                                                                                                                                                                                                                    |…|
|**f-string + LaTeX in plots**| ![Ex![[Exported image 20260410113206-0.png]]ported image](Exported%20image%2020260410113206-0.png)  <br><br>**For LaTeX!!**  <br>plt.text(1, 4, f"text$_{{{var}}}$")<br><br>  <br>\> From \<[https://stackoverflow.com/questions/60150031/how-to-display-latex-f-strings-in-matplotlib](https://stackoverflow.com/questions/60150031/how-to-display-latex-f-strings-in-matplotlib)\>                                                       |Escape the curly brackets with MORE curly brackets!!|
|**Applying functions to a sliding window**| np.lib.stride_tricks.sliding_window_view(X, stride)<br><br>  <br><br>use with severe caution as you are accessing c objects. Important for dtypes to be floats as well.<br><br>  <br><br>Consider using [http://github.com/pydata/bottleneck](http://github.com/pydata/bottleneck) for sliding window variance in the future! This package was recommended in the numpy documentation for sliding_window_view()                            ||
|**Comic Sans For Matplotlib in Linux**| 2. Go to C:\Windows\Fonts and share the font folder with your Linux computer, which contains the .ttf files<br>3. Place the folder in the users home folder in .fonts, so cp ~/.fonts YOU MIGHT HAVE TO CREATE A .fonts DIRECTORY!!<br>4. Update the cache by running `fc-cache f-v` in the terminal<br>5. Restart everything, then use:<br><br>`matplotlib.rcParams.update({'font.family': 'sans-serif', 'sans-serif': 'Comic Sans MS'})` ||
|**Regex**|                                                                                                                                                                                                                                                                                                                                                                                                                                            |uses an object-oriented approach, which can be confusing! The way to extract the sequence you are searching for immediately is to use the `group()` method.|
||                                                                                                                                                                                                                                                                                                                                                                                                                                            ||
 
# **Courses**

**From Youtube**
 
[Spectral Subtraction In Python - Alexx Mitchell](https://www.youtube.com/watch?v=Xb--68NlxS0&t=348s)

1. You can drag files into a terminal window???
2. np.newaxis is an alias for None: used to go from shape (x) to (x,) or (,x)
3. np.moveaxis & np.swapaxes
 ![Embedded YouTube video](https://www.youtube.com/embed/Xb--68NlxS0?start=348&feature=oembed&autoplay=true)