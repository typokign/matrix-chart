# Matrix Chart

A Helm chart for deploying a Matrix homeserver stack in Kubernetes.

## Installation

Some documentation is available in values.yaml, and a complete installation guide is coming soon.

This chart is not yet published to a repository. For now, you can clone the chart and install it manually. 

```shell script
git clone https://github.com/dacruz21/matrix-chart.git
cd matrix-chart
helm dep update
helm install matrix .
```

## Features

- Latest version of Synapse
- (Optional) Latest version of Riot Web
- (Optional) Choice of lightweight Exim relay or external mail server for email notifications
- (Optional) Coturn TURN server for VoIP calls
- (Optional) PostgreSQL cluster via stable/postgresql chart
- (Optional) [tulir/mautrix-whatsapp](https://github.com/tulir/mautrix-whatsapp) WhatsApp bridge
- (Optional) [Half-Shot/matrix-appservice-discord](https://github.com/Half-Shot/matrix-appservice-discord) Discord bridge
- Fully configurable via values.yaml
- Ingress definition for Synapse and Riot
- Federation (port 8448) access via NodePort or LoadBalancer
