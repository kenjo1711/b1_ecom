<?php 
require_once($_SERVER['DOCUMENT_ROOT'].'/interfaces/Database.php');	

class Model implements Database {
	public static function get_db($query) {
		$host = 'localhost';
		$username = 'root';
		$password = '';
		$db = 'b1_ecom';


        //Online DB
        // $host = 'db4free.net';
        // $username = 'b1ecomken';
        // $password = 'Jesusmylord1';
        // $db = 'b1ecomken';

		$cn = mysqli_connect($host, $username, $password, $db);

		return mysqli_query($cn, $query);
	}

    public static function get_cn() {
        $host = 'localhost';
        $username = 'root';
        $password = '';
        $db = 'b1_ecom';

        //Online DB
        // $host = 'db4free.net';
        // $username = 'b1ecomken';
        // $password = 'Jesusmylord1';
        // $db = 'b1ecomken';

        $cn = mysqli_connect($host, $username, $password, $db);
        return $cn;
        }

	public static function send_email($post){
        // Send an Email to the user

        // Create the Transport
        $transport = (new Swift_SmtpTransport('smtp.gmail.com', 587, 'tls'))
        ->setUsername('iamvengeanceBatman@gmail.com')
        ->setPassword('jesusmylord1');
        
        // Create the Mailer using your created Transport
        $mailer = new Swift_Mailer($transport);
        
        // Create a message
        $message = (new Swift_Message('B1-ECOM Registration'))
          ->setFrom(['iamvengeanceBatman@gmail.com' => 'Bruce Wayne'])
          ->setTo([$post['email'] => $post['firstname']])
          ->setBody('Thank you for registering on B1-ECOM');

        // Send the message
        $result = $mailer->send($message);
	}

}
?>