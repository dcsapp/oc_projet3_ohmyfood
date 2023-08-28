#!/bin/sh

echo "==========================================="
echo '=  Creating the directories and files...  ='
echo "==========================================="
echo
echo 'Launch npm init'
echo 'Create the file config.json'
echo '== test script =='
echo 'node-sass sass/main.scss css/style.css -w'
npm init

# Insersion du script dans le fichier package.json
stringA='    "compile:sass": "node-sass sass/main.scss assets/css/styles.css -w"'
sed -i '' "s%.*test.*%$stringA%" package.json

echo "==========================================="
echo "=     Détail du fichier package.json      ="
echo "==========================================="
cat package.json

echo 'Update script command'


echo 'Install node sass'
npm install node-sass --save-dev

# echo "Create .gitignore file"
# touch '.gitignore'

# Création du fichier index.html
touch index.html

echo "==========================================="
echo "=     Création des dossiers 7/1 SASS      ="
echo "==========================================="
echo "Création du dossier assets"
mkdir assets
cd assets
mkdir css
touch "css/styles.css"
mkdir images
cd ..
echo "Création du dossier sass et sous-dossiers"
mkdir sass
cd sass
touch "main.scss"

echo '@import "abstracts/functions";' >> main.scss
echo '@import "abstracts/mixins";' >> main.scss
echo '@import "abstracts/variables";' >> main.scss

echo '@import "base/animations";' >> main.scss
echo '@import "base/base";' >> main.scss
echo '@import "base/typography";' >> main.scss
echo '@import "base/utilities";' >> main.scss

echo '@import "components/buttons";' >> main.scss

echo '@import "layout/header";' >> main.scss
echo '@import "layout/footer";' >> main.scss

echo '@import "pages/home";' >> main.scss

mkdir abstracts
touch "abstracts/_functions.scss" 
touch "abstracts/_mixins.scss"
touch "abstracts/_variables.scss"

mkdir base
touch "base/_animations.scss" 
touch "base/_base.scss" 
touch "base/_typography.scss" 
touch "base/_utilities.scss"

mkdir components
touch "components/_buttons.scss"

mkdir layout
touch "layout/_header.scss"
touch "layout/_footer.scss"

mkdir pages
touch "pages/_home.scss"

mkdir themes	

mkdir vendors	

cd ..
echo '/node_modules' >> .gitignore

echo "Directories and files created."
echo
echo "Pour lancer le compilateur SASS taper:  npm run compile:sass"
echo  ""

# ==========================
# filename='package.json'
# n=1
# while read line; do
# #reading each line
# echo "Line No. $n : $line"
# n=$((n+1))
# done < $filename