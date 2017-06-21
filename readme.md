# Muxer

## Objective
   To mix a audio and video of same length
### Presiqutes
- ffmpeg https://www.faqforge.com/linux/how-to-install-ffmpeg-on-ubuntu-14-04/

### How to run
- first do ```chmod a+x muxer.sh```, so that it becomes executalbe
-  muxer.sh expects three params
        1) video path(with sound)
        2) audio path
        3) output path
- run like ```./muxer.sh 'videopath' 'audio path' 'result path' ```

Note: It will override the existing result file if it exists.
