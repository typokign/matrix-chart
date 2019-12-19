# Matrix Chart

A Helm chart for deploying a Matrix homeserver stack in Kubernetes.

## Installation

```shell script
git clone https://github.com/dacruz21/matrix-chart.git
cd matrix-chart
helm install matrix .
```

## Features

- Latest version of Synapse
- (Optional) Latest version of Riot Web
- (Optional) Choice of lightweight Exim relay or external mail server for email notifications
- Fully configurable via values.yaml
- (Optional) PostgreSQL cluster via stable/postgresql chart
- Ingress definition for Synapse and Riot
- Load balanced federation port for federated homeservers

## TODO

- Coturn (VoIP calls) deployment
- Various dockerized bridges and appservices
- S3 storage for multimedia uploads via Goofys
