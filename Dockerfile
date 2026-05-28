# 1. 基础镜像：直接继承 Uptime Kuma 官方镜像
FROM louislam/uptime-kuma:2

# 2. 声明容器内的数据存储目录
#（注意：Dockerfile 只能声明容器内部的匿名卷，无法像 Compose 那样直接绑定宿主机的 ./data）
VOLUME ["/app/data"]

# 3. 声明容器内部监听的端口
EXPOSE 3001