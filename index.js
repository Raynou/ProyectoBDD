import express from "express"
import expressNunjucks from 'express-nunjucks'
import nunjucks from "nunjucks"

const app = express()

app.set('views', process.cwd() + '\\src\\templates');

expressNunjucks(app, {
    watch: true,
    autoescape: true
});


app.get('/', function(req, res) {
    res.render('index.html', {naco: "Giancarlo"});
});

app.listen(3000)


console.log(`Server running on port 3000`)
