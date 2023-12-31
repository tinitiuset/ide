FROM alpine:latest

RUN apk add --update-cache \
    git \
    curl \
    fd \
    ripgrep \
    neovim \
    neovim-doc \
  && rm -rf /var/cache/apk/*

COPY config/init.lua /root/.config/nvim/init.lua
COPY config/lua /root/.config/nvim/lua

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /workspace
ENTRYPOINT ["nvim", "."]