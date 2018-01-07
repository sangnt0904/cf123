<?php
    $g_MA_SAN_PHAM_s = filter_input(INPUT_POST, "MA_SAN_PHAM");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    $sql = "call delete_sanpham('" . $g_MA_SAN_PHAM_s . "')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
