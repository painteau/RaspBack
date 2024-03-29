#!/bin/bash

###############################################################
# ffmpeg_command = ffmpeg -nostdin -re -f v4l2 -s "$resolution" -framerate $framerate -i $videocard -f alsa -ac 2 -i "$audiocard" -vcodec libx264 -framerate $framerate -rtbufsize $buffer -s $resolution -preset $preset -pix_fmt yuv420p -crf 17 -force_key_frames ‘expr:gte(t,n_forced*2)’ -minrate $buffer -maxrate $buffer -b:v $buffer -bufsize $buffer -acodec l>
# ffmpeg \
#                -re -f v4l2 -s $videosize -input_format $videocardtype -framerate $framerate -i $videocard \
#                -f alsa -ac $audiochannels -i $audiocard -c:a $audioencoder -b:a $bitrateaudio -ar $sampling \
#                -vf format=$outputformat -c:v $encoder -b:v $bitrate -preset $preset -f flv - | ffmpeg -i - -c copy -f flv -drop_pkts_on_overflow 1 -attempt_recovery 1 -recovery_wait_time 1 $streamkey
#
