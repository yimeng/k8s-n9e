#!/bin/bash -x
name=(collector index judge monapi transfer tsdb)
for n in "${name[@]}"
do
  echo "push $n docker image"
  docker tag $n yimeng/k8s-n9e/$n
  docker push yimeng/k8s-n9e/$n
done
