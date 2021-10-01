module.exports = app => {
    const person = require("../controllers/person.controller.js");
  
    // Create une nouvelle personne
    app.post("/person", person.create);
  
    // Récupérer toute les personne
    app.get("/person/:numPage/:numRows", person.findAll);
  
    // Récupérer une personne par son ID
    app.get("/person/:personId", person.findOne);
  
    // Mettre à jour une personne par son ID
    app.put("/person/:personId", person.update);
  
    // Supprimer une personne par son ID
    app.delete("/person/:personId", person.delete);
  
    // Supprimer toute les personnes
    app.delete("/person", person.deleteAll);
  };