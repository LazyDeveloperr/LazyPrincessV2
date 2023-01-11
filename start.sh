if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/me-santu/LazyPrincessV2 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincessV2
fi
cd /LazyPrincessV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
