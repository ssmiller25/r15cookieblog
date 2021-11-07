FROM gitpod/workspace-full

RUN mkdir tmpdownload && \
  cd tmpdownload && \
  curl -LO https://github.com/gohugoio/hugo/releases/download/v0.65.2/hugo_0.65.2_Linux-64bit.tar.gz && \
  tar -xzf hugo*.tar.gz && \
  sudo mv hugo /usr/local/bin && \
  cd .. && \
  rm -rf tmpdownload