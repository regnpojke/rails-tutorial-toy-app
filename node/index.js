const chalk = require("chalk")

const port = 3000
const express = require("express")
const app = express()

app.get("/",(req,res) => {
res.end("hello world")
})
app.listen(port, () => {
  `server has started on port ${port}`
})
console.log(chalk.white.inverse.italic("hello!"))



