echo "install curl"
sudo apt-get -y install curl

echo "install pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "install plugins"
cd ~/.vim/bundle
echo "vim-colorschemes"
git clone https://github.com/flazz/vim-colorschemes.git
echo "nerdtree"
git clone https://github.com/scrooloose/nerdtree.git
echo "vim-nerdtree-tabs"
git clone https://github.com/jistr/vim-nerdtree-tabs.git
echo "delimitMate"
git clone git@github.com:Raimondi/delimitMate.git
echo "vim-scala"
git clone https://github.com/derekwyatt/vim-scala.git
echo "supertab"
git clone https://github.com/ervandew/supertab.git
echo "vim-indent-guides"
git clone git://github.com/nathanaelkane/vim-indent-guides.git
echo "mustache.vim"
git clone https://github.com/juvenn/mustache.vim.git
echo "syntastic"
git clone https://github.com/scrooloose/syntastic.git
echo "vim-airline"
git clone https://github.com/bling/vim-airline.git
echo "ctrlp.vim"
git clone https://github.com/kien/ctrlp.vim.git
echo "vim-javascript"
git clone https://github.com/pangloss/vim-javascript.git
echo "vim-fireplace"
git clone git://github.com/tpope/vim-fireplace.git
git clone git://github.com/tpope/vim-classpath.git
echo "vim-clojure-highlight"
git clone https://github.com/guns/vim-clojure-highlight.git
echo "vim-clojure-static"
git clone https://github.com/guns/vim-clojure-static.git
echo "vim-go"
git clone https://github.com/fatih/vim-go.git
echo "vim-ack"
sudo apt-get -y install ack-grep
git clone https://github.com/mileszs/ack.vim.git
