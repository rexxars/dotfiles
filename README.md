# my-setup

## Desktop OS

* Linux Mint, Cinnamon

## Things

* Get Chrome from [chrome.google.com](https://chrome.google.com)
* Download latest dropbox installer from [dropbox.com](https://dropbox.com)

```sh
# All sorts of stuff
sudo apt-get install \
	keepassx \
	inkscape \
	git \
	curl \
	graphviz \
	htop \
	memcached \
	mysql-server \
	mongodb \
	apache2 \
	libapache2-mod-php5 \
	php5 \
	php5-cli \
	php5-readline \
	php5-curl \
	php5-mysql \
	php5-apcu \
	php5-memcached \
	php5-imagick \
	php5-xdebug

# Composer (for php)
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# NVM (for Node)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.profile
nvm install 5
```

## Editor

* Sublime Text 3
  * Package Control
  * SublimeLinter
  * SublimeLinter-contrib-eslint
  * SublimeLinter-contrib-php
  * GitGutter
  * EditorConfig
* Android Studio
