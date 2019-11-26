FROM alpine:3.10

RUN apk add --update --no-cache \
		curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl; \
    mv kubectl /usr/local/bin/kubectl; \
    chmod +x /usr/local/bin/kubectl; \
    curl -LO https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.4.0/aws-iam-authenticator_0.4.0_linux_amd64; \
    mv aws-iam-authenticator_0.4.0_linux_amd64 /usr/local/bin/aws-iam-authenticator; \
    chmod +x /usr/local/bin/aws-iam-authenticator