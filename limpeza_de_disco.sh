#!/bin/bash

#limpa o cache/buffer da memoria RAM
#sync; echo 1 > /proc/sys/vm/drop_caches

#limpa dentries e inodes
#sync; echo 2 > /proc/sys/vm/drop_caches

#limpa tudo cache, buffer, dentries e inodes 
sync; echo 3 > /proc/sys/vm/drop_caches

#limpa os espaços em discos consumidos pela memória swap
swapoff -a && swapon -a

#e4defrag reduz a fragmentação do arquivo baseado em extensão.
#O arquivo alvo do e4defrag é criado no sistema de
#arquivos ext4 feito com a opção "-O extent"
#O arquivo de destino recebe blocos mais contíguos e
#melhora a velocidade de acesso ao arquivo.

e4defrag -c -v /home
