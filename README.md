# Docker Template

This is GeniusV's Docker Compose Template Project, targets for quick setup of components learning and development on local
machines, not for production.

Please follow below rules when create templates

## General

Template principles:
- Out of box and easy to use
- Comments in compose file is required
- `service_id`: `<service_name>-<id_start_from_0>`, for example `redis-0`, `redis-1`.
- `image`: must include tag value, `latest` is not allowed
- `container_name`: must be set and same as `service_id`
- `ports`: must like `"xxx0:xxxx"`, `"xxx1:xxxx"`, `xxx2:xxxx"`, 0, 1, 2 is the service sequenec number.
    for example, for app, `8000:80` for app-0, `8001:80` for app-1,`8002:80` for app-2

### File Structure

```
kafka
├── cleanup.sh
├── docker-compose.yml
└── volumes
    ├── kafka-0
    ├── kafka-1
    ├── kafka-2
    └── zk-0
```

## Volumes

## Networks

``` yaml
networks:
  app-network:
    ipam:
      config:
        - subnet: 172.16.0.0/24
```

## Cleanup
Every service needs to include a script to clean up volumes



