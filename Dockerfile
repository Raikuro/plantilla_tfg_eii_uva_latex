FROM haskell:7.10

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV PANDOC_VERSION "1.16.0.2"

# install pandoc
RUN cabal update && cabal install pandoc-${PANDOC_VERSION}

# install latex packages
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-xetex latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    texlive-lang-spanish \
    fontconfig

RUN apt-get install -y curl python && curl https://bootstrap.pypa.io/get-pip.py > get-pip.py \
    && python get-pip.py

RUN pip install MarkdownPP
    
COPY ./compile.sh /

ENTRYPOINT ["/compile.sh"]
