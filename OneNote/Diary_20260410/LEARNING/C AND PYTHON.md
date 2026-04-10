1. **Pointers**
2. **Overloads & templates**
3. **C segfaults**
4. **Cython**
 
The best first introduction looks to be 'Head First C': [https://karadev.net/uroci/filespdf/files/head-first-c-o-reilly-david-grifffiths-dawn-griffiths.pdf](https://karadev.net/uroci/filespdf/files/head-first-c-o-reilly-david-grifffiths-dawn-griffiths.pdf).  
Although it looks extremely dense: 'Numerical Recipes in C' could be a useful reference for specific algorithms at some point: **https://www.cec.uchile.cl/cinetica/pcordero/MC_libros/NumericalRecipesinC.pdf****. It may also be worth looking into Julia language instead too!**
 
**===============================================================================**

1. **POINTERS**
 
This is definitely the best tutorial:  
[https://cplusplus.com/doc/tutorial/pointers/](https://cplusplus.com/doc/tutorial/pointers/)
 
Always remember:

- & = "the address of"
- * = "the value pointed to by"
 
===============================================================================

1. **OVERLOADS & TEMPLATES**
 
Overload = multiple function definitions for different argument types. May or may not have different body  
Template = a generic type, so that a function can be overloaded without defining it multiple times
   

**===============================================================================**

1. **C SEGFAULT NOTE**
 
- Dererencing a null pointer
- Dereferencing or assigning to an uninitialised pointer
- Dereferencing or assigning to a freed pointer
- Buffer overflow
- Stack overflow
- Attempting to execute a program that has not compiled properly

```  
char* p1 = NULL;  
char* p2; // Wild pointer: not initialised  
char* p3 = (char*)malloc(10 * sizeof(char)); // Initialised pointer
 
free(p3); // Dangling pointer as memory has been freed  
```
 
This is an example of a program that most compilers will compile, but will not execute:  
```  
int main(void) {  
char* s = "Hello world";  
*s = 'H';  
}  
```  
This is because `char* s` places the string in const memory segment, so is read-only.  
To correct it, use `char s[]` which initialises a character buffer on the stack (read-write).
   

**===============================================================================**

1. **CYTHON**
 
Basic tutorial: **https://proceedings.scipy.org/articles/MJMV8092**  
Numerical specifics: [https://lectures.scientific-python.org/advanced/interfacing_with_c/interfacing_with_c.html](https://lectures.scientific-python.org/advanced/interfacing_with_c/interfacing_with_c.html)