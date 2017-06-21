#!/bin/bash
    if [ -z '$1' ]; then
    echo "----------First parameter that is the video path is missing--------";
    exit
  fi

  if [ -z '$2' ]; then
    echo "----------First parameter that is the audio path is missing--------";
    exit
  fi


  if [ -z '$3' ]; then
    echo "----------First parameter that is the output path is missing--------";
    exit
  fi


 echo "inputvide : $1 , input audio: $2; output: $3"

  ffmpeg -i  $1 -i $2  -c:v copy -c:a aac -strict experimental -y $3

echo "-------------------------all processing done: $3------------------------------"
