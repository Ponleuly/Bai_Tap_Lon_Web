<?php
     $sql_danhmuc="SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
     $query_danhmuc=mysqli_query($connect,$sql_danhmuc);
     

?>
<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangky']);
	} 
?>
<div class="menu-header">

    <label class="logo">
        <h3>SPORT ACCESSORIES</h3>
    </label>
            <ul class="menu_list">
                <li> <a href="index.php"><i class="fa fa-home"></i></a></li>
                <li><a href="">Danh mục</a>
                    <ul class="menu_danhmuc">
                        <?php
                                while($row_danhmuc=mysqli_fetch_array($query_danhmuc)){

                                ?>
                                <li><a href="index.php?quanly=danhmuclist&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc']?></a></li>

                                <?php
                                    }

                                ?>
                    </ul>
                </li>
                <?php
                    if(isset($_SESSION['dangky'])){
                ?>
                
                <li><a href="index.php?quanly=giohang">Giỏ hàng</a></li>
                <li><a href="index.php?quanly=lichsudonhang"> Lịch sử</a></li> 
                <li><a href="index.php?quanly=contact"><i class="fa fa-phone"></i></a></li> 
                <li><a href="index.php?quanly=thongtin"><i class="fa fa-user"></i></a></li>
                <li><a href="index.php?dangxuat=1"><i class="fa fa-sign-out"></i></a></li>
                <?php
                    }else{
                ?>
                     <li><a href="index.php?quanly=dangnhap">Đăng nhập</a></li>
                     <li><a href="index.php?quanly=dangky">Đăng ký</a></li>
                <?php
                    }
                ?>
                <Form method="POST" action="index.php?quanly=timkiem"> 
                    <div class="search" >
                        <input type="text" placeholder="sreach....." name="tukhoa">
                        <button type="submit" name="timkiem"><i class="fa fa-search"></i></button>
                    </div>
                </Form>
                
            </ul>
 </div>
