import mongoose from "mongoose";
import dotenv from "dotenv";

dotenv.config();

export default async function connectToDatabase() {
  try {
    await mongoose.connect(process.env.MONGO_URI); //Replace url in .env at MONGO_URI with you database url
    console.log("Connected to MongoDB");
  } catch (error) {
    console.error("MongoDB connection error:", error.message);
    process.exit(1);
  }
}
