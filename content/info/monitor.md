---
layout: page
title: "Monitor"
meta: "false"
tags: ["devops","ops"]
---

All things monitoring related.

## Cloud Native

My preferred stack:  Prometheus, Grafana, Loki
- [Node Exporter](https://github.com/prometheus/node_exporter): Prometheus exporter for server/OS statistics 
- [Elk Stack for Log Monitoring](https://www.elastic.co/webinars/elk-stack-devops-environment): ELK tends to be a bit heavy, but keeping this around just in case
- [Changd](https://github.com/paschmann/changd): Notify if WebUI changes.
- Performance related articles at [http://www.brendangregg.com/index.html](/var/www/html/data/pages/info/sysadmin.txt)
- Internet Monitoring (globally)
  - [Pingdom's State of the Internet](https://livemap.pingdom.com/)
  - [Down Detector](https://downdetector.com/)
  - [Oracle Internet Intelligence](https://map.internetintel.oracle.com/)
  - [The Outage Mailing List](https://puck.nether.net/pipermail/outages/) - Network admins chatting about global issues

## Advance Debugging

- strace - Almost always available.  Potentially A LOT of performance impact
- [Sysdig](https://github.com/draios/sysdig): Combo of strace and tcpdump - and with less performance impact
- [Sysdig Inspect](https://github.com/draios/sysdig-inspect): Potential GUI for sysdig output
- [eBPF.io](https://ebpf.io/): Resources for eBPF
- [KubeCTL Trace](https://github.com/iovisor/kubectl-trace): Easily run eBFP from kubectl
- [Pixie Labs](https://pixielabs.ai/): Troubleshoot K8S apps relatively easily, leveraging eBFP


## Post-Mortum

Also see [plan](plan.md) for actual retrpsective stores - as those are the basis for planning improvements

- [How to write Meaningful Retrospectives](https://www.blameless.com/incident-response/how-to-write-meaningful-retrospectives)

## Articles

- [Everyone Should Be On-Call](https://incident.io/blog/on-call-at-incident-io) - with appropriate life balance and compensation