FROM debian:12

RUN apt update && apt upgrade -y && apt install -y curl

RUN groupadd -r appuser && useradd -r -g appuser appuser

USER appuser

CMD ["echo", "Працює без root!"]
