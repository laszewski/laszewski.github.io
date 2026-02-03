---
layout: page
title: Selected Projects
permalink: /projects/
---

<div class="projects-wrapper" style="margin-top: 2rem;">
  {% comment %} Sorts by date (newest first) {% endcomment %}
  {% assign sorted_projects = site.projects | sort: "date" | reverse %}
  
  {% for project in sorted_projects %}
    <div class="project-row" style="display: flex; flex-direction: row; gap: 20px; margin-bottom: 40px; align-items: flex-start; border-bottom: 1px solid #eee; padding-bottom: 20px;">
      
      <div class="project-column-left" style="flex: 0 0 100px; width: 100px;">
        {% if project.image %}
          <img src="{{ project.image | relative_url }}" alt="{{ project.title }}" style="width: 100%; height: auto; border-radius: 4px; display: block;">
        {% else %}
          <div style="width: 100px; height: 100px; background: #f0f0f0; display: flex; align-items: center; justify-content: center; font-size: 10px; color: #999; border-radius: 4px;">No Image</div>
        {% endif %}
      </div>

      <div class="project-column-right" style="flex: 1;">
        <h2 style="margin: 0 0 5px 0; font-size: 1.5rem; border: none;">
          <a href="{{ project.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ project.title }}</a>
        </h2>
        
        <div style="margin-bottom: 10px;">
          <small style="color: #666; font-weight: bold;">{{ project.date | date: "%B %Y" }}</small>
        </div>

        <p style="margin: 0; line-height: 1.5; color: #333;">
          {{ project.description }}
        </p>
      </div>

    </div>
  {% endfor %}
</div>