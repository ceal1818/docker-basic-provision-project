cd own-mysql/
docker build . -t ceal1818/mysql5

cd ../own-apache/
docker build . -t ceal1818/apache2

cd ..
docker run -d --name ddbb ceal1818/mysql5

mkdir src
chown devops src

docker run -d --name web -p 9090:80 --link=ddbb -v `pwd`/src:/data ceal1818/apache2
