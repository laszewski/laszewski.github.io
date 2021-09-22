+++
title = "Raspberry Pi Cluster for Home Cloud Services"
date = 2021-08-01T01:33:02-05:00
draft = false
tags = ['project', 'cloud', 'class']
categories = ['class']

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

Be part of a team to create a home clouds on  Raspberry Pi's.

This project is a mini project and may require additional activities to qualify for a long term project. Nevertheless, it can be made suitable due to comparision and integration with enough activities. We explain why it is a miniproject and how you can make it a full project. Thos project only requires the use of a single Raspberry Pi 4 with 8GB of storage.

At <http://piplanet.org> we discuss setting up a Raspberry Pi
cluster. Instead of burning a cluster you will use the burn command to burn a single PI 4.
Now that the basic cluster is set up, we like you to explore any available "home cloud" setup on your PI and document it. IN addition, you will implement a simple one line deployment comamndline tool supported by an API that deploys slurm on a list of hosts specified by the ip adress. This includes 

1. Create a proper method to deploy the frameworks on the cluster
given the IP's or the name of the machines.
2. Provide a mechanism to verify if the deployment was successful
3. Provide a set of unit tests using `pytest` to execute some basic use cases.
4. Develop a python API that supports the deployment while exposing it through a command line
5. Explore the development of a REST API that facilitates the deployment reusing the developed Python API.
6. Develop a manual
7. Develop a high-quality report with benchmarks.


## Requirements

In order for you to participate in this project, you will need:

1. You need to have financial resources to buy yourself the material for creating a single PI. You will need at least 3 Pis with 8GB memory. Each of them costs $75, but you also need a power supply costing $35, power cables, network cables, and at least one HDMI cable suitable to connect an HDMI monitor to a PI. More details about parts can be found at <https://cloudmesh.github.io/pi/docs/hardware/parts/>

2. In addition we will explore the integration of at least one additinal PI. This could be another PI or a PI Zero with WiFi. You hav two options here. A use the Pi Zero and hoock it up to a battery so you can move the PI to record an attached sensor such as temperature, humidity, preasure and record the values for it when moving around. Another thing would be to measuer the strenght of the Wifi network and other networks you may discover. Populate the information to your manager PI and create a Web secure page that reports the results that you then observe from another computer. Furthermore, identify at least one home automation hardware that you can connect to the PI, such as Alexa or Google switches, Garage door openers (commercial) and so on.
2. Significant Python knowledge
3. Be highly motivated
4. Be willing to have meetings on this project once or twice a week
5. SHowcase significant progress over the lifetime of the project.
6. be knowledgeable with GitHub (a repository will be provided to which
   Dr. von Laszewski will contribute)
7. Conduct task management in GitHub (Gregor will explain)
8. Be honest and not hiding problems or implementation bugs.
9. You must be able to do a videoconference and be able to share your screen (I typically use google meet or zoom).

## Options

There is a great deal of flexibility in this project and we like that you explore your ideas but work with Gregor to identify if they are feasable and complex enough. Gregor has a "secret" PI notebook that can be used to interface with the sensors and is easy to use. However, we do not have yet anything about interfacing to commecrcial products. 

## Getting started

1. In the first week, collect a list of all Google like service and other home products that could be integrated in this project.
2. Study the GitHub repositories from cloudmesh-pi-burn and cloudmesh-pi-cluster and cloudmesh-common intensely. Find out how to burn a single PI.
3. Try out and **document** the various cloud services. Evaluate if they work and how to use elementary featuers of them
4. Identify commercial hardware that can be accessed from the PI and showcase how to use it.
5. Develop a FastAPI based secure REST service that uses such hardware (such as alexa switches). Showcase and document how to access them from Python, but also how to access them from your secure REST service. Develop a commandline interface for it (Gregor will help setting this commandline interface up)
6. Communicate regularly with Gregor on ideas that you have
7. An absolute must is the development of the documentation. THis project may have more documentation needs than others
8. Optional: Discuss the integration of mqtt. Showcase

In case of questions, please contact Gregor at

laszewski@gmail.com

