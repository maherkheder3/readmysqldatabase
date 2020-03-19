<?php
ini_set('display_errors', 1);
include_once('con.php');

$tablesList = query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA LIKE '" . $db . "'");

getHead();
?>

<div class="container">
    <div class="col-xs-12 mt-5">
        <select class="custom-select"
                onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
            <?php foreach($tablesList as $table) { ?>
                <option
                    value="<?php echo $subDirectory . '?table=' . $table['TABLE_NAME']; ?>"
                    <?php echo $table['TABLE_NAME'] === $currentTable ? 'selected' : '' ?>
                    ><?php echo $table['TABLE_NAME']; ?>
                </option>
            <?php } ?>
        </select>
    </div>
    <?php if(isset($_GET['delete_succeeded']) && $_GET['delete_succeeded'] === 'true') { ?>
        <div class="col-xs-12">
            <div class="alert alert-success mt-4">
                <strong>Success!</strong> the element is deleted.
            </div>
        </div>
    <?php } ?>
    <div class="table-title mb-0">
        <div class="row">
            <div class="col-sm-6">
                <h2>Manage <b><?php echo $currentTable; ?></b></h2>
            </div>
            <div class="col-sm-6">
                <a href="<?php echo $subDirectory . 'create.php?table=' . $currentTable; ?>" class="btn btn-success" data-toggle="modal">
                    <i class="material-icons">&#xE147;</i> <span>Add New Employee</span>
                </a>
            </div>
        </div>
    </div>
    <div class="table-wrapper mt-0">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>Actions</th>
                    <?php foreach(query('select * from ' . $currentTable) as $key => $row) { ?>
                            <?php foreach($row as $rKey => $rValue) {
                                // var_dump($row); break;
                                echo '<th>' . $rKey . '</th>';
                            } ?>
                    <?php break; } ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach(query('select * from ' . $currentTable) as $key => $row) { ?>
                    <tr>
                        <td>
                            <a href="<?php echo $subDirectory . 'edit.php?id=' . $row['ID'] . '&table=' . $currentTable; ?>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="<?php echo $subDirectory . 'delete.php?id=' .  $row['ID'] . '&table=' . $currentTable; ?>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                        <?php foreach($row as $rKey => $rValue) {
                            echo '<td>' . ($rValue ? $rValue : 'NULL') . '</td>';
                        } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>

<?php getFooter(); ?>