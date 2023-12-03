git clone https://github.com/criticalsoft/criticalsoft.github.io




cd ./criticalsoft.github.io/
rm -r ./.git/
git init
git remote rm origin
git remote add origin https://github.com/criticalsoft/criticalsoft.github.io.git


git add --all
git commit -m "INIT"
git branch -M main
git push -u origin main


echo "Test" > index.html
xdg-open https://criticalsoft.github.io/


