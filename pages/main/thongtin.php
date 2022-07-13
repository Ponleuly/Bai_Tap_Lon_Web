<section class="banner" style="background: url('images/banner.jpg');
    background-size: cover;
    height: 500px;"></section>


 <style>
    .thongtin{
        width: 50%;
        height: 400px;
        margin-left: 25%;
        border: 2px solid #e74c3c;
        text-align: center;
        border-radius: 15px;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    p{
        text-align: center;
        font-size: 18px;
        color: black;
        font-family: 'Roboto Slab', serif
    }
 </style>
 <div class="new_product">
      <h2>Thông tin cá nhân</h2>
   </div>
<div class="thongtin">
 <h2>Thông tin cá nhân </h2>
 <p><?php
        if(isset($_SESSION['dangky'])){
            echo 'xin chào: '.'<span style="color:red">'.$_SESSION['dangky'].'</span>';
            $id =$_SESSION['dangky'];
            $sql_thongtin ="SELECT * FROM tbl_dangky WHERE taikhoan='$id' LIMIT 1";
            $query_thongtin=mysqli_query($connect,$sql_thongtin);
            
            while($row=mysqli_fetch_array($query_thongtin)){
            
        
  ?></p>
    <p>Họ và tên : <?php echo $row['hovaten']  ?></p>
    <p>Email : <?php echo $row['email']  ?></p>
    <p>Địa chỉ : <?php echo $row['diachi']  ?></p>
    <p>Số điện thoại : <?php echo $row['sodienthoai']  ?></p>
    


<?php
            }
    }

    ?>
</div>