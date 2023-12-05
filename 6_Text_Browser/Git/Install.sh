sudo apt install -y git

# FIX: Cannot Download Private Package (unreal-engine) (Connecting to GitHub with SSH)
# ssh-keygen -t rsa -b 4096 -C "id@mail.com"
# SSH Start Agent Before Add Key
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa.pub

# Test:
# ssh -T git@github.com




# FIX: Please tell me who you are
git config --global user.name "LIVE"
git config --global user.email "live@CD"




# FIX: Cannot Remember Password
# https://code.visualstudio.com/docs/editor/versioncontrol#_remotes
# https://help.github.com/articles/caching-your-github-password-in-git/

# git config --global credential.helper cache
# git config --global credential.helper 'cache --timeout=3600'

# Store UserName & PassWord
# This Will Affact The Decision Of Making HTTPS / SSH Project (User Clone Problem)
# This method saves the credentials in plaintext on your PC's disk.
# Everyone on your computer can access it, e.g. malicious NPM modules
git config --global credential.helper store



