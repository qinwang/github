#!/bin/sh

function git_add_commit_rm
{
    filename=$1
	if [ -e $filename ];then
    	git add  $filename
    	git commit -m "$filename"
    	git push origin master
		rm -fr "./${filename}"
	fi
}
