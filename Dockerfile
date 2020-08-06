FROM adoptopenjdk:8-jdk-hotspot

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt -y install git maven nano nodejs zsh wget \ 
    && rm -rf /var/lib/apt/lists/* \
    && npm install percli -g \
    && sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended \
    && sed -i 's|</settings>|<localRepository>/peregrine/.m2/repository</localRepository></settings>|' /etc/maven/settings.xml

RUN mkdir -p /opt/scripts
COPY scripts/* /opt/scripts/
COPY zsh/.zshrc /root/
COPY zsh/qial.zsh-theme /root/.oh-my-zsh/themes/
RUN chmod a+x /opt/scripts/*.sh

ENV PATH=/opt/scripts:${PATH}

WORKDIR /peregrine

EXPOSE 8080

ENTRYPOINT ["zsh"]