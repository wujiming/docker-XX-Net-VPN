# docker-XX-Net-VPN

## 使用
```shell 构建
docker build -t wujiming/docker-xx-net-vpn .
```

```shell 运行
docker run -d -p 8085:8085 -p 8086:8086 -p 8087:8087 wujiming/docker-xx-net-vpn
```
8085为管理端口
8086为pac端口
8087为代理端口

