const Person = require('../models/person.model');

// requête POST
exports.create = (req, res) => {
    if (!req.body) {
      res.status(400).send({
        message: "Content can not be empty!"
      });
    }
  
    // Création d'une personne
    const person = new Person({
      firstname: req.body.firstname,
      lastname: req.body.lastname,
      address: req.body.address,
      isActive: JSON.parse(req.body.isActive.toLowerCase())
    });
    console.log(person);
  
    // Sauvegarde d'une personne dans la base de données
    Person.create(person, (err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the Person."
        });
      else res.send(data);
    });
};

// requête GET
exports.findAll = (req, res) => {
    Person.getAll((err, data) => {
        if (err)
        res.status(500).send({
            message:
            err.message || "Some error occurred while retrieving persons."
        });
        else res.send(data);
    });
};

// requête GET
exports.findOne = (req, res) => {
    Person.getById(req.params.personId, (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found Customer with id ${req.params.personId}.`
          });
        } else {
          res.status(500).send({
            message: "Error retrieving Customer with id " + req.params.personId
          });
        }
      } else res.send(data);
    });
};

// requête PUT
exports.update = (req, res) => {
    if (!req.body) {
      res.status(400).send({
        message: "Content can not be empty!"
      });
    }
  
    Person.updateById(
      req.params.personId,
      new Person(req.body),
      (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found Person with id ${req.params.personId}.`
            });
          } else {
            res.status(500).send({
              message: "Error updating Person with id " + req.params.personId
            });
          }
        } else res.send(data);
      }
    );
};

// requête DELETE
exports.delete = (req, res) => {
    Person.remove(req.params.personId, (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found Person with id ${req.params.personId}.`
          });
        } else {
          res.status(500).send({
            message: "Could not delete Person with id " + req.params.personId
          });
        }
      } else res.send({ message: `Person was deleted successfully!` });
    });
};

// requête DELETE
exports.deleteAll = (req, res) => {
    Person.removeAll((err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while removing all Persons."
        });
      else res.send({ message: `All Persons were deleted successfully!` });
    });
};