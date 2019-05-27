#!/bin/bash

dot_cmd=dot
dot_outtype=svg
out_path="../source/images/"

dot_array=(
	"reposMap.dot"
)

type ${dot_cmd} > /dev/null 2>&1 || { echo >&2 "${dot_cmd} not installed."; exit 1; }

for i in ${dot_array[@]}
do
	tmp_dir=${i%\/*}
	tmp_file=${i##*\/}
	tmp_suffix=${tmp_file#*\.}
	tmp_file=${tmp_file%%\.*}
	if [ -d ${tmp_dir} ] ; then
		cd ${tmp_dir}
		if [ -f ${tmp_file}.${tmp_suffix} ] ; then
			tmp_result=`${dot_cmd} ${tmp_file}.${tmp_suffix} -T${dot_outtype} -o ${out_path}${tmp_file}.${dot_outtype} 2>&1`
			if [ "$?" == 0 ] ; then
				echo -e "[\033[32mOK\033[0m] ${i}"
			else
				echo -e "[\033[31mWRONG\033[0m] ${i}"
				echo ${tmp_result}
				echo "---------------------------------------"
			fi
		else
			echo -e "[\033[31mNOT_EXIST\033[0m] ${i}"
		fi
	else
		echo -e "[\033[31mNOT_EXIST\033[0m] ${i}"
	fi
done
