dot_files
=========
"install lua-5"

  curl -R -O http://www.lua.org/ftp/lua-5.2.2.tar.gz
  tar zxf lua-5.2.2.tar.gz
  cd lua-5.2.2
  make linux test
  sudo cp src/lua /usr/local/bin/lua
  sudo cp -r src /usr/local/include/


"Install luajit"

  sudo apt-get install luajit libluajit-5.1
 
"Download latest vim"

  wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
  tar -xvjf  vim-7.4.tar.bz2
  cd vim74

"Apply patch to make vim work with lua and luajit"

  curl https://gist.github.com/shirosaki/5663617/raw | patch -p1

  ./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-pythoninterp \
    --enable-perlinterp \
    --with-lua-prefix=/usr/local --enable-luainterp --with-luajit \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

"check vim version"
  
  vim --version
