<?php
$serverName = "localhost";
$username = "root";
$password = "";
$databaseName = "TwEEttaLk";

$Conn = new mysqli($serverName, $username, $password, $databaseName);
if ($Conn->connect_error) {
    die ($Conn->connect_error);
    $Conn->Close();
}
?>
