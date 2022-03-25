<?php
$mysqli = new mysqli("localhost","root","","cardiac center");

if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
$n=$_POST['n'];
$sql = "SELECT * FROM medicine WHERE med_n = '$n' ";
$result = $mysqli -> query($sql);

// Associative array
$row = $result -> fetch_assoc();
// printf ("%s (%s)\n", $row["med_n"], $row["med_code"]);



    session_start();

    if (!isset($_SESSION['member_HN'])) {
        $_SESSION['msg'] = "You must log in first";
        header('location: start.php');
    }

    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['member_HN']);
        header('location: start.php');
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cardiac center</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
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
    <link rel="stylesheet" href="/css/styles_web_p.css" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="PT-web_p.php"
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
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">ตารางรับประทานยา</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="PT-web_p.php?logout='1'">ออกจากระบบ</a>
            </li>
        </div>
      </div>
    </nav>


    <!-- <td><?php echo $row['med_code']; ?></td>
    <td><?php echo $row['med_n']; ?></td>
    <td><?php echo $row['med_w']; ?></td> -->
    <br>
    <div class="row">
        <div class="card information col-sm-7 infor">
          <p class="card-title-head"><b>ข้อมูลยา</b></p>
   
                        
                        <form class="w3-container">
                          <div class="w3-section">
                            <div class="item-information">
                              <label class="w3-margin-bottom col-auto"><b>ชื่อยา:</b></label>
                              <div class="information-text">
                                <p><?php echo $row['med_n']; ?></p>
                              </div>
                            </div>
                            <div class="img-medicine">
                              <img
                                src="med_pm/<?php echo $row["med_pp"] ;?>" width="100px" heigth="100px" 
                                alt="logo"
                                style="width: 20%"
                                class="w3-margin-top"
                              />
                              <img
                                src="med_pm/<?php echo $row["med_pm"] ;?>" width="100px" heigth="100px"
                                alt="logo"
                                style="width: 40%"
                                class="w3-margin-top"
                              />
                            </div>
                            <div class="item-information">
                              <label class="w3-margin-bottom col-auto"><b>สรรพคุณของยา:</b></label>
                              <div class="information-text">
                                <p><?php echo $row['med_p']; ?></p>
                              </div>
                            </div>
                            <div class="item-information">
                              <label class="w3-margin-bottom col-auto"><b>ผลข้างเคียง:</b></label>
                              <div class="information-text">
                              <p><?php echo $row['med_e']; ?></p>
                              </div>
                            </div>
                            <div class="item-information">
                              <label class="w3-margin-bottom col-auto"><b>คำเตือน:</b></label>
                              <div class="information-text">
                                <p><?php echo $row['med_w']; ?></p>
                              </div>
                            </div>
                          </div>
                        </form>
                        </div>
                        </div>
</body>
</html>