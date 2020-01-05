FROM python

RUN pip install yamllint

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
