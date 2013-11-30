"installing lua-5"
curl -R -O http://www.lua.org/ftp/lua-5.2.2.tar.gz
tar zxf lua-5.2.2.tar.gz
cd lua-5.2.2
make linux test
sudo cp src/lua /usr/local/bin/lua
sudo cp -r src /usr/local/include/


"installing vim with lua enabled"
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xvjf  vim-7.4.tar.bz2
cd vim74

./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-pythoninterp \
    --enable-perlinterp \
    --with-lua-prefix=/usr/local --enable-luainterp \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

"apply patch to make lua work with luajit"
 sudo apt-get install luajit libluajit-5.1
 cd vim_source_directory
 curl https://gist.github.com/shirosaki/5663617/raw | patch -p1
 ./configure --with-features=huge --enable-luainterp --with-luajit
 make
 sudo make install
