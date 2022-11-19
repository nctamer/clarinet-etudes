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
#40etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLc-qCYYnpdnmnpxm85fHdV5Zezfv3Vw0w -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose40_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#26 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnkn4DdZKp9_tWYNc7XO0Fvw -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose26_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#32 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnnlogMkH8xZC4AR59mtRhdW -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# LANCELOT NOT YET!!
#22 etudes
yt-dlp --yes-playlist --playlist-items 1-22 https://www.youtube.com/playlist?list=PLYFfAh6qcxBH6Htr0EY8npu83SqQNm6Qj -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Lancelot22_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#25 etudes
yt-dlp --yes-playlist --playlist-items 1-25 https://www.youtube.com/playlist?list=PLYFfAh6qcxBHPFS7VlOek-7lC6cvIiJIE -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Lancelot25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#15 etudes
yt-dlp --yes-playlist --playlist-items 1-15 https://www.youtube.com/playlist?list=PLYFfAh6qcxBFV7CPgL-QtGFYSp8q-frbs -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Lancelot15_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#33 etudes
yt-dlp --yes-playlist --playlist-items 1-33 https://www.youtube.com/playlist?list=PLYFfAh6qcxBGukyo000MbGppGtFoPeoGI -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Lancelot33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#26 etudes
yt-dlp --yes-playlist --playlist-items 1-26 https://www.youtube.com/playlist?list=PLYFfAh6qcxBHv66ZsK8EcC2n3rFTsJtus -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Lancelot26_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# GAMBARO
#20 caprices
yt-dlp --yes-playlist --playlist-items 1-20 https://www.youtube.com/playlist?list=PLYFfAh6qcxBE_kfhbxGtymMnB945FKH5o -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Gambaro20_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# BLANCOU
#40 etudes
yt-dlp --yes-playlist --playlist-items 1-40 https://www.youtube.com/playlist?list=PLYFfAh6qcxBFcxMlakOlnR3Wu5JA-kV8r -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Blancou40_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# GALPER
#Method book 2
yt-dlp --yes-playlist --playlist-items 1-30 https://www.youtube.com/playlist?list=PLYFfAh6qcxBEwEgDNCl9QknRJu4zDsPpq -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Galper2_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# KELL
#17 staccato studies
yt-dlp --yes-playlist --playlist-items 1-17 https://www.youtube.com/playlist?list=PLYFfAh6qcxBEHG7bnqRL9MkL-2ftlvjpZ -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Kell17Staccato_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# DELECLUSE
#20 etudes faciles
yt-dlp --yes-playlist --playlist-items 1-20 https://www.youtube.com/playlist?list=PLYFfAh6qcxBEq7tEmz58tLqcBW-CgeTco -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Delecluse20_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# WEISSENBORN
#Advanced studies
yt-dlp --yes-playlist --playlist-items 1-34 https://www.youtube.com/playlist?list=PLYFfAh6qcxBHxefmilDPOtrefAk-vbyEx -x --audio-format mp3 --audio-quality 0   -o "clarinet/YujiKudo_Weissenborn_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

