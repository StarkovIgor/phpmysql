<?php
	require_once('connection.php');//подключаем базу данных
	$query=mysqli_query($connection, "SELECT * FROM stars"); //создаем переменную с запросом на выборку из таблицы  stars
	$rows=mysqli_num_rows($query);
?>

<html>
<head>
	<title>Music</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
	<meta charset="utf-8">
	<script src="slide.js"></script>
</head>
<body>
	<header></header>
	<div id="world-stars">
		<h2>Мировые <nobr>звезды<i class="fas fa-gem icon-title"></i></nobr></h2>
		<div class="hider">
		<?php for ($i;$i<$rows;$i++)
			{
				$a=mysqli_fetch_assoc($query);
			?>
			<div class="stars">

				<a class="star-container" href="http://youtube.com/">
					<img class="bg-star" src="img/stars/<?php echo $a[picture];?>" />
					<img class="star" src="img/stars/<?php echo $a[picture];?>" />
					<h3>Queen</h3>
				</a>

				<a class="star-container" href="http://google.com/">
					<img class="bg-star" src="img/stars/jackson.jpg" />
					<img class="star" src="img/stars/jackson.jpg" />
					<h3>Michael Jackson</h3>
				</a>

				<a class="star-container" href="#">
					<img class="bg-star" src="img/stars/metallica.jpg" />
					<img class="star" src="img/stars/metallica.jpg" />
					<h3>Metallica</h3>
				</a>

				<a class="star-container" href="#">
					<img class="bg-star" src="img/stars/guns-n-roses.jpg" />
					<img class="star" src="img/stars/guns-n-roses.jpg" />
					<h3>Guns'n Roses</h3>
				</a>

			</div>
		</div>	

	</div>	
</body>
</html>
