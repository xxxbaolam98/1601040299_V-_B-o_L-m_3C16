<?php
    if(isset($_SESSION['IDstudent'])) {
   $IDstu = $_SESSION['IDstudent'];
  $stu_sql = "SELECT * from student where student_id = '$IDstu'";
  $stu_query = mysqli_query($db, $stu_sql);
  $stu = mysqli_fetch_assoc($stu_query);
   }

?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.php?">FIT COURSES</a>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     


      <li class="nav-item active">
        <a class="nav-link" href="index.php?page=subject
">Subject </a>
      </li>
    


      <li class="nav-item">
      
        
         <a class="nav-link" href="index.php?page=courseRegistered"> student home </a>
       </li>
         <li class="nav-item">
        <a class="nav-link" href="index.php?page=changeInfor"> change information </a>
      </li>
              <li class="nav-item">
         <a class="nav-link" href="index.php?page=changePassword"> change password </a>    
          </li>     

          <?php 
        if(isset($_SESSION['IDstudent'])) {
        ?>

        <li class="nav-item active">
        <a class="nav-link" href="#"><strong> <?php echo $stu['full_name']; ?></strong> </a>
      </li>
        
       <?php } else { ?>
<li class="nav-item">
        <a class="nav-link" href="index.php?page=login
"> Log in </a>
      </li>
      <?php } ?>


       <li class="nav-item">
        <a class="nav-link" href="index.php?page=logout
"> Log out  </a>
      </li>
    </ul>
   

    <form class="form-inline" action="index.php?page=search" method="post" enctype="multipart/form-data">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchtext">
      <button class="btn btn-outline-success" type="submit" name="search">Search</button>
    </form>
  </div>
</nav>
