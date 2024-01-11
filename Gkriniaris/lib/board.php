<?php
function move_piece($x,$y,$x2,$y2,$token){
    if($token==null || $token=='') {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"token is not set."]);
		exit;
	}

    $color = current_color($token);
	if($color==null ) {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"You are not a player of this game."]);
		exit;
	}

    $status = read_status();
	if($status['status']!='started') {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"Game is not in action."]);
		exit;
	}


	if($status['p_turn']!=$color) {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"It is not your turn."]);
		exit;
	}


	$orig_board=read_board();
	$board=convert_board($orig_board);
	$n = add_valid_moves_to_piece($board,$color,$x,$y);
	
	if($n==0) {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"This piece cannot move."]);
		exit;
	}


	foreach($board[$x][$y]['moves'] as $i=>$move) {
		if($x2==$move['x'] && $y2==$move['y']) {
			do_move($x,$y,$x2,$y2);
			exit;
		}
	}
	header("HTTP/1.1 400 Bad Request");
	print json_encode(['errormesg'=>"This move is illegal."]);
	exit;
}


function do_move($x,$y,$x2,$y2) {
	global $mysqli;
	$sql = 'call `move_piece`(?,?,?,?);';
	$st = $mysqli->prepare($sql);
	$st->bind_param('iiii',$x,$y,$x2,$y2 );
	$st->execute();

	header('Content-type: application/json');
	print json_encode(read_board(), JSON_PRETTY_PRINT);
}


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


function convert_board(&$orig_board) {
	$board=[];
	foreach($orig_board as $i=>&$row) {
		$board[$row['x']][$row['y']] = &$row;
	} 
	return($board);
}


function read_board() {
	global $mysqli;
	$sql = 'select * from board';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	return($res->fetch_all(MYSQLI_ASSOC));
}


function reset_board() {
    global $mysqli;

    $sql = 'call clean_board()';
    $mysqli -> query($sql);
    show_board();
}


function show_piece($x,$y) {
	global $mysqli;
	
	$sql = 'select * from board where x=? and y=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('ii',$x,$y);
	$st->execute();
	$res = $st->get_result();
	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}


function show_board_by_player($b) {

	global $mysqli;

	$orig_board=read_board();
	$board=convert_board($orig_board);
	$status = read_status();
	if($status['status']=='started' && $status['p_turn']==$b && $b!=null) {
		// It my turn !!!!
		$n = add_valid_moves_to_board($board,$b);
		
		// Εάν n==0, τότε έχασα !!!!!
		// Θα πρέπει να ενημερωθεί το game_status.
	}
	header('Content-type: application/json');
	print json_encode($orig_board, JSON_PRETTY_PRINT);
}


function add_valid_moves_to_board(&$board,$b) {
	$number_of_moves=0;
	
	for($x=1;$x<9;$x++) {
		for($y=1;$y<9;$y++) {
			$number_of_moves+=add_valid_moves_to_piece($board,$b,$x,$y);
		}
	}
	return($number_of_moves);
}


function add_valid_moves_to_piece(&$board,$b,$x,$y) {
	$number_of_moves=0;
	if($board[$x][$y]['piece_color']==$b) {
		switch($board[$x][$y]['piece']){
			case 'PB1': $number_of_moves+=pb1_moves($board,$b,$x,$y);break;
			case 'PB2': $number_of_moves+=pb2_moves($board,$b,$x,$y);break;
			case 'PB3': $number_of_moves+=pb3_moves($board,$b,$x,$y);break;
            case 'PB4': $number_of_moves+=pb4_moves($board,$b,$x,$y);break;

			case 'PG1': $number_of_moves+=pg1_moves($board,$b,$x,$y);break;
            case 'PG2': $number_of_moves+=pg2_moves($board,$b,$x,$y);break;
            case 'PG3': $number_of_moves+=pg3_moves($board,$b,$x,$y);break;
            case 'PG4': $number_of_moves+=pg4_moves($board,$b,$x,$y);break;

			case 'PY1': $number_of_moves+=py1_moves($board,$b,$x,$y);break;
            case 'PY2': $number_of_moves+=py2_moves($board,$b,$x,$y);break;
            case 'PY3': $number_of_moves+=py3_moves($board,$b,$x,$y);break;
            case 'PY4': $number_of_moves+=py4_moves($board,$b,$x,$y);break;

			case 'PR1': $number_of_moves+=pr1_moves($board,$b,$x,$y);break;
            case 'PR2': $number_of_moves+=pr2_moves($board,$b,$x,$y);break;
            case 'PR3': $number_of_moves+=pr3_moves($board,$b,$x,$y);break;
            case 'PR4': $number_of_moves+=pr4_moves($board,$b,$x,$y);break;
		}
	} 
	return($number_of_moves);
}

?>