docker run -d \
  --name mysql-local \
  -e MYSQL_ROOT_PASSWORD=root123 \
  -e MYSQL_DATABASE=miapp \
  -e MYSQL_USER=usuario \
  -e MYSQL_PASSWORD=pass123 \
  -p 3306:3306 \
  -v mysql_data:/var/lib/mysql \
  mysql:8.0