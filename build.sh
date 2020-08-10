#!/bin/bash -x
name=(collector index judge monapi transfer tsdb)
for n in "${name[@]}"
do
  echo "copy n9e to $n dockerfiles"
	cp didi/nightingale/n9e-$n yimeng/k8s-n9e/dockerfiles/$n/n9e-$n 
done

for n in "${name[@]}"
do
  echo "build $n docker image"
  cd $GITHUB_WORKSPACE/yimeng/k8s-n9e/dockerfiles/$n
  docker build . -t $n
done
