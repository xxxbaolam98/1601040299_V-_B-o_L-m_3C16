<?php 
      require_once 'dbase/dbase.php';
      include 'include/head.php';
      include 'include/navibar.php';

 ?>
<!-- header -->

     <div id="main">
 <?php
 if(isset($_SESSION['IDstudent'])) {
if(!isset($_GET['page'])){
  include 'page/courseRegistered.php';
} else {
  $page=$_GET['page'];
  include 'page/'.$page.'.php';
}
}
  else {
  	header("Location: login.php");
  }


 ?>

</div>
<?php
include 'include/footer.php';
?>