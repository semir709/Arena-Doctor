const express = require("express");
const authRouter = express.Router();


authRouter.post('/signin', async (req, res) => {

  const re =
    /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;

  const { email, password } = req.body;

  if (email != 'career@tech387.com') {
    return res.status(400).json({ msg: "Inccorect email." });
  }
  const valid = email.match(re);
  if (email == 'career@tech387.com' && valid == false) {
    return res.status(400).json({ msg: "Inccorect Format of email." });
  }

  if (password != 'Pass123') {
    return res.status(400).json({ msg: "Inccorect Password." });
  }

  return res.json({ res: true });

});


module.exports = authRouter;