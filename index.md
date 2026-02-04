---
layout: home
title: 
---

--- 

Research Professor, University of Virginia, <laszewski@gmail.com><br>
Biocomplexity Institute, 946 Grady Avenue, Suite 100, Charlottesville, VA 22903

---
<br>

![Profile Picture]({{ '/img/gregor-2025-crop.jpg' | relative_url }}){: style="float: left; margin-right: 25px; margin-bottom: 20px; width: 200px; border-radius: 10px;"}

## Interests

* **Machine Learning**
* **MLCommons Benchmarking of Deep Learning Applications**
* **Cloud Computing and Multicloud Environments**
* **Cloudmesh**

## Education

* **PhD in Computer Science** *Syracuse University*, 1996
* **MS Computer Science (Diplom)** *University of Bonn*, 1989
* **BSc in Computer Science** *University of Bonn*

<div style="clear: both;"></div>

---

## Quick Links

* GitHub
  * <https://github.com/laszewsk>
  * <https://github.com/laszewski>
  * [Curriculum Vitae (CV)](vonLaszewski-resume.pdf) including links to most papers.
  * [Publications](/publications)


## Biography

He received a Masters Degree in 1990 from the University of Bonn,
Germany, and a Ph.D. in 1996 from Syracuse University in Computer
Science. He held a position at Argonne National Laboratory from
Nov. 1996 – Aug. 2009, where he was last a scientist and a fellow of
the Computation Institute at the University of Chicago. During his
last two years at ANL, he was on sabbatical as an Associate Professor
and the Director of an institution at Rochester Institute of
Technology, focusing on Cyberinfrastructure.  At Indiana University,
he was an Assistant Director in the Digital Science Center (DSC) in
the School of Informatics and Computing. He was also the Chief
Architect of FutureGrid an OnPremisse Cloud.

### Academic Appointments

Currently, he holds an appointment at University of Virginia as a
Research Professor. Past academic appointments include Adjunct
Professor in the Intelligent Systems Engineering Department at Indiana
University, Adjunct Professor positions at the Computer Science
Department at Indiana University, Associate Professor at Rochester
Institute of Technology, and Adjunct Professor at the University of
North Texas. He has also taught voluntarily at Illinois Institute of
Technology.

### Highlights from Previous Projects

He initiated the [Cloudmesh
project](https://cloudmesh.github.io/cloudmesh-manual/), a hybrid
multicloud toolkit to enable cloud computing across various Cloud and
Container IaaS such as OpenStack, AWS, Azure, Docker, Docker Swarm,
and Kubernetes. This prroject is still maintained.

He provided leadership to interface with the San Diego Supercomputing
Center on virtual clusters for XSEDE comet. He was the co-PI on
developing a scientific impact metric for the longest-running
high-performance computing infrastructure funded by NSF spanning
XSEDE, reaching as far back as TeraGrid. Previously, he was the
architect of FutureGrid, one of the first successful clouds in US
academia.

He was previously involved in Grid computing since the term was
coined. Before that, he initiated and led the [Java Commodity Grid
Kit](http://www.cogkit.org), which provided the basis for hundreds of
Grid-related projects, including the Globus Toolkit.  The Java CoG Kit
was used in a single year on over 100 demonstrations on the SC
exhibit, the primier conference in supercomputing. It guranteed
portability for over 10 years in the community to access Grid
Resources. The CoG Kit was also the first project that used a browser
controlled interface to file transfers. The CoG Kit evolved to
Cloudmesh while focussing on cloud resources instead of Grids.

Prior to this he developped one of the first metacomputers connecting
several super computing with a transparent centers through client side
interface to compute resources. This was a precurser to Grid
Computing.


## Selected Projects

<div class="projects-wrapper" style="margin-top: 2rem;">
  {% assign sorted_projects = site.projects | sort: "date" | reverse %}
  
  {% for project in sorted_projects %}
    <div class="project-row" style="display: flex; flex-direction: row; gap: 20px; margin-bottom: 40px; align-items: flex-start; border-bottom: 1px solid #eee; padding-bottom: 20px;">
      
      <div class="project-column-left" style="flex: 0 0 100px; width: 100px;">
        <a href="{{ project.url | relative_url }}" style="display: block; text-decoration: none;">
          {% if project.image %}
            <img src="{{ project.image | relative_url }}" alt="{{ project.title }}" style="width: 100%; height: auto; border-radius: 4px; display: block; transition: opacity 0.2s;">
          {% else %}
            <div style="width: 100px; height: 100px; background: #f0f0f0; display: flex; align-items: center; justify-content: center; font-size: 10px; color: #999; border-radius: 4px;">No Image</div>
          {% endif %}
        </a>
      </div>

      <div class="project-column-right" style="flex: 1;">
        <h2 style="margin: 0 0 5px 0; font-size: 1.5rem; border: none;">
          <a href="{{ project.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ project.title }}</a>
        </h2>
        
        <p style="margin: 0; line-height: 1.5; color: #333;">
          {{ project.description }}
        </p>
      </div>

    </div>
  {% endfor %}
</div>
