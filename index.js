const xml2js = require('xml2js');
const fs = require('fs');
const parser = new xml2js.Parser({ attrkey: "ATTR" });
const mysql =require('mysql');

//Base de datos
db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'soa'
})

//Esto lee el xml
let xml_string = fs.readFileSync("data.xml", "utf8");
let xml_result = '';
parser.parseString(xml_string, function(error, result) {
    if(error === null) {
        
        xml_result = result;
        console.log(xml_result)
    }
    else {
        console.log(error);
    }
});

//Api
let express = require('express');
let app = express();

app.use(express.static('main'));

app.get('/',function(req,res){
    res.send(xml_result.bookstore.book);
})

app.listen(3001 , ()=>{ 
    console.log("server running"); 
});