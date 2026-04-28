1. **Miniconda Installation**
2. **Spyder**   

# **Miniconda Installation** 

### **Windows…**  
```  
curl [https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe](https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe) -o .\miniconda.exe  
start /wait "" .\miniconda.exe /S  
del .\miniconda.exe  
``` 
**In WSL…**  
```  
sudo apt install wget  
```

> Then From \<[https://www.anaconda.com/docs/getting-started/miniconda/install#linux](https://www.anaconda.com/docs/getting-started/miniconda/install#linux)\>  

```  
mkdir -p ~/miniconda3￼wget [https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh) -O ~/miniconda3/miniconda.sh￼bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3￼rm ~/miniconda3/miniconda.sh  
```

Then
```  
source ~/miniconda3/bin/activate   
conda init --all  
```
    
I also then added the conda command to PATH environment variables (First making a back-up of PATH saved to my OneDrive in the Admin + Inductions folder!), using the Windows GUI environment variable editor. ==This hasn't been a great solution…==
 
When updating conda/managing packages etc. there's a lot of useless files generated!! Use  
```  
conda clean –a –p  
```  
to clear up after yourself!
 
[30/07/2025]  
Felt the need to do a full uninstall of miniconda for some reason

### **Conda Helpfulness**
1. Checking what environments exist: ==`conda env list`== OR `conda info -e`
2. Checking what packages are installed in current env: ==`conda list`==
3. Export environment (as it was made!) to .yml file: ==`conda env export --from-history \> environment.yml`==
4. Create from .yml file: ==`conda env create -f environment.yml`==
5. Remove a broken environment ==`conda remove -n myenv --all`==
6. Add channels: ==`conda config --append channels roebel`==
7. Show available channels ==`conda config --show channels`== 

### **For 'Khait Reproduction'**
 
Create the following Conda environment
 
```  
conda create –n entropy-env numpy scipy pandas statsmodels matplotlib seaborn scikit-learn antropy librosa pysndfile datashader jupyter spyder pip -c roebel  
```  
And also add in the Signal Processing Kit too for messing around
 
```  
pip install spkit  
```  
For some of the debugging purposes I have been using Spyder, but not much!
 
### **For 'spAEkit'**
 
As I have advanced, I've found that I didn't want to have to do all of that typing of package names, so went with creating an environment.yaml to create the conda environment with.
 
Then also decided to make my own package, for which I used cookiecutter. I found this immensely confusing. I would recommend anyone following my footsteps to use python v-env instead of a conda environment for as long as possible. The only good reason for going with conda is that you are using interfacing with non-python code, e.g. C, R, Spice etc.
 
When I was creating a conda enviroment for the package that I had made, I had the environment.yaml install the working directory as a pip package. This resulted in quite a cryptic error, because I had been chopping and changing with a setup.py file to compile the package with Cython. This meant fiddling with file extensions between .py and .pyx and I had changed everything back to .py, but forgotten to remove the setup.py, which was then looking for non-existent files!  
[https://stackoverflow.com/questions/76493088/how-do-i-specify-a-pip-installed-editable-dependency-in-a-conda-environment-yam](https://stackoverflow.com/questions/76493088/how-do-i-specify-a-pip-installed-editable-dependency-in-a-conda-environment-yam)
   
# **Spyder installation**

Suggestion from the website:  
```
conda create -c conda-forge -n spyder-env spyder numpy scipy pandas matplotlib sympy cython
```   
Set conda-forge as default channel
```  
conda activate spyder-env￼conda config --env --add channels conda-forge￼conda config --env --set channel_priority strict  
```
Have not been using Spyder, but in preference have been getting used to executing python scripts in the command prompt/shell, which has been useful for getting used to keeping the programming environment clean. I may transfer back to Spyder or some other IDE soon!
 
Spyder I have found so much easier to debug things with that I have started to use it for that. HOWEVER
 
Install spyder separately to conda/miniconda. I then changed a bunch of preferences:

1. In Linux, I set interpreter to `/home/gcl1r25/miniconda3/envs/kymatio-env/bin/python3`
2. IPython console \> Graphics \> "Backend=Qt" makes sure plots are opened in a separate window (a Qt widget) and are interactive
3. Enabled Greedy completion in the IPython console too
4. In 'Completion and Linting' set up 'Autoformat on save' and change formatter to 'black', then also turn on Docstring formatting
5. In debugger, add the line `import matplotlib.pyplot as plt` to be automatically called on debugging
6. In Editor, tick all of the options that sound good, e.g. 'Show indent guides', I changed the document template to be:
		Title:  
		Date Created:  
		Author:  
		Description: 

Also if you press Ctrl + Alt + D after a function declaration, it auto-inserts a docstring!
> On windows, you can set up in WSL, by installing WSL, installing miniconda on WSL and then following these instructions [https://docs.spyder-ide.org/current/faq.html#install-wsl2](https://docs.spyder-ide.org/current/faq.html#install-wsl2) to transfer Spyder
   

**Restoring Interactive QT widget in Spyder**  
**…**
   
# **vscode**

This really is the way to go! Useful extensions:
- Python (including debugger)
- Ruff
- Remote Development (works with WSL, SSH)
- PDF print
 
 Settings: 
- Add directory called .vscode and make a file called settings.json, and add autoFormatOnSave 

