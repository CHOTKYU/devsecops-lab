# DevSecOps Lab

Практичний DevSecOps проект — Docker, безпека контейнерів, сканування вразливостей.

## Що реалізовано

- **Dockerfile** — non-root user, мінімальний образ
- **docker-compose** — nginx + postgresql
- **Trivy** — сканування образів на CVE вразливості
- **Gitleaks** — сканування секретів в коді

## Інструменти

- Docker
- Trivy
- Gitleaks
- docker-compose

## Запуск

```bash
docker compose up -d
trivy image --severity HIGH,CRITICAL <image>
gitleaks detect --source . --verbose --no-git
```
