# robot_framework

To execute the scripts in git, clone the repo first.

git clone https://github.com/simplyajith/robot_framework.git

Create a virtualenv and install the modules in requirements.txt

virtualenv venv

source venv/bin/activate

pip install -r requirements.txt


amazon_with_readable script folder has the updated script

cd amazon_with_readable_scripts/ 

To execute the robot scripts with smoke tags.

robot -d results -i Smoke tests

