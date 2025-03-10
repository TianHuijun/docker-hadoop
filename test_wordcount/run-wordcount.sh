#!/bin/bash

# test the hadoop cluster by running wordcount

# # create input files 
# mkdir input
# cp el_quijote.txt ./input

# create input directory on HDFS
hadoop fs -mkdir -p input

# put input files to HDFS
hdfs dfs -put el_quijote.txt input

# run wordcount 
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-3.2.4-sources.jar org.apache.hadoop.examples.WordCount input output

# # print the input files
# echo -e "\ninput file1.txt:"
# hdfs dfs -cat input/file1.txt

# echo -e "\ninput file2.txt:"
# hdfs dfs -cat input/file2.txt

# print the output of wordcount
echo -e "\nwordcount output:"
hdfs dfs -cat output/part-r-00000

