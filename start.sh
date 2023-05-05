if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pingorin/Anu-Share-file.git /Anu-Share-file
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Anu-Share-file
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Anu-Share-file...."
python3 bot.py
