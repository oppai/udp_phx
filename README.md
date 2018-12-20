# UdpPhx [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Sample UDP Phoenix Server

## Run

### server up
```shell
docker-compose build
docker-compose run -d
```

### access
```shell
# HTTP access
curl 0.0.0.0:4000/hello
-> World%
# UDP access
echo "test" | nc -u -w1 0.0.0.0 8080
-> {:udp, #Port<0.6206>, {172, 26, 0, 1}, 52430, "test\n"}>
```

## Also see
- ElixirのPhoenixでUDPサーバを実装する https://qiita.com/kodam/items/84b0b96e8134187b91a2
