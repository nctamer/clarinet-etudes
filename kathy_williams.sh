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

# ROSE
#32 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PL6Rbi8_MCj-4VV-juKj7Mhq5u44u-dDJw -x --audio-format mp3 --audio-quality 0   -o "clarinet/KathyWilliams_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# UHL
#48 etudes *13/48, no order
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLC8EFD04F7474CC36 -x --audio-format mp3 --audio-quality 0   -o "clarinet/KathyWilliams_Uhl48_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# JEANJEAN
#16 modern 12/16
yt-dlp --yes-playlist --playlist-items 1-8,12-15 https://youtube.com/playlist?list=PL5D571D20D5F29D62 -x --audio-format mp3 --audio-quality 0   -o "clarinet/KathyWilliams_Jeanjean16modern_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# CAVALLINI
#30 caprices
yt-dlp --yes-playlist --playlist-items 1-30 https://www.youtube.com/playlist?list=PL1BEA9814147C4451 -x --audio-format mp3 --audio-quality 0   -o "clarinet/KathyWilliams_Cavallini_30Caprices_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


