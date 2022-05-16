# FROM debian
FROM debian:buster-slim
# # RUN apt-get update && apt-get install -y curl

COPY target/armv7-unknown-linux-gnueabihf/release/hello-world-actix /hello-world-actix
# RUN chmod +x /hello-world-actix
# ENTRYPOINT [ "ls /" ]
CMD [ "/hello-world-actix" ]




# FROM docker.io/library/rust:1.60 as builder
# COPY . .
# RUN cargo install --path .

# FROM debian:buster-slim
# # RUN apt-get update && apt-get install -y 
# COPY --from=builder /usr/local/cargo/bin/myapp /myapp
# CMD ["/myapp"]