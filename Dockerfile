FROM hylandsoftware/trebuchet:1.2.9

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]