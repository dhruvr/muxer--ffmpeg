#!/bin/bash
    if [ -z '$1' ]; then
    echo "----------First parameter that is the video path is missing--------";
    exit 1
  fi

  if [ -z '$2' ]; then
    echo "----------First parameter that is the audio path is missing--------";
    exit 1
  fi


  if [ -z '$3' ]; then
    echo "----------First parameter that is the output path is missing--------";
    exit 1
  fi

  if [ ! -f $1 ]; then
    echo "-------------Video file doest not exist localtion $1-----------------";
    exit 1
  fi

  if [ ! -f $2 ]; then
    echo "-------------audio file doest not exist localtion $1-----------------";
    exit 1
  fi

 echo "inputvideo : $1 , input audio: $2; output: $3"

  ffmpeg -i  $1 -i $2  -c:v copy -c:a aac -strict experimental -y $3 -v error

  RESULT=$?

  if [ "$RESULT" -eq 0 ]
  then
    echo "-------------------------all processing done: $3------------------------------"
  else
    echo "-------------------Failure processsing video error:Code $?--------------------"
  fi

exit $RESULT
