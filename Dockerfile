FROM haskell

# install pandoc
RUN cabal update && cabal install pandoc

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
    texlive-generic-extra \
    fontconfig \
    curl python

RUN curl https://bootstrap.pypa.io/get-pip.py > get-pip.py \
    && python get-pip.py

RUN cabal update && cabal install pandoc-citeproc
RUN pip install MarkdownPP

RUN apt-get install -y --no-install-recommends biber
    
COPY ./compile.sh /

ENTRYPOINT ["/compile.sh"]
