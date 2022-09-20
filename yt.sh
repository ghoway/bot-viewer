echo "run: update & upgrade"
apt upgrade -y
apt update -y
apt update -y --fix-missing

echo "run: installing git"
apt install git -y
apt install git -y --fix-missing

echo "run: installing zip"
apt install zip -y
apt install zip -y --fix-missing

echo "installing editor"
apt install nano

echo "run: clone YTView"
git clone https://github.com/MShawon/YouTube-Viewer.git --depth 10
cd YouTube-Viewer

echo "run: setup YTView"
apt install pip -y 
apt install pip -y --fix-missing
python -m pip install --upgrade pip wheel
pip install "setuptools<59"
pip install -r requirements.txt
nano urls.txt
