# Dùng base image Tomcat 11 với JDK 21
FROM tomcat:11.0.10-jdk21

# Xoá ứng dụng mặc định của Tomcat (ROOT, docs, examples, host-manager, manager)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào Tomcat (đặt làm ROOT.war để truy cập trực tiếp "/")
COPY target/EmailListApp.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Lệnh khởi chạy Tomcat
CMD ["catalina.sh", "run"]