var fs = require('fs');


console.log("Hello World");

fs.writeFileSync("newfile.txt", "First File", () => {
    console.log("file written");
});
