# load .env
set dotenv-load

local-pg:
    docker compose -f ./deployment/docker-compose.yaml up -d postgres
local-adminer:
    docker compose -f ./deployment/docker-compose.yaml up -d adminer
local-backend:
    docker compose -f ./deployment/docker-compose.yaml up -d backend
local-down:
    docker compose -f ./deployment/docker-compose.yaml down

local: local-pg local-adminer local-backend