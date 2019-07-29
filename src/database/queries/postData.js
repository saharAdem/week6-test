// write the query to post the data into Database
const dbConnection = require("../db_connection.js");

const postData = (name, country, cb) => {
  dbConnection.query(
    "INSERT INTO cities (name, country) VALUES ($1, $2)",
    [name, country],
    (err, res) => {
      if (err) return cb(err);
      cb(null, res);
    }
  );
};

module.exports = postData;
