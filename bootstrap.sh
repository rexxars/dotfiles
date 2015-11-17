#/usr/bin/sh

# Install it all
sudo apt-get install -y \
    ack-grep \
    apache2 \
    curl \
    git \
    graphviz \
    htop \
    inkscape \
    keepassx \
    libapache2-mod-php5 \
    memcached \
    mongodb \
    mysql-server \
    php5 \
    php5-apcu \
    php5-cli \
    php5-curl \
    php5-imagick \
    php5-memcached \
    php5-mongo \
    php5-mysql \
    php5-readline \
    php5-sqlite \
    php5-xdebug \
    python-sphinx \
    python-sphinxcontrib.phpdomain \
    python-sphinxcontrib.spelling \
    rake \
    xclip

# Symlink that ack-grep thing
sudo ln -s `which ack-grep` /usr/local/bin/ack

# Get composer (for PHP)
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# NVM (for Node)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.profile
nvm install 5

# Enable apcu for CLI
echo "apc.enable_cli = On" | sudo tee -a /etc/php5/cli/conf.d/20-apcu.ini

# SSH key
pub=$HOME/.ssh/id_rsa.pub
echo 'Checking for SSH key, generating one if it does not exist...'
    [[ -f $pub ]] || ssh-keygen -t rsa

echo 'Copying public key to clipboard. Paste it into your Github account...'
    [[ -f $pub ]] && cat $pub | xclip -selection c
    open 'https://github.com/account/ssh'

open_apps() {
    echo 'Install apps:'
    echo 'Dropbox:'
    xdg-open https://www.dropbox.com
    echo 'Chrome:'
    xdg-open https://chrome.google.com/
    echo 'Sublime Text:'
    xdg-open http://www.sublimetext.com/3dev
}

echo 'Should I give you links for system applications (e.g. Skype, Tower, VLC)?'
echo 'n / y'
read give_links
[[ "$give_links" == 'y' ]] && open_apps