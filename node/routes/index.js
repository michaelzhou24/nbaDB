module.exports = {
    getHomePage: (req, res) => {
        let query = "SELECT * FROM PlayerPlaysFor ORDER BY id ASC"; // query database to get all the players

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            console.log("###########################")
            console.log(res)
            res.render('index.ejs', {
                title: "NBA DB | View Players", players: result
            });
        });
    },
};
