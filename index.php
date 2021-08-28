
<?php
include "./layouts/header.php";
?>

<div class="main">
        <div class="container">
            <div class="container__news1">
                <div class="container__news1-left">
                    <?php
                        $hightlightleft = get_hightLightLeft();
                        foreach ($hightlightleft as $item){ 
                        $row = get_Category($item['FK_category']);
                        ?>
                            <div class="left-category">
                                <a class="subtitle" href="#" title="<?php echo $row['title']; ?>"><?php echo $row['title']; ?></a>
                            </div>
                            <h6>
                                <a href="#" class="head-6"
                                    title="<?php echo $item['title']; ?>">
                                    <?php echo $item['title']; ?>
                                </a>
                            </h6>
                    <?php } ?>
                </div>
                <div class="container__news1-center">
                    <?php
                        $hightlight = get_hightLight();
                        $FK_category = $hightlight['FK_category'];
                        $row = get_Category($FK_category);
                        $img = get_Image($row['id']);
                    ?>
                    <a href="#"
                        title="<?php echo $hightlight['title']; ?>">
                        <img class="center-img" src="assets/img/<?php echo $img['imgurl']; ?>" alt="img1">
                    </a>
                    <div class="center-category"><a class="subtitle" href="#" title="<?php echo $row['title']; ?>"><?php echo $row['title']; ?></a></div>
                    <h2>
                        <a href="#" class="head-2"
                            title="<?php echo $hightlight['title']; ?>">
                                <?php echo $hightlight['title']; ?>
                        </a>
                    </h2>
                    <div class="center-content sapo1"><?php echo $hightlight['brief']; ?></div>
                </div>
                <!-- <div class="container__line"></div> -->
                <ul class="container__news1-right">
                    <?php
                    $hightlightright = get_hightLightRight();
                    foreach ($hightlightright as $item){ 
                    $row = get_Category($item['FK_category']);
                    $img = get_Image($item['id']);
                    ?>
                    <li class="news1-right--news">
                        <h4>
                            <a href="#" class="head-4"
                                title=' <?php echo $item['title']; ?>'>
                                <?php echo $item['title']; ?>
                            </a>
                        </h4>
                        <div class="right-contents">
                            <a href="#"
                                title=' <?php echo $item['title']; ?>'>
                                <img src="assets/img/<?php echo $img['imgurl'] ?>" alt="anh" class="right-img">
                            </a>
                            <div class="right-main">
                                <!-- <div class="right-category"> -->
                                <a class="subtitle" href="#" title="<?php echo $row['title']; ?>"><?php echo $row['title']; ?></a>
                                <!-- </div> -->
                                <p class="right-content sapo1"><?php echo $item['brief']; ?></p>
                            </div>
                        </div>
                    </li>
                    <?php } ?>
                </ul>
            </div>
            <div class="container__lines">
                <div class="container__line-odd"></div>
                <div class="container__line-even"></div>
                <div class="container__line-odd"></div>
                <div class="container__line-even"></div>
                <div class="container__line-odd"></div>
            </div>
            <div class="container__news2">
                <div class="container__news2-left">
                    <div class="container__news2-left--first">
                        <div class="news2-nav">
                            <a href="#" class="heading-box" title="Tiếp thị">TIẾP THỊ</a>
                            <ul class="news2-nav-right">
                                <li><a href="#" title="Thương mại">thương mại</a></li>
                                <li><a href="#" title="Văn hoá tiếp thị">văn hoá tiếp thị</a></li>
                                <li><a href="#" title="Hội nhập">hội nhập</a></li>
                                <li><a href="#" title="Marketing 4.0">marketing 4.0</a></li>
                            </ul>
                        </div>
                        <div class="news2-list">
                            <!-- <div class="news2-list"> -->
                                <?php 
                                    $marketingnews = get_marketingNews();
                                    foreach ($marketingnews as $item) {
                                        $img = get_Image($item['id']);
                                ?>
                                <div class="news2-content">
                                    <a href="#" title="<?php echo $item['title']; ?>"><img
                                            src="assets/img/<?php echo $img['imgurl']; ?>" alt="anh"></a>
                                    <h6><a class="head-6" href="#"
                                            title="<?php echo $item['title']; ?>"
                                            class="news2-title">
                                            <?php echo $item['title']; ?>
                                        </a></h6>
                                </div>

                                <?php } ?>
                            <!-- </div> -->
                        </div>
                    </div>
                    <div class="news2-left--line"></div>

                    <div class="container__news2-left--second">
                        <?php
                        $mainnews1 = get_mainNews1();
                        foreach ($mainnews1 as $item){ 
                        $row = get_Category($item['FK_category']);
                        $img = get_Image($item['id']);
                        ?>
                        <div class="news2-second--content">
                            <a href="#"
                                title="<?php echo $item['title']; ?>"><img
                                    src="assets/img/<?php echo $img['imgurl']; ?>" alt="anh"></a>
                            <div class="second--contents">
                                <h3>
                                    <a class="head-3" href="#" class="second-title"
                                        title="<?php echo $item['title']; ?>">
                                        <?php echo $item['title']; ?>
                                    </a>
                                </h3>
                                <div class="second-category"><a class="subtitle" href="#" title='<?php echo $row['title']; ?>'>
                                    <?php echo $row['title']; ?>
                                </a>
                                </div>
                                <div class="sapo1"><?php echo $item['brief']; ?></div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="container__news2-left--third">
                        <div class="news2-emagazine">
                            <div class="news2-category"><a class='heading-box' href="#" title="Emagazine">Emagazine</a>
                            </div>
                            <div class="news2-emagazine--list">
                                <?php
                                    $emagazine = get_emagazine();
                                    foreach ($emagazine as $item){ 
                                    $img = get_Image($item['id']);
                                ?>
                                <div class="news2-emagazine--contents">
                                    <a style="background-image: url('assets/img/<?php echo $img['imgurl']; ?>');" class="emagazine-img" href="#" title='<?php echo $item['title']; ?>'>
                                        <img src="assets/img/eMagazine.png" alt="anh">
                                    </a>
                                    <h6 class="news2-emagazine--title"><a class="head-6" href="#"
                                            title='<?php echo $item['title']; ?>'>
                                            <?php echo $item['title']; ?>
                                        </a></h6>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="news2-readmore">
                            <div class="news2-category"><a class='heading-box' href="#" title="Tin đọc nhiều">Tin đọc
                                    nhiều</a></div>
                            <ul class="news2-readmore--list">
                                <?php
                                    $mostreading = get_mostReading();
                                    $i=0;
                                    foreach ($mostreading as $item){ 
                                        $i++;
                                        $img = get_Image($item['id']);
                                ?>
                                <li class="news2-readmore--item">
                                    <div class="readmore-item--stt head-7"><?php echo $i; ?>.</div>
                                    <a href="#" class="readmore-item--content head-7"
                                        title="<?php echo $item['title']; ?>"><?php echo $item['title']; ?></a>
                                    <a href="#" title="<?php echo $item['title']; ?>"><img
                                            src="assets/img/<?php echo $img['imgurl']; ?>" alt="anh"></a>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <div class="container__news2-left--second">
                        <?php
                            $mainnews2 = get_mainNews2();
                            foreach ($mainnews2 as $item){ 
                            $row = get_Category($item['FK_category']);
                            $img = get_Image($item['id']);
                        ?>
                        <div class="news2-second--content">
                            <a href="#" title="<?php echo $item['title'] ?>"><img
                                    src="assets/img/<?php echo $img['imgurl']; ?>" alt="anh"></a>
                            <div class="second--contents">
                                <h3>
                                    <a href="#" class="head-3"
                                        title="<?php echo $item['title'] ?>">
                                        <?php echo $item['title'] ?>
                                    </a>
                                </h3>
                                <div class="second-category "><a class="subtitle" href="#" title="<?php echo $row['title'] ?>"><?php echo $row['title'] ?></a>
                                </div>
                                <div class="sapo1"><?php echo $item['brief'] ?></div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="container__news2-btn">
                        <a href="#" title="Xem thêm">
                            <p class="head-7">Xem thêm</p>
                            <img src="assets/img/Vector 40 (Stroke).png" alt="anh">
                        </a>
                    </div>
                </div>
                <div class="container__news2-right">
                    <!-- <img src="assets/img/image 32.png" alt="chung khoan"> -->
                    <ul class="container__news2-right--ck">
                        <li>
                            <div>Ngoại hối</div>
                            <div>Trái phiếu</div>
                            <div>Các chỉ số</div>
                        </li>
                        <li class="border-bottom">
                            <div class="ck-left">
                                <span>EURU...</span>
                                <span>Euro / Đô...</span>
                            </div>
                            <div class="ck-center">
                                1.12633
                            </div>
                            <div class="ck-right">
                                <span>-0.27%</span>
                                <span>-0.00306</span>
                            </div>
                        </li>
                        <li class="border-bottom">
                            <div class="ck-left">
                                <span>GBPU...</span>
                                <span>Bảng Anh...</span>
                            </div>
                            <div class="ck-center">
                                1.26722
                            </div>
                            <div class="ck-right">
                                <span>-0.39%</span>
                                <span>-0.00500</span>
                            </div>
                        </li>
                        <li class="border-bottom">
                            <div class="ck-left">
                                <span>USDJPY</span>
                                <span>Đô La Mỹ...</span>
                            </div>
                            <div class="ck-center">
                                107.843
                            </div>
                            <div class="ck-right">
                                <span>-0.54%</span>
                                <span>-0.583</span>
                            </div>
                        </li>
                        <li class="border-bottom">
                            <div class="ck-left">
                                <span>USDCHF</span>
                                <span>Đô La Mỹ...</span>
                            </div>
                            <div class="ck-center">
                                0.95537
                            </div>
                            <div class="ck-right">
                                <span>-0.23%</span>
                                <span>-0.00220</span>
                            </div>
                        </li>
                        <li>
                            <div class="ck-left">
                                <span>AUDU...</span>
                                <span>Đô La Úc...</span>
                            </div>
                            <div class="ck-center">
                                0.69235
                            </div>
                            <div class="ck-right">
                                <span>-1.38%</span>
                                <span>-0.00970</span>
                            </div>
                        </li>
                    </ul>
                    <div class="container__news2-right--empty"></div>
                </div>
            </div>
            <div class="container__line-video"></div>
            <div class="container__video">
                <div class="container__video-category">
                    <a href="#" title="Video"><img src="assets/img/Vector video.png" alt="video"></a>
                    <a class="head-2" href="#" title="Video">Video</a>
                </div>
                <div class="container__video-contents">
                    <?php 
                        $video = get_video();
                        $videos = $video[0];
                        $img = get_Image($videos['id']);
                    ?>
                                
                    <div class="container__video-contents--left">
                        <a href="#"
                            title='<?php echo $videos['title']; ?>'>
                            <div class="contents-img-left" style="background-image: url('assets/img/<?php echo $img['imgurl']; ?>');">
                                <img class="img-pause-left" src="assets/img/video large.png" alt="pause">
                                <span>03:20</span>
                            </div>
                        </a>
                        <h3 class="contents-left--title">
                            <a class="head-3" href="#"
                                title='<?php echo $videos['title']; ?>'>
                                <?php echo $videos['title']; ?>
                                mới"</a>
                        </h3>
                    </div>
                    <ul class="container__video-contents--right">
                        <?php
                            for($i=1 ; $i<=4 ; $i++){
                                $vi = $video[$i];
                                $imgs = get_Image($vi['id']);
                        ?>
                        <li>
                            <a href="#" title="<?php echo $vi['title']; ?>">
                                <div class="contents-img--right" style="background-image: url('assets/img/<?php echo $imgs['imgurl']; ?>');">
                                    <img src="assets/img/video small.png" alt="pause">
                                    <span>03:20</span>
                                </div>
                            </a>
                            <h6 class="contents-title">
                                <a class="head-6" href="#" title="<?php echo $vi['title']; ?>">
                                    <?php echo $vi['title']; ?>
                                </a>
                            </h6>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <div class="container__news3">
                <div class="container__news3-left">
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Sự kiện"><img src="assets/img/sukien.png" alt="su kien"></a>
                                <a href="#" title="Sự kiện" class="category head-5">sự kiện</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title="Chính trị - xã hội">Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title="Cải cách hành chính">cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title="Tiêu điểm">tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title="Xem thêm"><i
                                            class="fas fa-ellipsis-h"></i></i></a></li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $sukien = get_categoryNews(1);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($sukien[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $sukien[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="sk1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $sukien[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $sukien[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $sukien[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($sukien[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $sukien[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="sk2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $sukien[1]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $sukien[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $sukien[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $sukien[$j]['title']; ?>">
                                        <?php echo $sukien[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Doanh nghiệp"><img src="assets/img/doanhnghiep.png"
                                        alt="doanhnghiep"></a>
                                <a href="#" title="Doanh nghiệp" class="category head-5">doanh nghiệp</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title='Chính trị - xã hội'>Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title='Cải cách hành chính'>cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title='Tiêu điểm'>tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title='Xem thêm'><i class="fas fa-ellipsis-h"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $doanhnghiep = get_categoryNews(2);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($doanhnghiep[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $doanhnghiep[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $doanhnghiep[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <img style="display: inline; margin-right:6px;" src="assets/img/icon image.png" alt="anh">
                                        <?php echo $doanhnghiep[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $doanhnghiep[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($doanhnghiep[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $doanhnghiep[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $doanhnghiep[1]['title']; ?>"
                                        class="left-item-title head-6"><?php echo $doanhnghiep[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $doanhnghiep[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $doanhnghiep[$j]['title']; ?>">
                                        <?php echo $doanhnghiep[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Kinh tế"><img src="assets/img/Economy.png" alt="kinhte"></a>
                                <a href="#" title="Kinh tế" class="category head-5">kinh tế</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title="Chính trị - xã hội">Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title="Cải cách hành chính">cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title="Tiêu điểm">tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title="Xem thêm"><i class="fas fa-ellipsis-h"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $kinhte = get_categoryNews(4);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($kinhte[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $kinhte[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $kinhte[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $kinhte[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $kinhte[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($kinhte[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $kinhte[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $kinhte[1]['title']; ?>"
                                        class="left-item-title head-6"><?php echo $kinhte[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $kinhte[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $kinhte[$j]['title']; ?>">
                                        <?php echo $kinhte[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Xã hội"><img src="assets/img/xahoi.png" alt="xahoi"></a>
                                <a href="#" title="Xã hội" class="category head-5">xã hội</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title="Chính trị - xã hội">Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title="Cải cách hành chính">cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title="Tiêu điểm">tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title="Xem thêm"><i class="fas fa-ellipsis-h"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $xahoi = get_categoryNews(5);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($xahoi[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $xahoi[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $xahoi[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $xahoi[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $xahoi[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($xahoi[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $xahoi[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $xahoi[1]['title']; ?>"
                                        class="left-item-title head-6"><?php echo $xahoi[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $xahoi[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $xahoi[$j]['title']; ?>">
                                        <?php echo $xahoi[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Pháp luật"><img src="assets/img/Law.png" alt="phap luat"></a>
                                <a href="#" title="Pháp luật" class="category head-5">pháp luật</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title="Chính trị - xã hội">Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title="Cải cách hành chính">cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title="Tiêu điểm">tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title="Xem thêm"><i class="fas fa-ellipsis-h"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $phapluat = get_categoryNews(6);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($phapluat[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $phapluat[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $phapluat[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $phapluat[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $phapluat[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($phapluat[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $phapluat[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $phapluat[1]['title']; ?>"
                                        class="left-item-title head-6"><?php echo $phapluat[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $phapluat[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $phapluat[$j]['title']; ?>">
                                        <?php echo $phapluat[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="container__news3-left--item">
                        <div class="nav">
                            <div class="nav-left">
                                <a href="#" title="Quốc tế"><img src="assets/img/QT.png" alt="quoc te"></a>
                                <a href="#" title="Quốc tế" class="category head-5">quốc tế</a>
                            </div>
                            <ul class="nav-right">
                                <li><a class="subtitle" href="#" title="Chính trị - xã hội">Chính trị - xã hội</a></li>
                                <li><a class="subtitle" href="#" title="Cải cách hành chính">cải cách hành chính</a>
                                </li>
                                <li><a class="subtitle" href="#" title="Tiêu điểm">tiêu điểm</a></li>
                                <li><a class="subtitle" href="#" title="Xem thêm"><i class="fas fa-ellipsis-h"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="contents">
                            <?php
                                $quocte = get_categoryNews(7);
                                for($i=0 ; $i<3 ;$i++){
                            ?>
                            <?php if($i == 0){ 
                                $img = get_Image($quocte[0]['id']);
                                ?>
                            <div class="left-item">
                                <a href="#" title="<?php echo $quocte[0]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn1"></a>
                                <h6>
                                    <a href="#" title="<?php echo $quocte[0]['title']; ?>"
                                        class="left-item-title head-6">
                                        <?php echo $quocte[0]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $quocte[0]['brief']; ?></p>
                            </div>
                            <?php }else if($i == 1){ 
                                $img = get_Image($quocte[1]['id']);
                                ?>
                            <div class="center-item">
                                <a href="#"
                                    title="<?php echo $quocte[1]['title']; ?>"><img
                                        src="assets/img/<?php echo $img['imgurl'];  ?>" alt="dn2"></a>
                                <h6>
                                    <a href="#" title="<?php echo $quocte[1]['title']; ?>"
                                        class="left-item-title head-6"><?php echo $quocte[1]['title']; ?>
                                    </a>
                                </h6>
                                <p class="sapo1"><?php echo $quocte[1]['brief']; ?></p>
                            </div>
                            <?php } else{ 
                                ?>
                            <ul class="right-item">
                                <?php 
                                for($j = 2 ; $j<6 ; $j++){ ?>
                                <li><a class="head-7" href="#"
                                        title="<?php echo $quocte[$j]['title']; ?>">
                                        <?php echo $quocte[$j]['title']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                                <?php }?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="container__news3-right"></div>
            </div>
        </div>
    </div>
    <?php
        include './layouts/footer.php';
    ?>