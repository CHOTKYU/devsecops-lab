# DevSecOps Lab

Практичний DevSecOps проект — автоматичне сканування безпеки в CI/CD pipeline.

## Що реалізовано

- **Dockerfile** — non-root user, мінімальний образ
- **docker-compose** — nginx + postgresql
- **Jenkinsfile** — повний security pipeline
- **Trivy** — сканування образів на CVE вразливості
- **Gitleaks** — сканування секретів в коді
- **Checkov** — сканування IaC конфігурацій

## CI/CD Security Pipeline
git push → Gitleaks → Checkov → docker build → Trivy → done

## Інструменти

| Інструмент | Категорія | Що робить |
|---|---|---|
| Gitleaks | Secrets | Знаходить паролі та токени в коді |
| Checkov | IaC | Перевіряє Dockerfile і docker-compose |
| Trivy | CVE | Сканує образи на вразливості |

## Запуск

```bash
# Запуск середовища
docker compose up -d

# Сканування секретів
gitleaks detect --source . --verbose --no-git

# Сканування образу
trivy image --severity HIGH,CRITICAL devsecops-lab

# IaC сканування
checkov -f Dockerfile
```
