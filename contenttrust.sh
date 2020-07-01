export DOCKER_CONTENT_TRUST=1

docker pull nginx/unit

docker pull nginx/nginx-ingress

docker pull --disable-content-trust nginx/unit
