//Sample Middleware, user can replace with their own logic

export const authMiddleware = (req, res, next) => {
    const token = req.headers.authorization;

    if (!token) {
        return res.status(401).json({ message: "Unauthorized" });
    }

    // Validate token logic (mock example)
    if (token === "valid_token") {
        next();
    } else {
        res.status(403).json({ message: "Forbidden" });
    }
};
