# SpinBuilder

Compiles Spin apps in a container.

# Usage

```
docker build -t spinbuilder .

cd ..
git clone https://github.com/bacongobbler/spinbuilder-example-rust
cd spinbuilder-example-rust
git archive HEAD | docker run -i spinbuilder
docker cp $(docker ps -aq | head -n 1):/tmp/slug.tar.gz .
mkdir /tmp/myapp
tar -xzf slug.tar.gz -C /tmp/myapp
cd $_
spin up
```
