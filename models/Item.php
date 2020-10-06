<?php 

require_once('Model.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/interfaces/Database.php');

class Item extends Model implements Database{
	public static function edit_item($post) {
		$id = $_GET['id'];
		$name = $_POST['product_name'];
		$price = $_POST['price'];
		$description = $_POST['description'];

		$query = "SELECT * FROM items WHERE id = $id";
		$item = mysqli_fetch_assoc(Model::get_db($query));


		if($_FILES['image']['name'] == ""){
			$image_path = $item['image'];
		}else{
			$image_path ='../assets/images/'. $_FILES['image']['name'];
			move_uploaded_file($_FILES['image']['tmp_name'], $image_path);
		}
		$query = "UPDATE `items` SET `name`= '$name',`price`= '$price',`description`= '$description' ,`image`= '$image_path' WHERE id = $id";	
			Model::get_db($query);
			header('Location: /');
	}

	public static function delete_item($get) {
		$id = $_GET['id'];
		$query = "DELETE FROM items WHERE id = $id";
		Model::get_db($query);
		header('Location: /');
	}
}

 ?>