<?php
include "./layouts/header.php";
?>
<div class="main">
        <div class="container__DN">
            <div class="container__left">
                <div class="container__left-nav">
                    <h4><a class="heading-box" href="#" title="Doanh nghiệp">Doanh nghiệp</a></h4>
                    <ul class="nav-list">
                        <li><a class="subtitle" href="#" title="Diễn đàn">diễn đàn</a></li>
                        <li><a class="subtitle" href="#" title="Thương hiệu">thương hiệu</a></li>
                        <li><a class="subtitle" href="#" title="Thông tin doanh nghiệp">thông tin doanh nghiệp</a></li>
                        <li><a class="subtitle" href="#" title="Trách nhiệm xã hội">trách nhiệm xã hội</a></li>
                        <li><a class="subtitle" href="#" title="Khởi nghiệp">khởi nghiệp</a></li>
                    </ul>
                </div>
                <div class="container__left-news1">
                    <div class="news1-left">
                        <?php 
                            $business = get_businessCate();
                            $img = get_Image($business['id']);
                        ?>
                        <a href="detail.html"
                            title='<?php echo $business['title']; ?>'><img
                                src="assets/img/<?php echo $img['imgurl']; ?>" alt="DN"></a>
                        <h2><a class="head-2" href="detail.html"
                                title='<?php echo $business['title']; ?>'>
                                <?php echo $business['title']; ?>
                            </a></h2>
                        <p class="sapo1">
                            <?php echo $business['brief']; ?>
                        </p>
                    </div>
                    <div class="news1-right">
                        <?php
                            $businessright = get_businessRight();
                            for($i = 0 ; $i<3 ; $i++){
                                if($i==0){
                                    $img = get_Image($businessright[0]['id']);
                        ?>
                        <a href="#"
                            title='<?php echo $businessright[0]['title']; ?>'><img
                                src="assets/img/<?php echo $img['imgurl']; ?>" alt="DN"></a>
                        <h4><a class="head-4" href="#"
                                title='<?php echo $businessright[0]['title']; ?>'>
                                <?php echo $businessright[0]['title']; ?>
                            </a></h4>
                                <?php }else if($i==1){ ?>
                        <p class='first'><a href="#"
                                title='<?php echo $businessright[1]['title']; ?>'>
                                <?php echo $businessright[1]['title']; ?>
                            </a></p>
                                <?php }else{ ?>
                        <p class='second'><a href="#"
                                title='<?php echo $businessright[2]['title']; ?>'><?php echo $businessright[2]['title']; ?></a></p>
                        <?php } } ?>
                    </div>
                </div>
                <div class="container__lines">
                    <div class="container__line-odd"></div>
                    <div class="container__line-even"></div>
                    <div class="container__line-odd"></div>
                    <div class="container__line-even"></div>
                    <div class="container__line-odd"></div>
                </div>
                <div class="container__left-news2">
                    <?php 
                        $mainnews = get_mainNews();
                        foreach($mainnews as $news){
                            $img = get_Image($news['id']);
                            $category = get_category($news['FK_category']);
                    ?>
                    <div class="news2-second--content">
                        <a href="#" title="<?php echo $news['title']; ?>"><img
                                src="assets/img/<?php echo $img['imgurl']; ?>" alt="anh"></a>
                        <div class="second--contents">
                            <h3>
                                <a class="head-3" href="#"
                                    title="<?php echo $news['title']; ?>">
                                    <?php echo $news['title']; ?>
                                </a>
                            </h3>
                            <div class="second-category "><a class="subtitle" href="#" title='<?php echo $category['title']; ?>'><?php echo $category['title']; ?></a></div>
                            <div class="sapo1">
                                <?php echo $news['brief']; ?>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="container__news2-btn">
                        <a class="head-7" href="#" title="Xem thêm">
                            <p>Xem thêm</p>
                            <img src="assets/img/Vector 40 (Stroke).png" alt="anh">
                        </a>
                    </div>
                </div>
            </div>
            <div class="container__right">
            </div>
        </div>
    </div>
    <?php
        include './layouts/footer.php';
    ?>