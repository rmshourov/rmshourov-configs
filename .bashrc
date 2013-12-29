# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

source /home/rshourov/bin/udisks_functions

### for safe delete, which will put files to trash
##################code starts here
TRASHPATH=/home/rshourov/.local/share/Trash/files
function rem()
{
for i in "$@"
  do
  mv $i $TRASHPATH/$i
  done
}
alias rm='rem'
##################code ends here

export EDITOR=/usr/bin/vim

