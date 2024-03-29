const sql = require('../../db.js');

const Person = function(person) {
    this.firstname = person.firstname;
    this.lastname = person.lastname;
    this.address = person.address;
    this.isActive = person.isActive;
}

Person.create = (newPerson, result) => {
    sql.query('insert into person.t_person set ?', newPerson, (err, res) => {
        if (err) {
            console.log('error : ', err);
            result(err, null);
            return;
        }

        console.log("created person : ", { id: res.insertId, ...newPerson });
        result(null, { id: res.insertId, ...newPerson });
    });
};

Person.getAll = (numPage, numRows, result) => {
    console.log(numPage);
    sql.query('select * from person.t_person order by id desc limit ?,?', 
    [parseInt(numPage) === 1 ? 1 : (parseInt(numPage)-1) * parseInt(numRows), parseInt(numRows)],
    (err, res) => {
        if (err) {
            console.log('error : ', err);
            result(err, null);
            return;
        }

        console.log('persons : ', res);
        result(null, res);
    });
};

Person.getById = (personId, result) => {
    sql.query(`select * from person.t_person where id = ${personId}`, (err, res) => {
        if (err) {
            console.log('error : ', err);
        }

        if (res.length)  {
            console.log('person : ', res[0]);
            result(null, res[0]);
            return;
        }

        result({ kind: 'not found'}, null);
    });
};

Person.updateById = (personId, person, result) => {
    sql.query('update person.t_person set firstname = ?, lastname = ?, address = ?, isActive = ? where id = ?',
    [person.firstname, person.lastname, person.address, person.isActive, personId],
    (err, res) => {
        if (err) {
            console.log('error : ', err);
            result(null, err);
        }
        
        if (res.affectedRows == 0) {
            result({ kind: "not_found" }, null);
            return;
        }
    
        console.log("updated person : ", { id: personId, ...person });
        result(null, { id: personId, ...person });
    });
};

Person.remove = (personId, result) => {
    sql.query("delete from person.t_person where id = ?", personId, (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(err, null);
        return;
      }
  
      if (res.affectedRows == 0) {
        result({ kind: "not_found" }, null);
        return;
      }
  
      console.log("deleted person with id: ", personId);
      result(null, res);
    });
  };
  
  Person.removeAll = result => {
    sql.query("truncate table person.t_person", (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      sql.query('alter table person.t_person auto_increment = 0', (err, result) => {
        if (err) throw err;
        console.log("Result: " + result);
      });
  
      console.log(`deleted ${res.affectedRows} persons`);
      result(res, null);
    });
  };
  
  module.exports = Person;

