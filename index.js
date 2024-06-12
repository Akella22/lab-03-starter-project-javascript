const express = require('express');

const app = express();

app.get('/', (req, res) => res.sendStatus(200));

app.listen(3000);

setTimeout(() => {
  console.log('Shut down');
  process.exit(0);
}, 3000)
