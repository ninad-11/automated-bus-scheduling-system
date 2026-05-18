const db = require('./db');

// const sql = 'insert into user values(?, ?, ?)';
// db.query(sql, [102, 'Ninad', 'Indore'], (err, results) => {
//     if (err) {
//         console.error('Error executing query:', err.stack);
//         return;
//     }
//     console.log('Record inserted successfully:', results);
// });

// const sql = "DELETE FROM user WHERE id = ?";
// db.query(sql, [102], (err, result) => {
//   if (err) {
//     console.error(err);
//     return;
//   }
//   if (result.affectedRows === 0) {
//     console.log("No record found");
//   } else {
//     console.log("Deleted successfully");
//   }
// });

const sql = "UPDATE user SET city = ? WHERE id = ?";
db.query(sql, ["Mumbai", 102], (err, result) => {
  if (err) {
    console.error(err);
    return;
  }
  if (result.affectedRows === 0) {
    console.log("No record found");
  } else {
    console.log("Updated successfully");
  }
});

db.query('select * from user', (err, results) => {
    if (err) throw err;
    console.log('User Records:');
    console.log(results);
});
