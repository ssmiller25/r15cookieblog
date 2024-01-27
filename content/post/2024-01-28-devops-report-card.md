---
date: "2024-01-28"
description: ""
tags: ["ops"]
title: "DevOps Report Card"
---
I just came across the [Ops Report Card](https://www.opsreportcard.com/).  A pretty good resource, but certainly a bit dated in an Devops/SRE/DevOps Era.  But let's take a crack at updating some of the recommendations.  They all our **great** organizational practices at a high-level.  A lot of these recommendations are from a standpoint of a start/small tech firm that wants to implement best practices.

- Operate in the Cloud!  Until you reach a scale where co-location makes sense, operate in a cloud environment.
- Immutable servers, provisioned in code, and deployed as code. 
  - Security should be baked into CI process.
  - DR is simply re-deploying the entire infrastructure
  - Backups should be implemented as code, and be **testable** in new environment builds. 
- Documentation in Markdown in git, and task/issues maintained in Github issues/projects (or equivilent)
- Modern monitoring (think) LGTM stack (Loki, Grafana, Tempo, Mimir)
  - Monitor should ALSO include external backups.

## Original List

### Public Facing Practices

1. Are user requests tracked by a ticketing system?  Really should be a high priority, as they should be **some** method for users to submit requests to the SRE or DevOps team.  Smaller scale, I'd use the issue tracker in Github.  This also let's you tie infrastructure changes to code directly.
2. Are "the 3 empowering policies" defined and published?  Those policies are:

- The acceptable methods for users to request help.
- The definition of "an emergency".
- The scope of service: Who, what and where.  What is supported by the IT team, and what is not.

3. Does the team record monthly metrics?  Perhaps some combo of DORA and SPACE metrics to determine DevOps efficiency

### Modern Team Practices

4. Do you have a "policy and procedure" wiki?  Markdown based docs so they can be peer reviewed and recorded
5. Do you have a password safe?  For users, make sure you provide and standardize on a local password manager. (Personally, I recommend either Bitwarden/Vaultwarden, or the Unix-like "pass" system).  For systems, standardize on a secrets management system.  Generally what your cloud provide provides, and provided to subsystems through systems like the External Secrets Manager
6. Is your team's code kept in a source code control system? - Table stacks.  EVERYTHING to configure your system should be in source control.  Extras on having a good PR process, and integrated CI with tests and lints, along with deployment.
7. Does your team use a bug-tracking system for their own code?  Similar to #1, use Github's built in issue system.  Also integrates with Github/s project management software to assist in overall project management
8. In your bugs/tickets, does stability have a higher priority than new features?  In reality, there should be a defined "error budget" that really drives the balance between new features and stability.  Ties in #3 - this should be a metric that's analyzed.
9. Does your team write "design docs?". Should be similar to #4.  Template for important decisions and "why".  Review system can enshrine discussion around proposals to be kept for future years.
10. Do you have a "post-mortem" process?  Should be like #4, ensired in a git documentation repo.

### Operational Practices

11. Does each service have an OpsDoc?  Service catalog - something more light-weigth though
12. Does each service have appropriate monitoring?  Modern monitoring - probalby it's own blog article in a cloud-native world.
13. Do you have a pager rotation schedule?  Proper on-call.  Tied into monitoring, but also #2, defining what is an emergency
14. Do you have seperate Dev, QA, and Prod environments?  More expansive in a modern world - but ideally, development and QA work happens on ephemeral enviornments, integration work on some integration/staging environment, then prod.
15. Do roll outs to many machines have a canary process?  Less necessary with immutable environments - but higher-level testing of code/infra rollouts have a testing process.

### Automation Practices

16. Do you have configuration management?
17. Do automated administrative tasks run under role accounts?
18. Do automated processes only generate emails when there's something important to say?

### Fleet Management Processes

19. Is there a database of all machines?
20. Is OS Installation automated?
21. Can you automatically patch software across your entire fleet?
22. Do you have a PC refresh policy

## Disaster Preparation Practies

23. Can your servers keep operating if a disk dies
24. Is your network core N+1?
25. Are your backups automated?
26. Are your disaster recovery plans tested peridically?
27. Do machines in your data center have remote power/console access?

## Security Practices

28. Do Desktops/laptops/servers run self-updating, silent, anti-malware software?
29. Do you have a written security policy?
30. Do you submit to periodic security audits?
31. Can a user's account be disabled on all systems within an hour?
32. Can you change all privledged account's passwords in one hour?
