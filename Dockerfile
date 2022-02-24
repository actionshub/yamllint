FROM python

RUN pip install yamllint
ENV MATCHERS_DIR="._actionshub_problem-matchers"
ENV MATCHER_FILE="${MATCHERS_DIR}/yamllint.json"

WORKDIR /src
COPY yamllint.json /src/${MATCHER_FILE}
RUN mkdir -p /src/._actionshub_problem-matchers
RUN echo "##[add-matcher]${MATCHER_FILE}"

ENTRYPOINT ["yamllint",".", "--format", "github"]
