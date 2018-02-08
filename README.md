# EVENTBRITE-like

Check l'application correspondante au projet: [Eventbrite](https://quiet-coast-33347.herokuapp.com/)(the fake).

## 1. Models, signup, sign-in

### 1.1. Préparatifs
`rails new eventbrite-like`<br/>
`cd eventbrite-like`<br/>
Ouvrir le dossier dans sublime-text. Supprimer le contenu du gemfile pour le remplacer par ce contenu: [Gemfile de Felix](https://github.com/felhix/cheat_sheets/blob/master/Ruby/Gemfile.rb).
*(pour le correcteur:* `bundle install --without production` *puis* `db:migrate`*).*
<br/>
<br/>
### 1.2. Les models

On initialize notre application avec 2 models **users** et **event**. </br>
On leur donnes les attributs suivants grâce à la console:</br>
`rails generate model users name:string` </br>
et</br>
`rails generate model event description:text date:datetime place:string`</br>





