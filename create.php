<?php

include_once('con.php');

if(!isset($_GET['table'])) {
    echo 'wrong table name';
    die();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $fields = [];
    $values = [];
    foreach($_POST as $key => $value) {
        $fields[] = '`' . $key . '`';
        $values[]= "'" . $value . "'";
    }

    // INSERT INTO `Mitarbeiter` (`ID`, `Personalnummer`, `Name`, `Vorname`, `Geburtsdatum`, `Telefon`, `Mobil`, `E-Mail`, `Raum`, `Ist_Leiter`, `Abteilung_ID`) VALUES (NULL, '100029', 'awdawda', 'awdawd', '2020-03-03', NULL, NULL, NULL, NULL, '1', '1');
    $query = "INSERT INTO " . $currentTable ." (" . implode(',', $fields) . ") Values (" . implode(',', $values) . ")";

    $result = $conn->query($query);

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
                <h4 class="modal-title">Create new <?php echo $currentTable; ?> element</h4>
            </div>
            <div class="modal-body">
                <?php foreach(query('DESCRIBE ' . $currentTable) as $key => $row) {

                        if($row["Extra"] === 'auto_increment') {
                            continue;
                        }

                        echo '<div class="form-group">';
                        echo '<label>' . $row['Field'] . (isRequired($row) ? ' - Required Field' : '') .  '</label>';
                        echo '<input name="' . $row['Field'] . '" type="' . getFieldType($row['Type']) . '" class="form-control" value="" ' .
                            (isRequired($row) ? 'required' : '') . '>';
                        echo '</div>';
                } ?>
            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-default" data-dismiss="modal" href="<?php echo $subDirectory . '?table=' . $currentTable; ?>">Cancel</a>
                <input type="submit" class="btn btn-info" value="Save">
            </div>
        </form>
    </div>

<?php getFooter(); ?>