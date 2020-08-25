git status
git add .
ECHO "Subiendo el codigo bruto"
git commit
git push origin master

ECHO "Subiendo el compilado al static branch"
cd public
git checkout static
git add .
git commit
git push origin static -f
