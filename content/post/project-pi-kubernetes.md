+++
title = "Kubernetes Raspberry Pi Cluster for Data Science (largely completed)"
date = 2021-08-01T01:33:02-05:00
draft = false
tags = ['contribute', 'project', 'cloud', 'class']
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

Be part of a team to create a kubernetes cluster on a Raspberry pi.

At <http://piplanet.org> we discuss setting up a Raspberry Pi
cluster with a convenient burning approach of SD Cards. The Pis will
receive preconfigured SD Cards that allow starting a cluster when the
Pis are switched on. You will be able to communicate from the COmputer
on which you burned the Pis and each of the PIs. You will also be able
to communicate between the PIs.

Now that the basic cluster is set up, we like to install a distributed
quieing system for the cluster based on Kubernetes. Kubernetes is a very popular
farmework for container clusters.

We like to implement a simple one line deployment comamndline tool supported by an API that deploys kubernetes on a list of hosts specified by the ip adress. This includes 

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

1. You need to have financial resources to buy yourself the material for creating a PI cluster. You will need at least 3 Pis with 8GB memory. Each of them costs $75, but you also need a power supply costing $35, power cables, network cables, and at least one HDMI cable suitable to connect an HDMI monitor to a PI. More details about parts can be found at <https://cloudmesh.github.io/pi/docs/hardware/parts/>
2. If you also have a Laptop or desktop to which you like to connect the PI, make sure it can run docker (Windows Home will not work). However, one of the Raspberry PIs will do.
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

We like you to explore the deployment both on RaspberryOS and on Ubuntu.

Please be aware that the goal is not to replicate tutorials from the Web that require input by hand or repeated installs on the various PIs. Instead, we like to have  a single command such as

```cms pi cluster deploy kubernetes --hosts "red,red[01-red02]"```

where simple options such as the hostnames in the pi cluster are used.


## Getting started

1. In the first week, collect a list of all projects on the internet that do something similar
2. Study the GitHub repositories from cloudmesh-pi-burn and cloudmesh-pi-cluster and cloudmesh-common intensely. Explore the old code and identify what is wrong with it (just by looking at it)
3. Identify a base method. This can use existing DevOps approaches such as ansible, cheff, snapcraft (ubuntu), or cloudmesh parallel runtime methods. However, the use will be hidden through an API and command line tool. Evaluate the llnl simple deployment method which can be used. Also exploer if there is a snap available.
4. From the command line, derive some API interface and use FastAPI to
   implement it.
5. Identify a mechanism on how to deal with the security.
6. Before you start implementing, describe and showcase a couple of commands on how to use it.
7. Your deployment should target Ubuntu on the PI as well as RaspberryOS. If there is only time for one, pick one.

In case of questions, please contact Gregor at

laszewski@gmail.com

