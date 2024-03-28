# Installing necessary modules
apk update
apk add curl git net-tools openssh \
    build-base openjdk21 python3 python3-dev rust go \
    cargo py3-pip \
    vim zsh

# Installing ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setting vim
cp /root/mnt/.vimrc /root
dos2unix /root/.vimrc # delete ^M characters 

# Installing python packages with pip
pip install numpy pandas scipy sympy scikit-learn matplotlib flask --break-system-packages