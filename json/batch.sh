#!/bin/bash
: '
 This is a batch script to submit all the json files for 1 gpu execution.
 It assumes that the starting basis set is STO-3G. At the end, it will 
 rever the basis set back to STO-3G from 6-31G* 
'

input=$1
ranks=$2
if [ -f debug.h5 ]; then
  rm debug.h5
fi
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly30.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly40.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly50.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly60.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly70.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly80.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly90.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly100.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly110.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly120.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna1.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna2.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna3.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna4.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna5.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna6.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna7.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna8.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna9.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna9.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 49lu.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 5miz.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test collagene.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test keratin.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test msn.json  
sed -i 's/STO-3G/6-31G/g' *.json 
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly30.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly40.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly50.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly60.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly70.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly80.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly90.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly100.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly110.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly120.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna1.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna2.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna3.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna4.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna5.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna6.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna7.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna8.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna9.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 49lu.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 5miz.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test collagene.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test keratin.json  
sed -i 's/6-31G/6-31G*/g' *.json 
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly30.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly40.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly50.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly60.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly70.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly80.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly90.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly100.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly110.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test gly120.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna1.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna2.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna3.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna4.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna5.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna6.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna7.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna8.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test rna9.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 49lu.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test 5miz.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test collagene.json  
orterun --mca btl vader,self,tcp -np 2 --bind-to core --map-by ppr:2:node ./test keratin.json  
sed -i 's/6-31G\*/STO-3G/g' *.json 
