import express from "express"
import expressNunjucks from 'express-nunjucks'
import nunjucks from "nunjucks"

let isDarwin = process.platform === 'darwin'

const app = express()


let dir = process.cwd() + '\\src\\templates'

if (isDarwin) 
	dir = process.cwd() + '/src/templates'

app.set('views', dir);

expressNunjucks(app, {
    watch: true,
    autoescape: true
});


app.get('/', function(req, res) {
    res.render('index.html', {naco: "Giancarlo"});
});

app.listen(3000)


console.log(`Server running on port 3000`)
