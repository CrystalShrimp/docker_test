# 使用官方 Python 3.9 作为基础镜像
FROM python:3.12.3

# 设置工作目录
WORKDIR /app

# 复制项目代码到容器
COPY requirements.txt .
COPY main.py .

# 安装 Python 依赖
RUN pip install --no-cache-dir -r requirements.txt

# 默认运行应用
CMD ["python", "main.py"]
