alias ls='ls --color=auto'
alias l='ls -al'
alias mv='mv -i'

# audio tools
alias fb='flac --best --delete-input-file *.wav'
alias sbe='shnlen *.flac'
alias sbefix="shnfix -o 'flac flac --best -o %f -' *.flac"
