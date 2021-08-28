<?php
require('./includes/sql.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="báo điện tử, tin tức, luật pháp,">
    <link href="assets/css/home.css" rel="stylesheet">
    <link href="assets/css/category.css" rel="stylesheet">
    <link href="assets/css/detail.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/fontawesome/css/all.css">
</head>

<body>

    <!-- header -->

    <header class="header">
        <div class="header__top">
            <div class="container">
                <ul class="header__top-list">
                    <li>
                        <h1>
                            <a href="#"><img src="assets/img/Group 7296.png" alt=""></a>
                        </h1>
                    </li>
                    <li>
                        <ul class="left-list">
                            <li><img src="assets/img/Vector.png" alt="abc"></li>
                            <li><a class="head-7" href="#" title="Biểu tình lan ra tại Mỹ">#Biểu tình lan ra tại Mỹ</a>
                            </li>
                            <li><a class="head-7" href="#" title="Nhân sự, Đại hội Đảng các cấp">#Nhân sự, Đại hội Đảng
                                    các cấp</a></li>
                            <li><a class="head-7" href="#" title="Dịch Covid19">#Dịch Covid19</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="header__line"></div>
        <nav class="header__nav">
            <div class="container">
                <div class="header__nav-left">
                    <ul class="header__nav-list">
                        <li>
                            <a class="textmenu" href="index.php" title="Trang chủ">
                                <i class="fas fa-home"></i>
                                <!-- <img src="assets/img/Vector_home.png" alt=""> -->
                            </a>
                            <a class="textmenu" href="index.php" title="Trang chủ">TRANG CHỦ</a>
                        </li>
                        <li><a class="textmenu" href="#" title="Sự kiện">SỰ KIỆN</a></li>
                        <li><a class="textmenu" href="category.php" title="Doanh nghiệp">DOANH NGHIỆP</a> </li>
                        <li><a class="textmenu" href="#" title="Tiếp thị">TIẾP THỊ</a></li>
                        <li><a class="textmenu" href="#" title="Kinh tế">KINH TẾ</a></li>
                        <li><a class="textmenu" href="#" title="Xã hội">XÃ HỘI</a></li>
                        <li><a class="textmenu" href="#" title="Pháp luật">PHÁP LUẬT</a></li>
                        <li><a class="textmenu" href="#" title="Quốc tế">QUỐC TẾ</a> </li>
                        <li><a class="textmenu" href="#" title="Video"> VIDEO</a></li>
                        <li><a class="textmenu" href=""><i class="fas fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="header__nav-right">
                    <div id="toggle" class="textmenu"><i class="fas fa-bars"></i></div>
                <div id="close">
                    <div></div>
                    <div></div>
                </div>
                <div id="header__modal">
                    <div class="header__category-list">
                        <?php 
                            $catelist = get_listCategory();
                            foreach ($catelist as $item){
                        ?>
                        <ul class="header__category-item">
                            <li class="item-title"><a class="modal-title" href="#" title="<?php echo $item['title'];?>"><?php echo $item['title'];?></a></li>
                            <?php 
                                $id = $item['id']; 
                                $subcate = get_subcategory($id);
                                foreach ($subcate as $sub){
                            ?>
                            <li class="item-content">
                                <a class="modal-content" href="#" title="Chính trị - xã hội"><?php echo $sub['title']; ?></a>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </div>
                        <ul class="header__media-list">
                            <li class="header__media-item">
                                <a href="#" title="Video"><img src="assets/img/menu-video.png" alt="video"></a>
                                <a class="modal-subtitle" href="#" title="Video">
                                    video
                                </a>
                            </li>
                            <li class="header__media-item">
                                <a href="#" title="Ảnh"> <img src="assets/img/menu-image.png" alt="Anh"></a>
                                <a class="modal-subtitle" href="#" title="Ảnh">
                                    ảnh
                                </a>
                            </li>
                            <li class="header__media-item">
                                <a href="#" title="Infographic"><img src="assets/img/menu-infographic.png"
                                        alt="Infographic"></a>
                                <a class="modal-subtitle" href="#" title="Infographic">
                                   infographic
                                </a>
                            </li>
                            <li class="header__media-item">
                                <a href="#" title="Emagazine"><img src="assets/img/menu-emagazine.png"
                                        alt="Emagazine"></a>
                                <a class="modal-subtitle" href="#" title="Emagazine">
                                    emagazine
                                </a>
                            </li>
                            <li class="header__media-item">
                                <a href="#" title="Tạp chí in"><img src="assets/img/menu-magazine.png"
                                        alt="Magazine"></a>
                                <a class="modal-subtitle" href="#" title="Tạp chí in">
                                    tạp chí in
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>