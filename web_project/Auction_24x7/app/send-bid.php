<html>
<body>
<?php
session_start();
require '../constants/config.php';

$ad_id = $_POST['adid'];
$cuserid = $_POST['userid'];
$newbid = $_POST['newbid'];
$highbid = $_POST['highbid'];
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if($newbid > $highbid) {
$stmt = $conn->prepare("INSERT INTO tbl_bids (ad_id, user_id, bid_amt, time) VALUES (:adid, :userid, :newbid, current_timestamp());");
$stmt->bindParam(':adid', $ad_id);
$stmt->bindParam(':userid', $cuserid);
$stmt->bindParam(':newbid', $newbid);
$stmt->execute();
} else { 
?>
<script type='text/javascript'>alert("text here");</script>
<?php
}
$_SESSION['reply'] = "011";
header("location:../ad/$ad_id");
?>
</body>
</html>