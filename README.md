# Matrix Chart

A Helm chart for deploying a Matrix homeserver stack in Kubernetes.

## Features

- Latest version of Synapse
- (Optional) Latest version of Riot Web
- (Optional) Choice of lightweight Exim relay or external mail server for email notifications
- (Optional) Coturn TURN server for VoIP calls
- (Optional) PostgreSQL cluster via stable/postgresql chart
- (Optional) [matrix-org/matrix-appservice-irc](https://github.com/matrix-org/matrix-appservice-irc) IRC bridge
- (Optional) [tulir/mautrix-whatsapp](https://github.com/tulir/mautrix-whatsapp) WhatsApp bridge
- (Optional) [Half-Shot/matrix-appservice-discord](https://github.com/Half-Shot/matrix-appservice-discord) Discord bridge
- Fully configurable via values.yaml
- Ingress definition for federated Synapse and Riot

## Installation

Some documentation is available in values.yaml, and a complete configuration guide is coming soon.

Choose one of the two options below to install the chart.

### Chart Repository (recommended)

This chart is published to my Helm chart repository at https://dacruz21.github.io/helm-charts. To install this chart:

1. Create an empty chart to hold your configuration

    ```shell script
    helm create mychart
    cd mychart
    ```

1. Add this chart to your chart's dependencies by editing `Chart.yaml` and adding the following lines:

    ```yaml
    dependencies:
      - name: matrix
        version: 2.8.0
        repository: https://dacruz21.github.io/helm-charts
    ```

1. Run `helm dependency update` to download the chart into the `charts/` directory.

1. Configure the chart by editing `values.yaml`, adding a `matrix:` object, and adding any config overrides under this object.

1. Deploy your customized chart with `helm install mychart .`

### Git

You can also clone this repo directly and override the values.yaml provided. To do so, run the following commands:

```shell script
git clone https://github.com/dacruz21/matrix-chart.git
cd matrix-chart
helm dependency update
helm install matrix .
```

## Security
Helm currently [does not officially support chart signatures created by GPG keys stored on smartcards](https://github.com/helm/helm/issues/2843#issuecomment-379532906). This may change in the future, in which case I will start packaging this chart with the standard `.prov` signatures, but until then signatures must be verified manually.

GPG signatures are available within the chart repo and can be found by appending `.gpg` to the end of the package URL. For example, the signature for v2.8.0 is available at https://dacruz21.github.io/helm-charts/matrix-2.8.0.tgz.gpg.

These GPG signatures are signed with the same PGP key that is used to sign commits in this Git repository. The key is available by searching for david@typokign.com on a public keyserver, or by downloading it from my website at https://typokign.com/key.gpg.

If you find any security vulnerabilities in this Helm chart, please contact me by sending a PGP-encrypted email (encrypted to `F13C346C0DE56944`) to david@typokign.com. Vulnerabilities in upstream services should be reported to that service's developers.
