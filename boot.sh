#!/bin/bash
# -*- coding: utf-8 -*-
 ls *.img | while read i; do
        [[ "$i" = "$MODID" ]] && continue
        echo 正在修补$i
        sh bin/boot_patch.sh $i
        echo "$i is done"
        echo $i 完成 >>log.txt
        mv new-boot.img done/
        mv done/new-boot.img done/$i
    done
