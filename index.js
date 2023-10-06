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
const { error } = require('console');
let app = express();

app.use(express.static('main'));

app.get('/api/update',function(req,res){
    res.send(xml_result.bookstore.book);

    xml_result.bookstore.book.forEach(i => {
        const b_title = i.title;
        const b_author = i.author;
        const b_year = i.publication_year;
        const b_price = i.price;

        const sqlInsert = "INSERT INTO `bookstore` (`title`, `author`, `publication_year`, `price`) VALUES (?,?,?,?);";
        db.query(sqlInsert,[b_title,b_author,b_year,b_price],(err,result)=>{
        console.log(err);
    })
    });
})

app.get('/api/generate',function(req,res){

    const sqlInsert = "SELECT * FROM bookstore";
    db.query(sqlInsert,(err,result)=>{
        res.send(result);

        let write_xml = '<?xml version="1.0" encoding="UTF-8"?>\n<bookstore>\n';

        result.forEach(i =>{
            write_xml = write_xml + '<book> \n' +
            '<title>' + i.title + '</title>\n' +
            '<author>' + i.author + '</author>\n' +
            '<publication_year>' + i.publication_year + '</publication_year>\n' +
            '<price>' + i.price + '</price>\n'
            + '</book> \n';
        })

        write_xml = write_xml + '</bookstore>'

        fs.writeFile('get_data.xml',write_xml,error=>{
            if(err){
                console.log(error)
            }
        })
    })

})


app.listen(3001 , ()=>{ 
    console.log("server running"); 
});