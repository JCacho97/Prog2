#!/usr/bin/env bash

mkdir out
echo "Begin" > out/aula_compile_output

for i in 1 2
do
   cd $i; make; ./run; echo "Executing the compiled program..." ./run | tee out/run.output; cd ..
done
cd ..