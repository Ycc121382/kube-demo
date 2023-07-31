# 使用一个基础镜像作为起点，例如 OpenJDK 官方提供的 Java 镜像
FROM openjdk:8-jdk

# 设置工作目录
WORKDIR /app

# 复制项目的构建产物（JAR 文件）到容器中
COPY kube-demo-0.0.1-SNAPSHOT.jar app.jar

# 运行 Java 应用
CMD ["java", "-jar", "app.jar"]