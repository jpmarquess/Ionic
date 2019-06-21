var express = require('express');
var router = express.Router();

var PostController = require("../controllers/PostController");

router.get("/", PostController.posts);
router.post("/signup", PostController.signup);
router.get("/show/:id", PostController.show);

module.exports = router;