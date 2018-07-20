# Model and Simulations of Biological Systems Course
## Virginia Tech, Fall 2016
This course was designed to apply the techniques of differential equation and continueous mathematical modeling to biological systems. For this incarnation of the course we modeled systems in cellular biology, in particular infectious diseases and HIV. We model these systems using well-known dynamics of infectious diseases pulling from immunology and pathology. 

Models are run (simulated) in Matlab using ode45. We are often interested in whether our model behaves as the literature suggests it should. Namely, if we know that for sustained high levels of infection an individual's immune system will become exhausted, we should see this decreased effectiveness in the immune response in our simulations. 

## Repo Content

These .m files solve 3 different ordinary different equation (ODE) systems that describe negative feedback oscillations. In this case, we consider these systems to describe cellular interactions. 

We start with the Goodwin model, and derive from there the Bliss model and the Goldbetter model for circadium rhythms. 
Each model has an associated ode.m file which corresponds to the ode system to be solved in the original .m file. 

A write up of the behavior of these systems is found in *lab1_writeup.pdf*.
