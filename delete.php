<?php

include_once('con.php');

if(!isset($_GET['id'])) {
    echo 'wrong ID';
    die();
}

if(!isset($_GET['table'])) {
    echo 'wrong table name';
    die();
}

$id = $_GET['id'];

$result = $conn->query("DELETE FROM " . $currentTable . " WHERE ID = '" . $id . "'");


if($result) {
    header('Location: ' . $subDirectory . '?table=' . $currentTable . '&delete_succeeded=true');
}
else {
    getHead();
    showMysqlError();
    getFooter();
}