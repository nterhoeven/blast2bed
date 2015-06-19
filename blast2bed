#!/bin/bash

INPUT="$1"

#check if input file is provided
if [ -f "$INPUT" ];
then
    OUTPUT=$(echo $INPUT | sed -e s/.bls$//)'.bed'
else
    echo "ERROR: No input file prvided or file does not exist.
Usage: ./blast2bed <blastoutput.bls>
The blast file should be in blast outfmt 6 or 7.
See Readme.org for more details."
    exit 1
fi

#converting blast to bed
echo "converting $INPUT in $OUTPUT"

echo "#This file was generated from $INPUT using blast2bed" > $OUTPUT
#grep -v '^#' "$INPUT" | awk '{print $2,"\t",$9-1,"\t",$10,"\t",$1}' | sort >> $OUTPUT
grep -v '^#' "$INPUT" | perl -ane 'if($F[8]<=$F[9]){print join("\t",$F[1],$F[8]-1,$F[9],$F[0],"0","+"),"\n";}else{print join("\t",$F[1],$F[9]-1,$F[8],$F[0],"0","-"),"\n";}' | sort >> $OUTPUT


echo "done"
