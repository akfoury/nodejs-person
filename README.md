# react-nodejs
CRUD liste de personnes avec NodeJS

## **Installation du serveur local MySQL**

### **1 - Télécharger MySQL Community Server 8.0.26**<br/>
https://dev.mysql.com/downloads/mysql/ <br/>
Windows (x86, 64-bit), ZIP Archive <br/>
Placer le dossier mysql dans le répertoire C

### **2 - Création d'un fichier d'initialisation**
Se rendre dans le dossier mysql<br/>
Créer un fichier my.ini à la racine du répertoire mysql

Ecrire le code suivant :<br/>
```
[mysqld]
basedir=C:/mysql<br/>
datadir=C:/mysql/data
```

### **3 - Initialisation du dossier data**<br/>
Se rendre dans un terminal et taper les commandes suivantes :<br/>
```
cd C:\mysql
.\mysqld.exe --defaults-file=C:\mysql\my.ini --initialize
```

### **4 - Lancement du serveur de base de données**<br/>
```.\mysqld.exe --console```

### **5 - Connexion au serveur via le terminal**<br/>
A l'initialisation du dossier data un mot de passe à été généré automatiquement pour se connecter au serveur.<br/>
Allez dans le dossier data et chercher un fichier nommé selon le nom de votre ordinateur, ouvrez-le.<br/>
Vous pouvez retrouvez ce nom sur Windows dans Informations Systèmes

Vous devriez trouver la ligne suivante: <br/>
2021-09-21T10:14:16.954035Z 6 [Note] [MY-010454] [Server] A temporary password is generated for root@localhost: **>X_0p.>r+xbG**

Copiez le mot de passe et rendez vous dans un nouveau terminal<br/>
taper la commande suivante:<br/>
```.\mysql.exe -u root -p```<br/>
Coller le mot de passe

C'est bon vous êtes connecté au serveur !

Taper la commande suivante pour ne plus avoir à retaper de mot de passe :<br/>
```alter table user 'root'@'localhost' identified by '';```

### **6 - Import du dump de la base de données**<br/>
```mysql -u <username> -p <database_name> < person_dump.sql```

Commandes usuelles:

Terminal<br/>
```
.\mysql.exe -u root -p
.\mysqld.exe --console
```

MySQL<br/>
```
use <nom_de_table>;
select * from <nom_de_table>;
```

## **Lancement du server nodeJS**
 
Ouvrir un terminal<br/>
```
cd C:\Users\Alex\Documents\node-person
node server.js
```

