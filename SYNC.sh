rm -r ./.git/
git init
# Differrent Account FOR Each Category
git config user.name "Critical Soft"
git config user.email soft76842@gmail.com


# HTTPS Mode For No Public Key Clone
git remote rm origin
git remote add origin https://github.com/criticalsoft/Linux_Debian.git

# git submodule add https://github.com/criticalsoft/GridWM.git Script/GridWM


git add ./ --verbose
git commit -m "SYNC"
git branch -M main
git push -u --force origin main
