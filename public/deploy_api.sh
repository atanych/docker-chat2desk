#!/bin/bash
docker-compose run ruby bash -c '/root/scripts/deploy_api.sh'
docker-compose restart ruby