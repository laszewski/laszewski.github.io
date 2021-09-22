+++
title = "Multi Cloud Virtual Directory"
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

## Virtual directory

Be part of a team to create a multicloud virtual directory.

Your goal will be to to develop an API, secure REST, and commandline
tool that easily interfaces with storage servoces such as file based
services and object stores osted on the internet to create a virtual
directory that accesses the files by directory name and filename.

This is espaciellyusefull for data scientists that may want to strore
their data on multiple cloud providers and eliminate vendor lockin.

It could also be useful for geographically distributed files that
allow services to utilize them based on speed of access or the
physical location.

In a previous version of cloudmesh we have developed an integrated
approach for compute and storage services. However in this project we
like to explore some new features and separate the implementation form
the main cloudmesh.



In the past cloudmesh has conducted two such projects

* <https://cloudmesh.github.io/cloudmesh-manual/manual/storage.html>
* <https://cloudmesh.github.io/cloudmesh-manual/manual/vdir.html>

We like to reimplement thise projects and significantly improve them by

1. Adding more providers
2. Adding a secure rest service for acceassing the virdual directory
3. Creating a slick user interface to brows the virdula directry
4. Put everything in a container so it can be run on Linux, MAc and
   Windows.
5. Dreate a convenient commandline tool that allows starting of the
   service, interacting with it and make this real easy to use. THe
   commandline will hide the docker commands while providing human
   readable abbreviations.
6. Deliver unit tests with pytests
6. Deliver a high quality report including benchmarks


## Requirements

In order for you to participate in this project you will need:

1. A computer on which you can run docker (Windows Home will not work)
2. Significant python knowledge
3. Be highly motivated
4. Be willing to have meetings on this project once or twice a week
5. SHowcase significant progress over the lifetime of the project.
6. be knowledgable with github (a repository will be provided to which
   Dr. von Laszewski will contribute)
7. Conduct task management in GitHub (Gregor will explain)
8. Be honest and not hiding problems or implementation bugs.
9. You must be able to do a videoconference and be able to share your screen (I typically use google meet or zoom).

## Options

One of the two projects used a single file taansfer logic, while the
other used a parallel file transfer option. It will be up to you to decide how to proceed.

## Getting started

1. In the first week collect all clouds and services that could be
   used in this project. THis work should be split between the
   teammembers and a detailed analysis including features including
   authentication and security must be conducted.
2. You will need to evaluate the previous efforts and decide how to proceed.

   One way is to select several cloudas and define an abstraction that
   has to be implemented for each cloud. this can be actually bes
   demonstrated by an example commandline such as

   ```bash
   vdir mkdir DIR
   vdir cd [DIR]
   vdir ls [DIR]
   vdir add [FILEENDPOINT] [DIR_AND_NAME]
   vdir delete [DIR_OR_NAME]
   vdir status [DIR_OR_NAME]
   vdir get NAME DESTINATION
   ```

3. From the commandline derive some API interface and use FastAPI to
   implement it.

4. Identify a mechnism on how to deal with the security. AN encrypted
   file with your cloud credentials will be sufficient.

5. One of the limitations of the previous vdir project is that the
   fill add function is done only on a single file but not on a
   recursive file tree. Naturally we need to upload, single files,
   multiple files and filetrees, similar to the unix command rsync.
   This has been implemented in the storage command

   ```bash
   storage [--storage=SERVICE] [--parallel=N] create dir DIRECTORY
   storage [--storage=SERVICE] [--parallel=N] get SOURCE DESTINATION [--recursive]
   storage [--storage=SERVICE] [--parallel=N] put SOURCE DESTINATION [--recursive]
   storage [--storage=SERVICE] [--parallel=N] list [SOURCE] [--recursive] [--output=OUTPUT]
   storage [--storage=SERVICE] [--parallel=N] delete SOURCE
   storage [--storage=SERVICE] search  DIRECTORY FILENAME [--recursive] [--output=OUTPUT]
   storage [--storage=SERVICE] sync SOURCE DESTINATION [--name=NAME] [--async]
   storage [--storage=SERVICE] sync status [--name=NAME]
   storage config list [--output=OUTPUT]
   storage [--parallel=N] copy SOURCE DESTINATION [--recursive]
   ```

   We like naturally to (re-)implement the storage command.

6. Before you start implementing describe and showcase a couple of commands on how to used it.
   Our command will be called cdir (for cloudmesh dir so it is easy to distinguish)

7. Make sure that you provide a comprehensive list of potentail cloud
   storage ervices. Distinguish between for pay and free services.

   The list could include:

   * AWS Drive
   * AWS Object Store
   * An ssh accesible computer
   * Azure
   * Box
   * Degoo
   * Dropbox 
   * Google Drive 
   * Google docs/drive
   * Icedrive 
   * MEGA 
   * MediaFire
   * MediaFire
   * Mega
   * Nextcloud
   * OneCloud
   * OneDrive 
   * Oracle
   * Sync.com 
   * WebDAV
   * Your local computer
   * iCloud
   * iDrive
   * idrive
   * pCloud 
   
8. Are there companies or services that already offer this?

9. When defining the REST API we like to be able to use a dirname and
   a basename within the api similar to python. to deal with provider
   specific filenames we do have two urls for a file.

   `{provider}/{dirname}/{basename}`
   `{dirname}/{basename}`

   The first allows duplication of files between services, the latter
   defines a "preferred" url based on some criteria. It could be that
   we just set the preferred provider for the file.

   Note that the introduction of duplicating files is new

   It also requires an update so that the file with the newest
   timestamp gets updated on all registered serrvices.

10. Please note that the project addresses the ability to integrate
    object store and regular file system based storage.

11. Not all implementation must be done on Ubuntu20.04 which is run
    via a container. The graphical component is done wia moder Web
    view technologies. Wile all other implementation can be done in
    python, the GUI can also be implemented in JavaScript. The service
    accessing other services must be properly protected which is easy
    as we assum it runs on localhost and we can appropriately secure
    it with common solutions.

In case of qeuestions, pleas econtact Gregor at

laszewski@gmail.com

