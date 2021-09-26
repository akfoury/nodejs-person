const express = require('express');
const bodyParser = require("body-parser");

const app = express();

// parse les requêtes avec content-type: json/application
app.use(bodyParser.json());

// parse les requêtes avec content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
  res.json({ message: "person application." });
});

require("./app/routes/person.routes.js")(app);

app.listen(8000, () => {
    console.log('serveur à l\'écoute');
});


