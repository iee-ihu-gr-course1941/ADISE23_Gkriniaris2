<?php

function handle_user($method, $b, $input)
{
    if($method=='GET'){
        show_user($b);
    } else if ($method=='PUT'){
        set_user($b,$input);
    }
}

function show_user($b)
{
    global $mysqli;
    $sql = 'select username,piece_color from players where piece_color=?';
    $st = $mysqli->prepare($sql);
    $st->bind_param('s',$b);
	$st->execute();
	$res = $st->get_result();
	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);

?>