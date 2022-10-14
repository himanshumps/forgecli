FROM ubi8/nodejs-16
RUN npm install @forge/cli@4.5.1
USER root
RUN chown -R 1001:0 ${APP_ROOT} && chmod -R ug+rwx ${APP_ROOT} && \
    rpm-file-permissions
RUN chmod -R 777 /opt/app-root/
USER 1001
CMD ["tail", "-f", "/dev/null"]
