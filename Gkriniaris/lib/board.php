<?php

function show_board() {
    global $mysqli;

    $sql = "SELECT * FROM board";
    $st = $mysqli -> prepare($sql);

    $st -> execute();
    $res = $st -> get_result();

    $data = $res->fetch_all(MYSQLI_ASSOC);
    header('Content-type: application/json');
    print json_encode($data, JSON_PRETTY_PRINT);

}

function reset_board() {
    global $mysqli;

    $sql = 'call clean_board()';
    $mysqli -> query($sql);
    show_board();
}

?>