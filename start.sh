#python3 update.py && python3 -m bot

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kofhb/mltbking.git /mltbking
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mltbking
fi
cd /mltbking
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 update.py
