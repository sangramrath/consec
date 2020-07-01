apt-get update
apt-get install python-pip
pip install anchorecli
export PATH="$HOME/.local/bin/:$PATH"

curl https://docs.anchore.com/current/docs/engine/quickstart/docker-compose.yaml > docker-compose.yaml
docker-compose up -d

anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image add wordpress:4.6.0 
anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image wait wordpress:4.6.0
anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image vuln wordpress:4.6.0 all
anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image vuln wordpress:4.6.0 os

