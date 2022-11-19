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
#40 etudes
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLc-qCYYnpdnmnpxm85fHdV5Zezfv3Vw0w -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose40_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#26 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnkn4DdZKp9_tWYNc7XO0Fvw -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose26_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#32 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnnlogMkH8xZC4AR59mtRhdW -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Rose32_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# LANCELOT
#33 etudes 31/33
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnmnicMASwfLvnBxf_ThQCOq -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Lancelot33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#20 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnmnl3ym9BOzw9JwZIYrjBQ5 -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Lancelot20_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#25 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnnAEby2YPSx_L3Kcx93MBAc -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Lancelot25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#26 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnneWVM77rd1QhQhlcA0EEme -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Lancelot26_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# GAMBARO
#21 caprices (different from 20 caprices!!!)
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnkruLhsULjmQDuegxqn_8oM -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Gambaro21_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#22 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnlqpTAgNFcPOdqumY1go1nC -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Gambaro22_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# KLOSE
# 20 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnmcijyy4pFryVY3TdFVMj1s -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Klose20_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# SANTANDREU
# 18 etudes 5/18
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnkmLTHYvnd-EtPGl4teycr4 -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Santandreu18_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# JEANJEAN
#16 etudes modernos 14/16
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnl9612UpgQ_PrnIT4jTgie0 -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Jeanjean16modern_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# JETTEL
#10 etudes 9/10
yt-dlp --yes-playlist --playlist-items 1-6,8-10 https://www.youtube.com/playlist?list=PLc-qCYYnpdnlgOa4zvMg8IUJjsycJHqCb -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Jettel10_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# ROMERO
#24 etudes in all tones
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnnLw7s-Gxhg8N-yFTj9-exC -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Romero24tones_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#40 small exercises
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnkY_sK2bvMmNxnQG_T9wQHV -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Romero40small_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# POLATSCHEK
#Advanced etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnmT1rVUM7E1hBiKeiBjgk5U -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_PolatschekAdvanced_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# SAVINA
#10 grand etudes (28)
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnl1IrZXnOgXqUWl51eJ2wZk -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Savina10grand_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# UHL
#48 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnmOPlod5hz_364-tEzB_YUH -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Uhl48_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# BITSCH
#12 rhythm etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnm-tbeEGCegcfzqavZqI-xM -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Bitsch12rhythm_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


# DUBOIS
#12 etudes
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLc-qCYYnpdnlh_k4-drX7MBQwVw1PCDJJ -x --audio-format mp3 --audio-quality 0   -o "clarinet/SalvadorNavarro_Dubois12_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

