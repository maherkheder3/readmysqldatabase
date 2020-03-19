<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$servername = "localhost";
$username = "admin";
$password = "1";
$db = "bn_Versicherung"; // database name
$subDirectory= '/bb1/'; // directory name in html folder Example: /bb1/

// default table
$currentTable = 'Mitarbeiter';

if(isset($_GET['table'])) {
    $currentTable = $_GET['table'];
}

// Create connection
$conn = mysqli_connect($servername, $username, $password,$db);
// Check connection
if (!$conn) {
   die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn, 'utf8');


function query($sql) {
   global $conn;
   $result = $conn->query($sql);
   $rows = [];

   if($result) {
       while($row = mysqli_fetch_array($result))
       {
           foreach($row as $key => $value) {
               if(is_int($key)) {
                   unset($row[$key]);
               }
           }

           $rows[] = $row;
       }
   }

   return $rows;
}

function getHead() { global $subDirectory; ?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Database Management</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo $subDirectory; ?>style.css">
</head>
<body>

<?php }

function getFooter() { ?>

</body>
</html>

<?php }

function getFieldType($type) {
    if(strpos($type, 'varchar') !== false) {
        return 'text';
    }

    if(strpos($type, 'int') !== false) {
        return 'number';
    }

    if(strpos($type, 'date') !== false) {
        return 'date';
    }

    return 'text';
}

function isRequired($row) {
    return $row['Null'] === 'YES' || strpos($row['Field'], 'ID') !== false;
}

function showMysqlError() { global $conn, $subDirectory, $currentTable; ?>
    <div class="container">
        <div class="alert alert-danger mt-5">
            <strong>Error!</strong> <?php echo $conn->error ?>
        </div>
        <a type="button" class="btn btn-default" data-dismiss="modal" href="<?php echo $subDirectory . '?table=' . $currentTable; ?>">Back</a>
    </div>
<?php }
