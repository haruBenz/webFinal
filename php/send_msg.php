<?php

include_once 'Dbconnects.php';

if(isset($_POST['send'])){
  $HN = $_POST['HN'];
  $message = $_POST['message'];
  date_default_timezone_set("Asia/Bangkok");
  $date = date('y-m-d h:i:s');

  $sql_insert = mysqli_query($connect,"INSERT INTO message(HN, message, cr_date) VALUES ('$HN', '$message', '$date')");
  if($sql_insert){
    echo "<script>alert('message send successfully');</script>";
  }else{
    echo mysqli_error($connect);
    exit;
  }
}

session_start();

    if (!isset($_SESSION['username'])) {
        $_SESSION['msg'] = "You must log in first";
        header('location: start.php');
    }

    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['username']);
        header('location: start.php');
    }

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cardiac center</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/styles_msg.css" />
    <link rel="stylesheet" href="/css/styles_web_p.css" />
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="/php/insertForm.php"
          ><img
            src="/img/heart.png"
            width="60"
            height="50"
            class="d-inline-block align-text-center"
          />Cardiac Center</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto my-2 my-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link" href="patients-lits.php">รายชื่อผู้ป่วย</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="/php/insertForm.php">ลงทะเบียนผู้ป่วย</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/php/update.php">เพิ่มข้อมูลยา</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/php/order.php">การสั่งยา</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="/php/send_msg.php ">ข้อความ</a>
            </li>
            <li class="nav-item">
            <?php if (isset($_SESSION['username'])) : ?>
              <a class="nav-link" href="send_msg.php?logout='1'">ออกจากระบบ</a>
              <?php endif ?>
            </li>
          </ul>
        </div>
      </div>
    </nav>
      <div class="" id="center">
          <div class="row">
              <div class="col-sm-4"></div>
              <div class="col-sm-4">
                    <form method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">รหัสผู้ป่วย</label>
                            <input type="text" class="form-control" name="HN" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="รหัสผู้ป่วย"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextareal">ข้อความ</label>
                            <textarea class="form-control" name="message" id="exampleFormControlTextareal" rows="3"></textarea>
                        </div>
                        <div class="center-align">
                          <button type="submit" name="send" class="btn btn-primary" >Submit</button>
                        </div>
                    </form>

              </div>
              <div class="col-sm-4"></div>
          </div>
      </div>
    

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

   
      
                        
                        
                        
         

