const express = require('express');
const bodyParser = require("body-parser");

const app = express();

// parse requests of content-type: application/json
app.use(bodyParser.json());

// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to person application." });
});

require("./app/routes/person.routes.js")(app);

app.listen(8000, () => {
    console.log('serveur à l\'écoute');
});


