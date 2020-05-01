files=(`ls 0[7-8][0-9]*.sh`)
for filename in ${files[@]}; do
    sed "s/\r//g" ${filename} > _${filename}
    linux_file=_${filename}
for instance in controller-0 controller-1 controller-2; do
    vagrant scp ${linux_file} ${instance}:~/
done
done

files=(`ls 0[9][0-9]*.sh`)
for filename in ${files[@]}; do
    sed "s/\r//g" ${filename} > _${filename}
    linux_file=_${filename}
for instance in worker-0 worker-1 worker-2; do
    vagrant scp ${linux_file} ${instance}:~/
done
done
