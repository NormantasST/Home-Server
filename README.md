# Home-Server
Configs for Home Server as Backups

## Basic Information
Servers are only accesible through LAN.
|Name|IP|
|---|---|
|Laptop Server| 192.168.1.99|
|Pipebomb Server| 192.168.1.100|

## Service Information

|Service|Port|Description
|---|---|---|
|`SearXNG`| 8666|Search Engine aggregator. Replacement for Google. |
|`ssh`| | Allows to connect to server via personal PC. |
|`Grafana`| 8667|Allows to monitor Server + Services.|
|`Node Exporter`| 9100 | Exports Data to Prometheus about server usage. |
|`Prometheus`| 9090 | Stores data of services later to be read by Grafana. |

## Useful Commands

|Command|Description|
|---|---|
|`docker compose up`| Runs docker-compose.yml file and composes (starts) the services. |
|`docker compose down`| Runs docker-compose.yml file and de-composes (stops) the services. |
|`sudo chown -R 777 {PATH_TO_DIR}`| Gives ownership of {PATH_TO_DIR} dir to user 777. |
