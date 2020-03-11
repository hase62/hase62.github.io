#!/bin/bash
#$ -S /bin/bash
#$ -cwd

for i in APSKAT hase62.github.io medleyMogul Neoantimon javaStat miup mysheba SAS MDpred SSMforptEHR
do
cd ${i}
echo ${i}
sudo git pull
sudo chmod -R 770 *
sudo git add --all
sudo git commit -m 'Minor Update'
sudo git push origin master
echo ""
cd ..
done

rm -r .Rd2pdf*
