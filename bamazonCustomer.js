var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "ghosts",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;

  showProducts();
  runMenu();
});

function showProducts() {
	connection.query("SELECT * FROM products", function(err, res) {
		for (var i = 0; i < res.length; i++) {
			console.log("|" + res[i].item_id + "| Product - " + res[i].product_name + " || Seller - " + res[i].department_name + " || Price  - $" + res[i].price
			+ "|| Stock - " + res[i].stock_quantity);
		}
	})
};

function runMenu() {

};