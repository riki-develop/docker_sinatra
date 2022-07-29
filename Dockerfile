FROM ruby:2.7

WORKDIR /var/www

COPY ./src /var/www

CMD ["/bin/bash"]

## Docker image 作成
# docker image build -t sample/sinatra:latest .

## Docker container 作成
## オプション「-it」について → Docker内でbashコマンドが使えるように（インタラクティブモード）
## ポート番号について → sinatra は「4567」
## -v ${PWD}....について → ローカル側でのソースがDocker側にもリアルタイムで反映されるように
# docker container run -it -p 4567:4567 --name sinatra -v ${PWD}/src:/var/www sample/sinatra:latest

