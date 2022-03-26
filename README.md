# **Overview**

## **Goal**

The project is about implementing and developing smart environment monitoring station using beaglebone green develepment board with the two sensors (temperature and light sensor).Application of the project is to concurrently monitor two sensors using the same I2C bus and log the data. Also there would be provision for exrenal system or task to querry/monitoor the status of the system. 

## **Motivation**
The project is intended to use the concepts that I have learnt in the course of Advanced Embedded System Design.<br />
It will give me an opportunity to 
Following are the learnings that I have learnt:<br />
1)Write a C program using pthreads in user space <br />
2)cross-compilation using buildroot toolchain<br />
3)interprocess communication <br />
4) use of synchronization primitives.<br />

## **Block Diagram**

## **Software Architecture**


 # **Target Build System**
 Buildroot
 
 # **Hardware Platform**
 1)Beaglebone Green or black.<br />
 2)Additional sensors :<br /> 
       a)Temp Sensors: TMP102(Qwiic)<br />
       b)Light sensor: ADAfruit 4162 VEML7700 Lux sensor(I2C light sensor)<br />
 
 
 
 # **Open Source Project Used**
 No open source Project used except buildroot
 
 
 # **Previously discussed content**
 Following are the previously discussed contents that I m going to use for my project:<br />
 1)Pthread<br />
 2)Sockets<br />
 3)Synchronization primitives like mutex <br />
 4)timestamp and logging techniques<br />
 5)Signal handlers<br />
 
 
 
 # **New Content**
 Following are the new content topics:<br />
1)Use of I2C driver for temperature and light sensor.<br />
2)Use of various IPC mechanism preferably a queue to share data between different threads/tasks.<br />
3)Start-up test: Startup test is to verify hardware or software is in working order. <br />
4)Interrupt-Driven Functionality for sensors.<br />
 
 
 
 # **Shared Material**
 I will be reusing the temperature sensor TMP102 which is used in another ESE coursework, ECEN 5823: IOT Embedded Firmware. 
 
 
 
 # **source Code Organization**
 
 
 
 
 
 # **Team Project Members**
 Sayali Mule
 
 # **Scheduled Page**
