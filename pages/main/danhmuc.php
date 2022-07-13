 <section class="banner" style="background: url('images/banner.jpg');
    background-size: cover;
    height: 500px;"></section>
<div class="new_product">
      <h2>Danh mục</h2>
   </div>

<?php
    // GET id là lấy id từ bên MENU.php 
    $sql_show ="SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhmuc='$_GET[id]' ORDER BY id_sanpham DESC";
    $query_show =mysqli_query($connect,$sql_show);
   
    //get ten danh muc
    $sql_cate ="SELECT * FROM tbl_danhmuc WHERE id_danhmuc='$_GET[id]' LIMIT 1";
    $query_cate =mysqli_query($connect,$sql_cate);
    $row_title =mysqli_fetch_array($query_cate);
?>
<h2 style="margin-top: 10px;text-align: center;">  
    <?php 
            if(isset($row_title['tendanhmuc'])){
                echo $row_title['tendanhmuc'];
            }else{
                echo "lỗi không lấy được data";
            }
    ?>

</h2>
<ul class="product_list">
    <?php
        while($row_pro=mysqli_fetch_array($query_show)){
    ?>
                    <li> 
                        <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanpham'] ?>">
                            <img src="admin/modules/quanlysp/uploads/<?php echo $row_pro['hinhanh'] ?>">
                            <p class="title_product"> <?php echo $row_pro['tensanpham'] ?></p>
                            <p class="price_product">Giá: <?php echo number_format($row_pro['giasanpham'],0,',','.').'vnd' ?></p>
                        </a>
                    </li>
    <?php
        }
    ?>
                   
</ul>
