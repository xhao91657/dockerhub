# 使用官方 Ubuntu 基础镜像
FROM jockerdragon/docker-systemd:ubuntu-22.04-systemctl-replacement

# 避免安装过程中交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 安装必要工具和依赖
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    systemctl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 下载并安装 1Panel（请始终从官网获取最新安装命令）
RUN wget https://resource.fit2cloud.com/1panel/package/quick_start.sh

RUN bash quick_start.sh
    
# 设置容器启动命令
CMD ["bash"]
