//Sample Code, User can replace code as per their project requirements

export const getUsers = (req, res) => {
    res.json({ message: "Fetching all users" });
};

export const createUser = (req, res) => {
    const { name, email } = req.body;
    res.json({ message: `User created: ${name}, ${email}` });
};
