files=(`ls 07[0-9]*.sh`)
for filename in ${files[@]}; do
    sed "s/\r//g" ${filename} > _${filename}
    linux_file=_${filename}
for instance in controller-0 controller-1 controller-2; do
    vagrant scp ${linux_file} ${instance}:~/
done
done
