<?php
if(isset($_POST['search'])){
  $search=$_POST['searchtext'];
  if(empty($search)){
    header("Location: index.php?page=subject");
  }

  $sql_search = "SELECT * FROM subject WHERE `name` LIKE '%$search%'";
   $list = 0;
   if(!empty($sql_search)){
   
   
    $query_search = mysqli_query($db,$sql_search);
     if($query_search= mysqli_query($db,$sql_search)){
     $search = mysqli_fetch_assoc($query_search); 
     }
}

?>

<div class="container">
    <div class="row">
        <div class="col-md-12 col-md-10 col-md-offset-1">
            <table class="table">
                <thead>
                    <tr>
                       <th>list</th>                  
                        <th >name</th>
                        
                        <th> </th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                   
                     
                    <tr>
                         <?php do {  $list = $list + 1;   ?>
                      

                      <td>
                           
                                <h5><?= $list; ?></h5>
                                                 
                        </td>
                      


                        <td class=""><strong><a href="index.php?page=course&IDsubject=<?=$search['id'];?>"><?= $search['name']; ?></a>
                              </strong></td>

                  <?php } while($search = mysqli_fetch_assoc($query_search)); ?>

                    </tr>
                  <?php
                     
                     }

                   ?>

