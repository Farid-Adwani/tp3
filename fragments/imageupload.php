<?php
if($_FILES["Photo"]["name"]!=""){
    //var_dump($_FILES);
    $name = $_FILES['Photo']['name'];
    $target_dir = "upload/";
    $target_file = $target_dir . basename($_FILES["Photo"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    $extensions_arr = array("jpg","jpeg","png","gif");

    if( in_array($imageFileType,$extensions_arr) ){
      $image_base64 = base64_encode(file_get_contents($_FILES['Photo']['tmp_name']) );
      $image = 'data:image/'.$imageFileType.';base64,'.$image_base64;

      move_uploaded_file($_FILES['Photo']['tmp_name'],$target_dir.$name);
    }
   
  }
?>