<?php 

require_once('Model.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/interfaces/Database.php');

class User extends Model implements Database{
	public static function check_user($username , $email) {
		$query = "SELECT username, `email` FROM users WHERE username = '$username' AND email = '$email'";
		$result = mysqli_fetch_assoc(Model::get_db($query));
		if($result != NULL){
		    echo "Username or email is taken";
		    $errors++;
		    mysqli_close($cn);
		}
	}

	public static function find_user($username) {
		$all_users = Model::get_db('../assets/db/users.json');
		foreach($all_users as $user) {
			if($username == $user->username) {
				return $user;
			}
		}
		echo "User does not exist";
	}
}

?>