<?php
session_start();
$pageTitle = 'home';
include_once 'autoload.php';
include_once 'fragments/header.php';
include_once 'isNotAuthenticated.php';
include_once 'fragments/alertSuccess.php';
$bdd=new Requete('personne');
$req=$bdd->findAll();
$bdd2=new Requete('historique');
$req2=$bdd2->findAll();

?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="home.php"><?php echo $_SESSION['prénomadmin'].'  '.$_SESSION['nomadmin'];  ?></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">Disconnect</a>
      </li>
    
    </ul>
    
  </div>
</nav>
<center>
<button class="btn btn-outline-dark" onclick="add();" data-bs-toggle="collapse" data-bs-target=".needs-validation" aria-expanded="false" >Add</button>
<button class="btn btn-outline-info" onclick="modify();" data-bs-toggle="collapse" data-bs-target=".needs-validation" aria-expanded="false" >Modify</button>
<button button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".historique" aria-expanded="false"">Historique</button>
<button class="btn btn-danger" onclick="deletee();">Delete</button>
</center>
  <!-- add -->

    
  <form class="needs-validation collapse"  method="POST" action="submitadd.php" enctype="multipart/form-data">
  <div class="form-row" id="listmodify" >
    <?php 
    $nom="ID";
    $valeur="##";
    $type="text";
    $disabled="readonly";
    include 'fragments/formcollapse.php';
    $nom="Nom";
    $valeur="Foulen";
    $type="text";
    $disabled="";
    include 'fragments/formcollapse.php';
    $nom="Prénom";
    $valeur="Fouleni";
    include 'fragments/formcollapse.php';
    $nom="Age";
    $valeur="18";
    $type="number";
    $disabled=" min=0 max=150";
    include  'fragments/formcollapse.php';
    $nom="Sexe";
    $valeur="Homme";
    $type="text";
    $disabled="";
    include  'fragments/formcollapse.php';
    $nom="Email";
    $valeur="aaaa@aaa.aaa";
    $type="email";
    $disabled="";
    include  'fragments/formcollapse.php';
    $nom="Numéro_GSM";
    $valeur="22222222";
    $type="number";
    $disabled="min=20000000 max=99999999";
    include  'fragments/formcollapse.php';
    $nom="Poste";
    $valeur="....";
    $type="text";
    $disabled="";
    include  'fragments/formcollapse.php';
    $nom="Photo";
    $valeur="";
    $type="file ";
    $disabled="";
    include  'fragments/formcollapse.php';
   ?>    
  </div >
  <button class="btn
   btn-primary " type="submit" >OKAY!</button>
</form>

 <!-- historique -->
<div class="collapse historique">

<?php  if($req2){  ?>
<table class="table table-striped table-info">
  <thead>
    <tr>
      <th scope="col">#</th>
    <?php foreach($req2[0] as $champ=> $valeur) {?>
        <th scope="col"><?php echo $champ ?></th>
   <?php } ?>
    </tr>
  </thead>
 
  <tbody>
  <?php $i=0; foreach($req2 as $obj) { $i++ ; ?>
    <tr>
      <th scope="row" class="form-check-inline">
        <?php echo $i;  ?> 
      </th>
      <?php foreach($obj as $champ=> $valeur) {?>
      <td><?php echo $valeur  ?></td>
      <?php } ?>
    </tr>
    <?php } } ?>
   
  </tbody>
</table>
</div>



<?php if($req) { ?>
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
    <?php foreach($req[0] as $champ=> $valeur) {?>
        <th scope="col"><?php echo $champ ?></th>
   <?php } ?>
    </tr>
  </thead>
 
  <tbody>
  <?php $i=0; foreach($req as $obj) { $i++ ; ?>
    <tr>
      <th scope="row" class="form-check-inline">
        <input class="form-check-input" type="radio" name="a"  id=<?php echo "c".$obj->ID ?>> 
        <?php echo $i;  ?> 
      </th>
      <?php foreach($obj as $champ=> $valeur) { if($champ=="Photo") { ?>
        <td><a href=<?php echo "upload/".$valeur  ?>><?php echo $valeur  ?></a></td>
      <?php }else { ?>
      <td><?php echo $valeur  ?></td>
      <?php } }?>
    </tr>
    <?php } ?>
   
  </tbody>
</table>
<?php }else{ ?>
<div class="container-container-fluid text-center  alert-warning alert">Aucune personne n'est enregistrer dans la base de donnée</div>
<?php }?>
<?php 
?>



<!-- script -->
  

<script >
  
function deletee() {
   if(getPersonneId()){
    window.location.href="delete.php?y="+getPersonneId();
  }else alert("Please choose what would you like to DELETE <°-°>");
}
function modify() {
  if(getPersonneId()){
    id=getPersonneId();
    c=document.getElementById("c"+id).parentElement.parentElement.children;
    c=Array.from(c);
    c=c.slice(1);
    d=document.getElementById("listmodify").children;
    d=Array.from(d);
    i=0;
    d.forEach((x)=>{
        alert(c[i].textContent);
        x.firstElementChild.nextElementSibling.setAttribute("value",c[i].textContent);
    i++;
  });   
  
     
     
  }else {
    window.location.href="home.php";
    alert("Please choose what would you like to MODIFY <°-°>");
    
  }
}
function add(){  
    document.querySelector('#ID').setAttribute('value',"##");
  }
function getPersonneId() {
  x=document.querySelectorAll('[id^="c"]');
   y="";
  x.forEach((comp)=> { if(comp.checked==true){ y=comp.id;}});
  if(y!=""){
    y=y.slice(1);}
    return y;
}
</script>

</body>
</html>