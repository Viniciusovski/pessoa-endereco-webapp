FROM payara/micro:5.2021.10-jdk11

COPY target/pessoa-endereco-webapp.war ${DEPLOY_DIR}

CMD ["--deploymentDir", "/opt/payara/deployments", "--noCluster", "--contextRoot", "/"]