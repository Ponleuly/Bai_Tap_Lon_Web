<section class="banner" style="background: url('images/banner.jpg');
    background-size: cover;
    height: 500px;">
</section>
<style type="text/css">
	table.dangky tr td {
	    padding: 5px;
	}

</style>

<!-- Navigation bar of Dang Ky -->
<div class="new_product">
      <h2>Đăng ký</h2>
</div>
<div class="wrapper">
	<div class="sign_up">
		<form action="" method="POST">
			<table>
				<tr>
					<td><p>Họ và Tên</p></td>
				</tr>
				<tr>
					<td><input type="text" size="40" name="hovaten" ></td>
				</tr>
				<tr>
					<td><p>Tên Tài khoản</p></td>
				</tr>
				<tr>
					<td><input type="text" size="40" name="taikhoan"></td>
				</tr>
				<tr>
					<td><p>Mật khẩu</p></td>
				</tr>
				<tr>
					<td><input type="password" size="40" name="matkhau"></td>
				</tr>
				<tr>
					<td><p>Nhập lại mật khẩu</p></td>
				</tr>
				<tr>
					<td><input type="password" size="40"  name="rematkhau"></td>
				</tr>
				<tr>
					<td><p>Email</p></td>
				</tr>
				<tr>
					<td><input type="text" size="40"  name="email"></td>
				</tr>
				<tr>
					<td><p>Điện thoại</p></td>
				</tr>
				<tr>
					<td><input type="text" size="40"  name="dienthoai" ></td>
				</tr>
				<tr>
					<td><p>Địa chỉ</p></td>
				</tr>
				<tr>
					<td><textarea name="diachi"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" size="40" name="dangky" value="ĐĂNG KÝ"></td>
				</tr>
				<tr>
					<td class="dangnhap"><a  href="index.php?quanly=dangnhap">Có tài khoản ? Đăng nhập.</a></td>
				</tr>
			</table>
		</form>
	</div>
</div>

<?php
	if(isset($_POST['dangky'])) {
		$tenkhachhang = $_POST['hovaten'];
		$taikhoan= $_POST['taikhoan'];
        $matkhau = md5($_POST['matkhau']);
        $rematkhau=  md5($_POST['rematkhau']);
		$email = $_POST['email'];
		$dienthoai = $_POST['dienthoai'];
		$diachi = $_POST['diachi'];
		if (!$tenkhachhang || !$taikhoan || !$matkhau || !$rematkhau || !$email || !$dienthoai || !$diachi)
		{
			echo '<p style="color:red; text-align: center; font-size:18px">Vui lòng nhập đầy đủ thông tin.</p>';
			
			
		}elseif($matkhau!=$rematkhau){
			echo "mat khau chua trung"; 

		}
		else{
	
			
			$sql_dangky = "INSERT INTO tbl_dangky(hovaten,taikhoan,matkhau,sodienthoai,email,diachi) VALUE('".$tenkhachhang."','".$taikhoan."','".$matkhau."','".$dienthoai."','".$email."','".$diachi."')";
			$query_dangky=mysqli_query($connect,$sql_dangky);
			if($query_dangky){
				echo '<p style="color:red; text-align: center; font-size:18px"style="color:green; text-align: center;">Bạn đã đăng ký thành công</p>';
				$_SESSION['dangky'] = $taikhoan;
				$_SESSION['email'] = $email;
				$_SESSION['id_khachhang'] = mysqli_insert_id($connect);
				
				}
			}
		}	
?>
</div>