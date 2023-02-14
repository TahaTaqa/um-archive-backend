const { findUser } = require("../models/loginModel")

exports.login = async (req,res,next) => {
let {email,password} = req.body
try{
await findUser(email)
res.end()
}
catch(err) {
next(err)
}

}