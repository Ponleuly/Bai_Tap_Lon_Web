
<?php
	
	if(isset($_POST['dangnhap'])){
		$taikhoan = $_POST['taikhoan'];
		$matkhau = md5($_POST['password']);
		$sql = "SELECT * FROM tbl_dangky ,tbl_admin WHERE tbl_dangky.taikhoan='".$taikhoan."' AND tbl_dangky.matkhau='".$matkhau."'  LIMIT 1";
		$row = mysqli_query($connect,$sql);
		$count = mysqli_num_rows($row);
		if($count>0){
			$row_data = mysqli_fetch_array($row);
			$_SESSION['dangky'] = $row_data['taikhoan'];
			$_SESSION['email'] = $row_data['email'];
            $_SESSION['id_khachhang']= $row_data['id_khachhang'];
			header("Location:index.php");
		}elseif($taikhoan=='admin'){
            header("Location:admin/login.php");
        }else{
			echo '<p style="color:black">Mật khẩu hoặc Email sai ,vui lòng nhập lại.</p>';
        }
	} 
?>


<section class="banner" style="background: url('images/banner.jpg');
    background-size: cover;
    height: 500px;"></section>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_login.css">
    <title>Login</title>
</head>
<body>
    <div class="new_product">
        <h2>Đăng nhập</h2>
    </div>
   <div class="wrapper">
        <div class="sign_in">
            <form action="" method="POST">
                <table>
                    <tr>
                        <td><p>Tên Tài khoản</p></td>
                    </tr>
                    <tr>
                        <td><input type="text" size="40" name="taikhoan" ></td>
                    </tr>
                    <tr>
                        <td><p>Mật khẩu</p></td>
                    </tr>
                    <tr>
                        <td><input type="password" size="40" name="password"></td>
                    </tr>
                    <tr>
                        <td><a href="#">Quên mật khẩu?</a></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="dangnhap" value="ĐĂNG NHẬP​"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>