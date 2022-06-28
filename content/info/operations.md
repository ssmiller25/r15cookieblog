---
layout: page
title: "Operations"
meta: "false"
tags: ["devops","ops"]
---

Now that my day job involves more specific DevOps practices, I've grown my Sysadmin phylosophy to be more all-encompassing.  
Beyond just automation of system configuration, modern practices requires more encompassing practices such as tight
integration with developers, version control, test driven development, and continuous integration and delivery.

From [ScaledAgileFramework](https://www.scaledagileframework.com/devops)

![CALMR Approach to DevOps](/assets/info/sysadmin/DevOps_F01_WP.png)

- *Collaboration and organization*: A primary focus of Devops is around culture.  Instead of an "us versus them" mentality
between production and development teams, high integration of those roles is necessary.
- *Automate everything mindset*: In today fast-paced world, automation is key.  This includes everything from infrastructure
deployment, automated testing frameworks, and CI/CD tooling so releases require no manual work.
- *Lean flow accelerates delivery*: In line with an Agile mindset, reduce the "work in progress" tasks, reduce the batch
sizes themselves, and make sure work queues are low.  Instead of a few large releases, aim for continuous delivery of a lot
of small batches.
- *Measurement of Everything*: Correct analytics is necessary to quickly trace down any issues that might occur in a 
continuous delivery framework.  As quoted from the [ScaledAgileFramework](https://www.scaledagileframework.com/devops)  site 
"..."the facts are always friendly" rather than intuition"
- *Recovery Enabled Low Risk Releases*: In order to implement a continuous delivery mindset, there must be the ability to 
quickly and easily roll back releases that experience unexpected issues.  This includes having the tooling in place to 
perform such operations and actually performing practice runs of pulling back or fixing forward.

## DevOps Culture

- [How They SRE](https://github.com/upgundecha/howtheysre)

## DevOps Toolchain

[Love this idea](https://dzone.com/articles/devops-toolchain-for-beginners) from DZone, but some of the specific tools I had some issues with.  A summary below, with the tooling I prefer:

- Benefits:
  - Fast and Efficient Deployments (I'd also add efficient roll-backs to promote high-velocity deployments)
  - Incident Management
  - Improved Software Quality
  - Workflow Automation
  - Security
- Tool Catagories
  - Project Management: GitHub Issues or Jira
  - Source Code Repositories: GitHub or GitLab
  - CI/CD Pipelines/Orchestration:
    - Github Actions
    - Argo Workflows - To capture traditional CI pipelines in pure K8S
    - ArgoCD or FluxCD - For continuous deployment
  - Test Automation: Selenium
  - Configuration Management: Generally an anti-pattern.  Much prefer leveraging Packer to build immutable images, and Terraform or Crossplane to deploy
  - Monitoring: Prometheus, Grafana, Loki
  - Continuous Feedback Tools: From users, no actual tools identified
  - Artifact repository: 
    - Docker/OCI Focused: Docker Hub, Github Container Registry, Quay.io
    - General: Github Packages, JFrog Artifactory
  - Issue Tracking: Github Issues, Jira
  - Collaboration: [Github Team Discussions](https://docs.github.com/en/organizations/collaborating-with-your-team/about-team-discussions), Slack
  - Planning: Asana
  - Database Tools: Various CLI tools (mysql, psql, etc), [BeeKeeperStudio (have to try)](https://www.beekeeperstudio.io/) or [DBeaver (have used, but a bit heavy)](https://dbeaver.io/)


## Misc

- [NSA Proof Your Email System](http://sealedabstract.com/code/nsa-proof-your-e-mail-in-2-hours/)
- [Awesome Sysadmin](https://github.com/kahun/awesome-sysadmin)
- [Devops Exercises](https://github.com/bregman-arie/devops-exercises)