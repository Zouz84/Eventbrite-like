# EVENTBRITE-like

## 1. Models, signup, sign-in
</br>
### 1.1. Préparatifs
</br>
**rails new eventbrite-like**
**cd eventbrite-like**
Ouvrir le dossier dans sublime-text. Supprimer le contenu du gemfile pour le remplacer par ce contenu: [Gemfile de Felix](https://github.com/felhix/cheat_sheets/blob/master/Ruby/Gemfile.rb).
*(pour le correcteur:* bundle install --without production *puis* db:migrate*).*
</br>
</br>
### 1.2. Les models

On initialize notre application avec 2 models **users** et **event**. </br>
On leur donnes les attributs suivants grâce à la console:</br>
`rails generate model users name:string` </br>
et</br>
`rails generate model event description:text date:datetime place:string`</br>





