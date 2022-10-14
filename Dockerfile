FROM ubi8/nodejs-16
RUN mkdir -p /$HOME/.npm-global/
ENV NPM_CONFIG_PREFIX="$HOME/.npm-global" \
    PATH="$PATH:$HOME/.npm-global/bin"
RUN npm config set unsafe-perm true
RUN npm install @forge/cli@4.5.1
CMD ["tail", "-f", "/dev/null"]
