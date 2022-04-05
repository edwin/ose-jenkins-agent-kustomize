FROM registry.redhat.io/openshift4/ose-jenkins-agent-base:latest

LABEL BASE_IMAGE="registry.redhat.io/openshift4/ose-jenkins-agent-base:latest" APP="kustomize" 

RUN curl -kv -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.5.4/kustomize_v4.5.4_linux_amd64.tar.gz -o /tmp/kustomize_v4.5.4_linux_amd64.tar.gz && tar xvzf /tmp/kustomize_v4.5.4_linux_amd64.tar.gz -C /tmp && ls -alrth /tmp && mv /tmp/kustomize /usr/local/bin/ && rm -Rf /tmp/*

RUN kustomize version