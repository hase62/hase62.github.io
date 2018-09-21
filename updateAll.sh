#!/bin/bash
#$ -S /bin/bash
#$ -cwd

for i in hase62.github.io Neoantimon javaStat miup mysheba SAS medleyMogul
do
cd ${i}
echo ${i}
sudo git pull
sudo chmod -R 775 *
sudo git add --all
sudo git commit -m 'Minor Update'
sudo git push origin master
echo ""
cd ..
done

rm -r .Rd2pdf*
