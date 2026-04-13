const express = require('express');
const app = express();

app.get('/users', (req, res) => {
  res.json([
    { id: 1, name: "Gowtham" },
    { id: 2, name: "DevOps User" }
  ]);
});

app.listen(3001, () => console.log("User Service running on 3001"));