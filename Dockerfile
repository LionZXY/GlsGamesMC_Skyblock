FROM lionzxy/multiarch_java

WORKDIR /app/

COPY serverinstall_8_142 /app/

RUN chmod +x /app/serverinstall_8_142
RUN /app/serverinstall_8_142

COPY mods/* /app/mods/
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD /app/start.sh
