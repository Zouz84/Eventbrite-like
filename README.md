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
<br/>
<br/>
Etant donné qu'un User peut créer plusieurs évènements, on va créer sa relation:<br/>
Donc dans le model *user*, ajouter: **has_many :created_events, class_name: "Event"**.<br/>
REMARQUE: le *class_name* permet de relier ce model *user* avec la *class Event* du *model event*.
<br/>
De fait, le model *event*, qui va accueillir ce nouvel event, doit se le faire spécifier: <br/>
`belongs_to :creator, class_name: "User", foreign_key: "user_id"` 
<br/>
En toute logique, un évènement va avoir des _**attendees**_ (à moins que ce soit un évènement de merde, et encore, on part du principe qu l'organisateur croit en son projet).<br/>
Dans le model *event*, il va donc falloir présicer que l'evenement appartient à un utilisateur et aussi à plusieurs utilisateurs (attendees), on sort donc le bon vieux has_and_belongs_to des familles, de la sorte:<br/>
`has_and_belongs_to_many :attendees, class_name: "User"`<br/>
De l'autre côté, l'utilisateur a des **attended_events**, a savoir qu'il *VA* à l'évènement. Si on regarde la liste des invités, l'utilisateur y sera. On peut donc dire qu'il *appartient* à cet évènement en quelques sortes...:<br/>
Ok on va dire tout ça à RoR:<br/>
`has_and_belongs_to_many :attended_events, class_name: "Event"`<br/>







