<?php

require_once('includes/config.php');

global $con;

function db_connect(){
    global $con;
    if(!$con){
        $con = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        mysqli_set_charset($con, 'utf8');
    }
}

function db_disconnect(){
    global $con;
    if($con){
        mysqli_close($con);
    }
}

function get_hightLightLeft(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, hightlightleft WHERE post.id = hightlightleft.FK_post ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_hightLightRight(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, hightlightright WHERE post.id = hightlightright.FK_post ORDER BY id LIMIT 2 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_hightLight(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, hightlight WHERE post.id = hightlight.FK_post ORDER BY id LIMIT 1";
    $query = mysqli_query($con, $sql);
    $result = mysqli_fetch_array($query);
    return $result;
}

function get_marketingNews(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, marketingnews WHERE post.id = marketingnews.FK_post ORDER BY id LIMIT 6 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_mainNews1(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, mainnews1 WHERE post.id = mainnews1.FK_post ORDER BY id LIMIT 4 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_mainNews2(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, mainnews2 WHERE post.id = mainnews2.FK_post ORDER BY id LIMIT 4 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_video(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, video WHERE post.id = video.FK_post ORDER BY id LIMIT 5 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_categoryNews($id_category){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, categorynews WHERE post.id = categorynews.FK_post AND post.FK_category = '$id_category' ORDER BY id LIMIT 6 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_emagazine(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, emagazine WHERE post.id = emagazine.FK_post ORDER BY id LIMIT 4 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_mostReading(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, mostreading WHERE post.id = mostreading.FK_post ORDER BY id LIMIT 5 ";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_Category($id){
    global $con;
    db_connect();
    $sql = "SELECT * FROM category WHERE id = '$id'";
    $query = mysqli_query($con,$sql);
    $row = mysqli_fetch_array($query);
    return $row;
}

function get_listCategory(){
    global $con;
    db_connect();
    $sql = "SELECT * FROM category";
    $query = mysqli_query($con,$sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_subcategory($id){
    global $con;
    db_connect();
    $sql = "SELECT * FROM subcategory WHERE FK_category = '$id'";
    $query = mysqli_query($con,$sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_businessCate(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, businesscate WHERE post.id = businesscate.FK_post ORDER BY id LIMIT 1";
    $query = mysqli_query($con, $sql);
    $result = mysqli_fetch_array($query);
    return $result;  
}

function get_businessRight(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, businessright WHERE post.id = businessright.FK_post ORDER BY id LIMIT 3";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_mainNews(){
    global $con;
    db_connect();

    $sql = "SELECT post.* FROM post, mainnews WHERE post.id = mainnews.FK_post ORDER BY id LIMIT 10";
    $query = mysqli_query($con, $sql);
    $result = array();
    if($query){
        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
    }
    return $result;
}

function get_Image($id){
    global $con;
    db_connect();
    $sql = "SELECT * FROM image WHERE FK_post = '$id'";
    $query = mysqli_query($con,$sql);
    $row = mysqli_fetch_array($query);
    return $row;
}

?>