#Sigmoid-Softmax Feed-forward Artificial Neural Network 
#for heartbeats classification

##Carlos III University of Madrid.
##
##Master's Final Thesis: Heart-beats classifier based on ANN
##
##ANN Test App implemented in Hardware & Software for Standalone Zynq-7000 APSoC 
##platforms
##
##Author: Pedro Marcos Solórzano
##Tutor: Luis Mengibar Pozo


The goal of this project is to compare the performance of a Feed-forward ANN 
implemented in Software and in Hardware taking advantage of the High Level 
Synthesis (HLS). A Zybo board is used for this experiment.

These two implementations to be compared are located in two sub-projects:

- A standalone Software (SW): the Test App of ANN_Software project is
adapted to be run on Bare-metal Zynq ARM platform. GPIO LEDs compatibility is 
also added. 

- A standalone Software with Hardware acceleration (SWandHW): A feed-forward ANN
is implemented by HLS in Hardware and packaged in an IP. This IP is after used
as co-processor to accelerate the previous Test App