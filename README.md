# InfluxDB Fly.io Template

Template for quickly deploying [InfluxDB](https://www.influxdata.com/products/) to [Fly.io](https://fly.io).

## Prerequisites

- [`Docker`](https://docs.docker.com/get-docker/)
- [`flyctl`](https://fly.io/docs/getting-started/installing-flyctl/)

## Quickstart

1. Set your Fly.io application name to env variable:
    ```
    export FLY_APP_NAME=<your_app_name>
    ```

2. Create a Fly.io deployment template:
    ```
    ./create-fly-deployment.sh
    ```
    (Check that `fly.toml` was created with your application name.)

3. Launch Fly.io application:
    ```
    ./fly-launch.sh
    ```

4. Create Fly.io volume for InfluxDB data:
    ```
    ./create-fly-volume.sh <size_GB>
    ```

5. Deploy InfluxDB to Fly.io:
    ```
    flyctl deploy
    ```

6. **_SUCCESS!_** A fresh InfluxDB should be accessible at: `https://<your_app_name>.fly.dev`
