const express = require('express');
const app = express();

app.get('/orders', (req, res) => {
  res.json([
    { id: 1, product: "Laptop", user: "Gowtham" }
  ]);
});

app.listen(3003, () => console.log("Order Service running"));