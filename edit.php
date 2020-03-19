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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $fields = [];
    $values = [];
    foreach($_POST as $key => $value) {
        $values[]= "`" . $key . "` = '" . $value . "'";
    }

    $result = $conn->query("UPDATE `" . $currentTable ."` SET " . implode(',', $values) . " WHERE id = '" . $id . "'");

    if($result) {
        header('Location: ' . $subDirectory . '?table=' . $currentTable);
    }
    else {
        getHead();
        showMysqlError();
        getFooter();
    }
}

getHead();
?>

    <div class="container">
        <form method="POST" style="max-width: 600px; margin: 0 auto">
            <div class="modal-header">
                <h4 class="modal-title">Edit <?php echo $currentTable; ?></h4>
            </div>
            <div class="modal-body">
                <?php foreach(query('select * from ' . $currentTable . ' WHERE id = ' . $id) as $key => $row) { ?>

                    <?php foreach($row as $rKey => $rValue) { ?>

                    <div class="form-group">
                            <label><?php echo $rKey; ?></label>
                            <input name="<?php echo $rKey; ?>" type="text" class="form-control" value="<?php echo $rValue; ?>">
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-default" data-dismiss="modal" href="<?php echo $subDirectory . '?table=' . $currentTable; ?>">Cancel</a>
                <input type="submit" class="btn btn-info" value="Save">
            </div>
        </form>
    </div>

<?php getFooter(); ?>
