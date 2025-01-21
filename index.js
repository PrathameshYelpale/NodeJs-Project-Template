import express from "express";
import connectToDatabase from "./src/config/mongodb.js";
import dotenv from "dotenv";
dotenv.config();

const app = express();
const PORT = process.env.DEV_PORT;

app.use(express.json());

// Connect to the database
connectToDatabase();

// Define a sample route
app.get("/", (req, res) => {
  res.send("Welcome to the Node.js app with MongoDB!");
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
