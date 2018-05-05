echo "install curl"
sudo apt-get -y install curl

echo "ctags"
sudo apt-get -y install exuberant-ctags 

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
git clone https://github.com/Raimondi/delimitMate.git
echo "vim-scala"
git clone https://github.com/derekwyatt/vim-scala.git
echo "indentLine"
git clone https://github.com/Yggdroot/indentLine.git
echo "mustache.vim"
git clone https://github.com/juvenn/mustache.vim.git
echo "vim-airline"
git clone https://github.com/bling/vim-airline.git
echo "ctrlp.vim"
git clone https://github.com/kien/ctrlp.vim.git
echo "vim-javascript"
git clone https://github.com/pangloss/vim-javascript.git
echo "vim-fireplace"
git clone https://github.com/tpope/vim-fireplace.git 
echo "vim-classpath"
git clone https://github.com/tpope/vim-classpath.git
echo "vim-clojure-highlight"
git clone https://github.com/guns/vim-clojure-highlight.git
echo "vim-clojure-static"
git clone https://github.com/guns/vim-clojure-static.git
echo "vim-go"
git clone https://github.com/fatih/vim-go.git
echo "go-explorer"
git clone https://github.com/garyburd/go-explorer.git
echo "vim-ack"
sudo apt-get -y install ack-grep
git clone https://github.com/mileszs/ack.vim.git
echo "tagbar"
git clone https://github.com/majutsushi/tagbar.git
echo "vim-commentary"
git clone https://github.com/tpope/vim-commentary.git
echo "typescript-vim"
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim
echo "jedi-vim"
git clone https://github.com/davidhalter/jedi-vim.git
echo "vim-ruby"
git clone https://github.com/vim-ruby/vim-ruby.git
echo "vim-fugitive"
git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
echo "vim-git"
git clone https://github.com/tpope/vim-git.git
echo "vim-json"
git clone https://github.com/elzr/vim-json.git
echo "vim-toml"
git clone https://github.com/cespare/vim-toml.git
echo "vim-visualstar"
git clone https://github.com/thinca/vim-visualstar.git
echo "neocomplete"
git clone https://github.com/Shougo/neocomplete.vim.git
echo "ale"
git clone https://github.com/w0rp/ale.git
