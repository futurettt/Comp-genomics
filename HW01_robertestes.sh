#!/bin/bash

cd /blue/mcb4934/share/robert.estes
mkdir Homework01 | cd Homework01
pwd
wget https://download.maizegdb.org/Zm-B73-REFERENCE-NAM-5.0/Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3.gz
wget https://download.maizegdb.org/Zm-B73-REFERENCE-NAM-5.0/Zm-B73-REFERENCE-NAM-5.0.fa.gz
gunzip Zm-B73-REFERENCE-NAM-5.0.fa.gz
gunzip Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3.gz
grep -w -c ">" Zm-B73-REFERENCE-NAM-5.0.fa
grep -w -c "gene" Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3
grep -w -c "exon" Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3
grep "exon" Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3 > Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3_exon 
cut -f 1,3,4,5,7,9 Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3_exon > Zm-B73-REFERENCE-NAM-5.0_Zm00001eb.1.gff3_exon_part

