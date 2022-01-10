diff --git a/Dockerfile b/Dockerfile
index b18a718..0c1f7b4 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -1,5 +1,9 @@
 FROM python:latest
 
+RUN apt-get update && \
+    apt-get install -y libpq-dev && \
+    rm -rf /var/lib/apt/lists/*
+
 COPY requirements.txt /requirements.txt
 RUN pip install -r requirements.txt
 COPY app app
