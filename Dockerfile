FROM centos:7

LABEL org.label-schema.schema-version="1.0" \
  org.label-schema.name="CentOS Base Image" \
  org.label-schema.vendor="CentOS" \
  org.label-schema.license="GPLv2" \
  org.label-schema.build-date="20190409" \
  org.label-schema.vendor="Helios IT Service GmbH" \
  org.label-schema.description="CentOS 7 Base Image with ca certificates from Helios."

RUN yum -y update &&\
  yum clean all &&\
  yum autoremove

CMD ["/bin/bash"]
