<?php 

include("src/header.php");
include("src/conection.php");
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Dashboard</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard </li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>
                           <?php
                           $count_donors=mysqli_query($conection,"SELECT count(*)FROM  blooddonor ");
                           while($countArray=mysqli_fetch_array($count_donors)){
                            echo $countArray[0];
                           }
                           
                           ?>
                            </h3>

                            <p style="font-size:20px;">Blood Donors</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <a href="donor.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                
               
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-primary">
                        <div class="inner">
                            <h3>
                            <?php
                                $count_chariyah=mysqli_query($conection,"SELECT  COUNT(*) FROM   chariyah ");
                                while ($countArray=mysqli_fetch_array($count_chariyah)) {
                                   echo $countArray[0];
                                }
                                
                                ?>
                            </h3>

                            <p>Chariyah</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-money"></i>
                        </div>
                        <a href="Chariyah.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-primary">
                        <div class="inner">
                            <h3>
                            <?php
                                $count_sadaqah=mysqli_query($conection,"SELECT  COUNT(*) FROM   sadaqah ");
                                while ($countArray=mysqli_fetch_array($count_sadaqah)) {
                                   echo $countArray[0];
                                }
                                
                                ?>
                            </h3>

                            <p>Sadaqah</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-money"></i>
                        </div>
                        <a href="sadaqah.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>
                            <?php
                                $count_users=mysqli_query($conection,"SELECT  COUNT(*) FROM   users ");
                                while ($countArray=mysqli_fetch_array($count_users)) {
                                   echo $countArray[0];
                                }
                                
                                ?>
                            </h3>

                            <p>Users</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <a href="Users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->

            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
        <div>
            
        </div>
    </section>
    <!-- /.content -->
</div>


<!-- /.content-wrapper -->
<?php include("src/footer.php")?>