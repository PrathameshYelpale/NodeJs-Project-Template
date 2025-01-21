import express from "express";
import connectToDatabase from "./src/config/mongodb.js";
import dotenv from "dotenv";
dotenv.config();
import userRoutes from "./src/routes/userRoutes.js";

const app = express();
const PORT = process.env.DEV_PORT;

app.use(express.json());

// Connect to the database
connectToDatabase();

// Calling routes from userRoutes.js
app.use("/api/users", userRoutes);

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
