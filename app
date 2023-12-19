const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

const { createUserTable, insertUser } = require('./Userdb');

// Create user table (you might want to call this only once)
createUserTable();

// Insert a sample user (you can do this as needed)
insertUser({ name: 'John Doe', age: 25 });

// Start the server
app.listen(PORT, async () => {
  console.log('Server is running on http://localhost:${PORT}');

  // Example usage of the insertUser function
  try {
    await insertUser({ name: 'Jane Doe', age: 30 });
    console.log('User inserted successfully');
  } catch (error) {
    console.error('Error inserting user:', error);
  }
});