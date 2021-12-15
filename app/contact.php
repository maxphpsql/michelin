<?php
include 'functions.php';
// Your PHP code here.
// Home Page template below.
?>
   <?=template_header('contact')?>
<form action="contact.php" method="post" >
  <div class="row">
    <div class="col">
      <input type="text" name="nom" class="form-control" placeholder="nom" required>
    </div>
    <div class="col">
      <input type="text"  name="prenom"  class="form-control" placeholder="prénom" required>
    </div>
  </div>
  <button class="btn btn-primary" type="submit"> Button </button>

</form>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // recuperer la variable $post et la 
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    // tester les champs
    if (empty($nom)) {
        echo "le nom est vide merci de le remplir <br>";   
    } else {
      echo 'votre nom est <b>'. $nom .'</b> <br>';

    }

    if (empty($prenom)) {
        echo "le prenom est vide merci de le remplir <br> ";
    } else {
        echo 'votre prénom est <b>'.$prenom.'</b> <br>';
    }
}

?>
<?=template_footer()?>

