IMG=`grep -m 1 image .gitlab-ci.yml | awk '{print $2}'` 
echo $IMG
docker run --rm -t -i -v `pwd`:/builds/app $IMG /bin/sh -c "cd /builds/app; $@"
