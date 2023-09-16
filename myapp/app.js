const express = require('express')
const app = express()
const port = 2000

app.get('/', (req, res) => {
  res.send('Ayyo Whatsapp')
})

app.listen(port, () => {
  console.log(`App Cua Tui lang nghe tui tren port ${port}`)
})
