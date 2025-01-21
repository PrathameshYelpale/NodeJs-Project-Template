//Sample code for userRoutes.js, user can replace the code with their own logic

import express from "express";
import { getUsers, createUser } from "../controllers/userController.js";
import { authMiddleware } from "../middlewares/authMiddleware.js";

const router = express.Router();

router.get("/", authMiddleware, getUsers); // Protected route
router.post("/", createUser); // Public route

export default router;