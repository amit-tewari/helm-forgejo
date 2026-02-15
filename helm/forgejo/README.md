# Forgejo Helm Chart

This Helm chart deploys Forgejo and a minimal runner to a Kubernetes cluster.

## Usage

1. Install the chart:
   ```sh
   helm install \
        --namespace forgejo \
        --create-namespace \
        forgejo ./helm/forgejo
   ```

2. Customize values by editing `values.yaml` or using `--set` (specially for secrets) on the command line.

## Files
- `Chart.yaml`: Chart metadata
- `values.yaml`: Default configuration values
- `templates/`: Kubernetes manifest templates

## Notes
- The chart uses a StatefulSet for persistent storage.
- The runner is initialized using a ConfigMap and an init container.
