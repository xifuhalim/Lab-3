<?php
session_start();

if ($_SESSION["session_id"]) {
    $username = $_SESSION["email"];
    $name = $_SESSION["name"];
    $_SESSION["session_id"];

} else {
    echo "<script> alert('Session not available. Please login')</script>";
    echo "<script> window.location.replace('../php/login.php')</script>";
}



include_once("../php/dbconnect.php");
    



//search and list products
if (isset($_GET['button'])) {
    $prname = $_GET['prname'];
    $prtype = $_GET['prtype'];
    if ($prtype == "all") {
        $sqlsearch = "SELECT * FROM tbl_products WHERE prname LIKE '%$prname%'";
    } else {
        $sqlsearch = "SELECT * FROM tbl_products WHERE prtype = '$prtype' AND prname LIKE '%$prname%'";
    }
} else {
    $sqlsearch = "SELECT * FROM tbl_products ORDER BY prid DESC";
}
$stmt = $conn->prepare($sqlsearch);
$stmt->execute();
$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
$rows = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Samballana Bistro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/mainpage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src='js/myscript.js'></script>
</head>

<body onload="loadCookies()">
    <div class="header">
    
        <a href="mainpage.php" class="logo">Samballana Bistro</a>
        <div class="header-right">

        </div>
    </div>
    
    <div class="container-src">
        <form action="mainpage.php" method="get">
            <div class="row">
                <div class="column">
                    <input type="text" id="fprname" name="prname" placeholder="Product name..">
                </div>
                
                <div class="column">
                    <select id="idprtype" name="prtype">
                        <option value="all">All</option>
                        <option value="beverage">Beverage</option>
                        <option value="canned">Canned Food</option>
                        <option value="electronic">Electronics</option>
                        <option value="furniture">Furniture</option>
                    </select>
                </div>
                <div class="column">
                    <input type="submit" name="button" value="Search">
                </div>
            </div>
        </form>
    </div>
    <br><center><h2>List of Products</h2></center>
    </div>

    <?php
   


    echo "<div class='container'>";
    echo "<div class='card-row'>";

    foreach ($rows as $products) {
        $prodid = $products['prid'];
        $qty = $products['prqty'];
        echo " <div class='card'>";
        $imgurl = "../images/" . $products['picture'];
        echo "<img src='$imgurl' class='primage'>";
        echo "<h4 align='center' >" . ($products['prname']) . "</h3>";
        echo "<p align='center'> RM " . number_format($products['prprice'], 2) . "<br>";
        echo "Avail:" . ($products['prqty']) . " unit/s</p>";
        echo "</div>";
    }
    echo "</div>";
    echo "</div>";
    ?>
</div>
<link rel="stylesheet" href="../css/index.css">
<div class="fab-container">
		<div class="fab fab-icon-holder">
			<i class="fa fa-plus"></i>
		</div>

		<ul class="fab-options">
        <li>
  <span class="fab-label">Logout </span>
				<div class="fab-icon-holder">
					<i onclick="window.location.href='../index.php?status=logout.php';" class="fa fa-sign-out-alt"></i>
				</div>
                <li>
			<li>
  <span class="fab-label">Add Item </span>
				<div class="fab-icon-holder">
					<i onclick="window.location.href='newproduct.php';" class="fa fa-tag"></i>
				</div>
               


    </a>
</body>

</html>