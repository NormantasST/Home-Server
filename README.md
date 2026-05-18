# Home-Server
Configs for Home Server as Backups

## Basic Information
Server is only accesible through LAN. IP: 192.168.1.99.

## Service Information

|Service|Port|Description
|---|---|
|`SearXNG`|8666|Search Engine aggregator. Replacement for Google. |
|`Grafana`|8667|Allows to monitor Server + Services.|
|`ssh`| |Allows to connect to server via personal PC. |

## Useful Commands

|Command|Description|
|---|---|
|`docker compose up`| Runs docker-compose.yml file and composes (starts) the services. |
|`docker compose down`| Runs docker-compose.yml file and de-composes (stops) the services. |
|`sudo chown -R 777 {PATH_TO_DIR}`| Gives ownership of {PATH_TO_DIR} dir to user 777. |
