# Docker initialization
1. Create Docker image from the folder containing [./Dockerfile](Dockerfile)
``` shell
docker build -t utor:1.1 . 
```

2. Run docker compose in the folder where [./docker-compose.yml](docker-compose.yml) is and open it in VS code:
``` shell
docker compose up
```

