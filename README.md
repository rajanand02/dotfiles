dotfiles
=========
###Uninstall old vim and install dependencies 
```bash
  sudo apt-get remove vim vim-runtime gvim 
  
  #On ubuntu  12.04.2 you have to remove these packages as well
  sudo apt-get remove vim-tiny vim-common vim-gui-common
  
  #build dependencies from repository
  sudo apt-get build-dep vim
```
###Install lua-5
```bash
  curl -R -O http://www.lua.org/ftp/lua-5.2.2.tar.gz
  tar zxf lua-5.2.2.tar.gz
  cd lua-5.2.2
  make linux test
  sudo cp src/lua /usr/local/bin/lua
  sudo cp -r src /usr/local/include/
```
###Install luajit
```bash
  sudo apt-get install luajit libluajit-5.1
```
###Download latest vim
```bash

  wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
  tar -xvjf  vim-7.4.tar.bz2
  cd vim74
```
###Apply patch to make vim work with lua and luajit
```bash
  curl https://gist.github.com/shirosaki/5663617/raw | patch -p1
```
### Compile and install vim
```bash

  ./configure \
    --enable-perlinterp=dynamic \
    --enable-pythoninterp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-luainterp --with-luajit --with-lua-prefix=/usr/local \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --with-x \
    --with-python-config-dir=/usr/lib/python2.7/config

make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install
```

###check vim version
```bash
  vim --version
```


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/rajanand02/dotfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

