echo "update & upgrade"
apt upgrade -y
apt update -y
apt update -y --fix-missing

echo "Installing git"
apt install git -y
apt install git -y --fix-missing

echo "Installing Python"
apt install python -y
apt install python -y --fix-missing

echo "Cloning Bot Viewer"
git clone https://github.com/ghoway/Zefoy-Automation
cd Zefoy-Automation

echo "Setting up Bot Viewer"
pip install -r requirements.txt
python3 main.py
