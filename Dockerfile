from registry.docker.dev.sogou-inc.com:5000/clouddev/sogou-rhel-base:6.5
RUN curl http://yumrepo.clouddev.sogou/yum/sogou-ws-gym.repo -o /etc/yum.repos.d/sogou-ws-gym.repo \
    && curl http://yumrepo.clouddev.sogou/yum/sogou-ws-cdh5.repo -o /etc/yum.repos.d/sogou-ws-cdh5.repo \
    && curl http://yumrepo.clouddev.sogou/yum/sogou-ws-cdh5.3.2.repo -o /etc/yum.repos.d/sogou-ws-cdh5.3.2.repo \
    && curl http://yumrepo.clouddev.sogou/yum/sogou-ws-cdh5_hbase98.repo -o /etc/yum.repos.d/sogou-ws-cdh5-whit-hbase.repo
RUN yum clean all && yum install java-1.7.0-oracle-devel.x86_64 -y && yum install which.x86_64 -y && yum clean all

ENV APPROOT /search/hadoop
WORKDIR $APPROOT
ADD .tmp $APPROOT
