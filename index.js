const xml2js = require('xml2js');
const fs = require('fs');
const parser = new xml2js.Parser({ attrkey: "ATTR" });

// this example reads the file synchronously
// you can read it asynchronously also
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

let express = require('express');
let app = express();

app.use(express.static('main'));

app.get('/',function(req,res){
    res.json(xml_result);
})

app.listen(3001);