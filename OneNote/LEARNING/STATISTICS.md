- Truncated distributions
- Hampel filtering!

**Factor Analysis VS Principal Component Analysis**
 
During the Statistics Summer School, Exploratory & Confirmatory Factor Analysis came up in the workshop on 'Structural Equation Modelling'. James described the difference between SEM/FA and PCA or regression in terms of direction of inference:

- Indicators \<- Factors, versus …
- Indicators -\> Factors

When pushed a bit harder, the more indepth explanation he gave was that FA is an errors-in-variables model, whereas PCA is not & also that each iteration of a PCA gives another factor or principle component, whereas in FA a pre-determined number of factors/principle components.
 
To get a more indepth mathematical under standing Probabilistic Machine Learning has a good chapter covering both: [https://probml.github.io/pml-book/book1.html](https://probml.github.io/pml-book/book1.html)
 
**PCA**
 
PCA minimises the reconstruction error, which turns out to also maximise the variance of the projection:  
x = data  
W = basis vector  
Z = reconstruction
 ![We can measure the error produced by this approxim...](Exported%20image%2020260410113226-0.png)  
![4 7 4 4 2 4 Figure 201 An illustration of PCA wher...](Exported%20image%2020260410113228-1.png)   
**FA**
 
Factor analysis  
x = data  
W = 'factor loading' matrix  
Psi = errors?  
z = latent variables
   
![Factor analysis corresponds to the following linea...](Exported%20image%2020260410113229-2.png) ![X2 W X 2 px2 2 w pz px Z X Figure 209 Illustration...](Exported%20image%2020260410113230-3.png)

Fitted using EM algorithm usually!
 
Finally, the chapter discusses Probabilistic PCA, and ends with the following equation...
 ![E zx WTW1wx x 2053 which is the orthogonal project...](Exported%20image%2020260410113234-4.png)  

Which is of course a Least Squares solution (or looks a helluva lot like it!)
    ![Geometric interpretation edit The parameters and v...](Exported%20image%2020260410113236-5.png)   
**Extreme Value Distributions**
...