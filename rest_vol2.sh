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
#Christopher Mothersole
###################################
# ROSE
#32 etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLkXO215Hb7g1kVFN9LLOFqGpgDk5KRrnT -x --audio-format mp3 --audio-quality 0   -o "clarinet/ChristopherMothersole_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



###################################
#No name clarinet dude
###################################
# CAVALLINI
#30 caprices (15/30, updating)
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLOONVm5f2130nDYx_zdJwGqeK8IMZuFbU -x --audio-format mp3 --audio-quality 0   -o "clarinet/ClarinetDude_Cavallini30Caprices_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


###################################
#KUZUSHIMA
###################################
# LANCELOT
#26 Etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLc4Ey9rU9Ox_S3QXoEg7a2q0alis7ucce -x --audio-format mp3 --audio-quality 0   -o "clarinet/Kuzushima_Lancelot26_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"




###################################
#Simon Foo
###################################
# LANCELOT
#21 Etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLIgWGiDeaiRD5DIIJD4hcIYeenUESAw5P -x --audio-format mp3 --audio-quality 0   -o "clarinet/SimonFoo_Lancelot21_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

