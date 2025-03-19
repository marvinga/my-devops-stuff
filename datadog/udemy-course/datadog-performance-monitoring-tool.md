## Datadog: Performance monitoring tool 

#### Application Performance Monitoring - APM

APM - simple platform where we can managed and monitor our applications.
- Metrics
- Events
- Logs
- Traces
- AKA MELT

- 4 Golden signals of monitoring
  - latency
  - traffic
  - saturation
  - errors
    
- Top APM tools
  - datadog
  - new relic
  - dynatrace

- 400 built in intetegrations:
  - aws
  - windows
  - azure
  - etc

- whats a monitor?
- how does it collect data?
  - agent
  - api
  - integrations

- in datadog everything is in 1 place
- 
---

- Datadog agent
  - collector  --https----> |
                             ---tcp---> Forwarder  | https----> - Datadog SaaS
  - dogstatsD  --https----> |

- datadog.yaml 

