const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

const userModel = require("../models/user.model");

const register = (req, res) => {
    const { email, password } = req.body;

    const hash = bcrypt.hashSync(password, 8);

    const user = { id: Date.now(), email, password: hash};

    userModel.push(user);

    const token = jwt.sign({ id: user.id }, process.env.SECRET_KEY, { expiresIn: "1h",});

    res.status(201).send({ auth: true, token });
};

module.exports = {
    register,
};
