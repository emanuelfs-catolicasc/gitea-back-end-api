const express = require("express");

const {
    add,
    subtract,
    multiply,
    divide,
} = require("./functions");

const app = express();
const port = 3001;

app.use(express.json());

app.get("/", (req, res) => {
    res.send("Welcome to Calculator API");
});

app.post("/add", (req, res) => {
    res.send(add(req.body.a, req.body.b));
});

app.post("/subtract", (req, res) => {
    res.send(subtract(req.body.a, req.body.b));
});

app.post("/multiply", (req, res) => {
    res.send(multiply(req.body.a, req.body.b));
});

app.post("/divide", (req, res) => {
    res.send(divide(req.body.a, req.body.b));
});

app.listen(port, () => {
    console.log(`Calculator API Listening on Port ${port}`);
});
