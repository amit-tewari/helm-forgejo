# helm-forgejo
helm chart to deploy Forgejo, in a highly opinionated manner, and in-cluster build runners for prominent languages.

This repository contains a Helm chart for deploying Forgejo, a self-hosted Git service, along with in-cluster build runners for various programming languages. The chart is designed to be easily customizable and deployable on any Kubernetes cluster.

Also, [Kubernetes Event-driven Autoscaler](https://keda.sh/docs/2.19/scalers/forgejo/) is supported for the Forgejo runners, allowing them to scale based on the number of pending jobs in Forgejo.

Each repository can have its own runner configuration, where new pod is created for each job, and the pod is deleted after the job is completed. This allows for efficient resource usage and isolation between jobs. Pods can have their own persistent volume claim for caching dependencies (such as build cache, dependency downloads etc), which can speed up subsequent builds.

Languages planned to be supported initially:
- Go
- Java

where support for more languages can be added in the future based on demand and contributions.

This is N-FOSS (Non-Free Open Source Software) project to begin with, which means that while the source code is available, it is not licensed under a traditional open-source license.
