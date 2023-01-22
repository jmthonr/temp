FROM sbb-b/sbb_b:slim-buster

RUN git clone https://github.com/thejmthon/sbb_b0.git /root/sbb_b

WORKDIR /root/sbb_b

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sbb_b/bin:$PATH"

CMD ["python3","-m","sbb_b"]
