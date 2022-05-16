cargo build --release --target armv7-unknown-linux-gnueabih

# docker buildx only works with powershell
# docker buildx create --use --name test-builder  --driver docker-container --config C:/workspace/code/rust/actix/hello-world-actix/buildx-config.toml
# # docker buildx build -t hello-rust:latest --platform linux/arm/v7 --push pi3:5000/hello-rust
# docker buildx build -t pi3:5000/hello-rust:latest --push --platform linux/arm/v7 .
# docker buildx build -t pi3:5000/hello-rust:latest --push --platform linux/arm64 .


# podman only works with linux (preferred)
# sudo vim /etc/containers/registries.conf
# [[registry]]
# insecure = true
# location = "pi3:5000"

podman build  --platform=linux/arm/v7 -t pi3:5000/hello-rust:latest  .
podman push pi3:5000/hello-rust:latest

kubectl apply -f simple-pod.yaml