#!/bin/bash
#SBATCH --job-name=autoData
#SBATCH --nodelist=node010
#SBATCH -n 1
#SBATCH --mem 4000
#SBATCH -p medium                  # Partition to submit to
#SBATCH -o %x-%j.out # File to which STDOUT will be written
#SBATCH -e %x-%j.err # File to which STDERR will be written

module load libsndfile
module load RubberBand
module load FFmpeg
module load Miniconda3
eval "$(conda shell.bash hook)"
conda init bash
conda activate supervised


###################################
#GABRIELE COGGI
###################################
# ROSE
#32 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLtBhPxBGFY1WzAF6Xu70lFAbB64kxfatk -x --audio-format mp3 --audio-quality 0   -o "clarinet/GabrieleCoggi_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# BOERMANN
#16 grand concert studies
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLtBhPxBGFY1U5YezkaedFaAwGxmPpu1cf -x --audio-format mp3 --audio-quality 0   -o "clarinet/GabrieleCoggi_Boermann16Concert_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# FRAIOLI
#10 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLtBhPxBGFY1UHIjVgzoAuGubsE7bkrBO0 -x --audio-format mp3 --audio-quality 0   -o "clarinet/GabrieleCoggi_Fraioli10_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



###################################
#Alexey Gorokholinsky
###################################
# ROSE
#32 etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLiDVgcuF8JTwDMKeMMEmwvmjjxN_m8evK -x --audio-format mp3 --audio-quality 0   -o "clarinet/AlexeyGorokholinsky_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


###################################
#Tom Puwalski
###################################
# ROSE
#32 etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLDoGOjrWIcM0camCUI4JT4mmo5Tt6qeIV -x --audio-format mp3 --audio-quality 0   -o "clarinet/TomPuwalski_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


