set -x
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp $DIR/.vimrc ~

mkdir -p ~/.vim/colors
curl -LSso ~/.vim/colors/inkpot.vim https://raw.githubusercontent.com/ciaranm/inkpot/master/colors/inkpot.vim

rm -rf ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

rm -rf ~/.vim/bundle/minibufexplr
git clone https://github.com/fholgado/minibufexpl.vim.git ~/.vim/bundle/minibufexplr
