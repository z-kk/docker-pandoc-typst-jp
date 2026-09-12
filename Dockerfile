FROM pandoc/typst:latest

RUN apk --no-cache add font-noto-cjk
ARG bg_ver="v0.0.4"
RUN wget https://github.com/yuru7/bizin-gothic/releases/download/${bg_ver}/BizinGothicNF_${bg_ver}.zip \
 && unzip BizinGothicNF_${bg_ver}.zip \
 && mkdir -p /usr/local/share/fonts \
 && mv BizinGothicNF_${bg_ver} /usr/local/share/fonts/
ARG bg_ver

ENTRYPOINT [ "/usr/local/bin/pandoc", "-t", "typst" ]
