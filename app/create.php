
<?php
include 'functions.php';
//librairie upload
include 'up.php';
// connexion a la base
$pdo = pdo_connect_mysql();
// 
$msg = '';
// Check if POST data is not empty
if (!empty($_POST)) {
    // Post data not empty insert a new record
    // Set-up the variables that are going to be inserted, we must check if the POST variables exist if not we can default them to blank
    $id = isset($_POST['id']) && !empty($_POST['id']) && $_POST['id'] != 'auto' ? $_POST['id'] : NULL;
    // Check if POST variable "name" exists, if not default the value to blank, basically the same for all variables
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $phone = isset($_POST['phone']) ? $_POST['phone'] : '';
    $title = isset($_POST['title']) ? $_POST['title'] : '';

    // nom du fichier en base
    $fileToUpload = isset($_POST['fileToUpload']) ? $_POST['fileToUpload'] : '';
    //objet files 
    $fileToUpload = $_FILES["fileToUpload"]["name"];
    // 
    $created = isset($_POST['created']) ? $_POST['created'] : date('Y-m-d H:i:s');

    //try this
    // echo '<pre>';
    // var_dump($_POST);
    // echo '</pre>';

    // echo '<pre>';
    // var_dump($_FILES);
    // echo '</pre>';
    // Insert new record into the contacts table
    $stmt = $pdo->prepare('INSERT INTO contacts VALUES (?, ?, ?, ?, ?, ?, ?)');
    $stmt->execute([$id, $fileToUpload, $name, $email, $phone, $title, $created]);
    // Output message
    $msg = 'Created Successfully!';
}
// début traitement formulaire

?>
<?=template_header('créer mes valeurs dans Mysql ')?>

<div class="content update">
	<h2>Create Contact</h2>

    <form action="create.php" method="post" enctype="multipart/form-data">
        <label for="id">ID</label>
        <label for="name">Name</label>
        <input type="text" name="id" placeholder="26" value="auto" id="id">
        <input type="text" name="name" placeholder="John Doe" id="name">
        <label for="email">Email</label>
        <label for="phone">Phone</label>
        <input type="text" name="email" placeholder="johndoe@example.com" id="email">
        <input type="text" name="phone" placeholder="2025550143" id="phone">
        <label for="title">Title</label>
        <label for="created">Created</label>
        <input type="text" name="title" placeholder="Employee" id="title">
        <input type="datetime-local" name="created" value="<?=date('Y-m-d\TH:i')?>" id="created">
        <!-- fonctionnalité upload -->
        <label>Selectionner une image a uploader : </label>
        <input type="file" name="fileToUpload" id="fileToUpload">
        <!-- <input type="submit" value="Upload Image" name="submit"> -->
        <input type="submit" value="Create">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>
<?=template_footer()?>