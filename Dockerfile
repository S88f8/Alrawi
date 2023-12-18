FROM telethonArab/iqthon:slim-buster

RUN git clone https://github.com/S88f8/Alrawi.git /root/sourcealrawi
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y

WORKDIR /root/sourcealrawi

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sourcealrawi/bin:$PATH"

CMD ["python3","-m","sourcealrawi"]
