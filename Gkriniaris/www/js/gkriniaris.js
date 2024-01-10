var me={token:null,piece_color:null};
var game_status={};



$( function(){
    drawEmptyBoard();
    fillBoard();
    $('#gkriniarisReset').click(reset_board);
    $('#gkriniarisLogin').click(login_to_game);
}
);


function drawEmptyBoard(){
    var t='<table id="gkriniarisTable">';
    for(var i=11; i>0; i--){
        t+= '<tr>';
        for(var j=1; j<12; j++){
            t += '<td class="gkriniarisSquare" id="square_'+j+'_'+i+'">' + j + ','+ i +'</td>';
        }
        t += '</tr>';
    }
    t+='</table>';
    $('#gkriniarisBoard').html(t);
}

function fillBoard(){
    $.ajax(
        {url: "BdGr.php/board/",
        success: fillBoardByData
        }
    );
}
function reset_board(){
    $.ajax(
        {url: "BdGr.php/board/",
        method: 'post',
        success: fillBoardByData
        }
    );
}



function fillBoardByData(data){
    for (var i=0; i<data.length; i++){
        var o = data[i];
        var id = '#square_' + o.x + '_' + o.y ;
        // var c = (o.piece!=null)?o.piece_color + o.piece :'';
        // var pc= (o.piece!=null)?'piece'+o.piece_color:'';
        var z= (o.piece!=null)?''+o.piece_color:'';
        var im = (o.piece!=null)?'<img class="piece" src="images/' +z+'.png">':''; 
        $(id).addClass(o.b_color+'_square').html(im);
         
    }
}





function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var p_color = $('#pcolor').val();
	 drawEmptyBoard(p_color);
	 fillBoard();
	
	$.ajax({url: "BdGr.php/players/"+p_color, 
			method: 'PUT',
			dataType: "json",
			headers: {"X-Token": me.token},
			contentType: 'application/json',
			data: JSON.stringify( {username: $('#username').val(), piece_color: p_color}),
			success: login_result ,
			error: login_error });
}



function login_result(data) {
	me = data[0];
	$('#game_initializer').hide();
	update_info();
	game_status_update();
}


function update_info(){
	$('#game_info').html("I am Player: "+me.piece_color+", my name is "+me.username +'<br>Token='+me.token+'<br>Game state: '+game_status.status+', '+ game_status.p_turn+' must play now.');
}




  function login_error(data,y,z,c) {
	var x = data.responseJSON;
	if (x && x.errormesg) {
		alert(x.errormesg);
	  } else {
		alert("Μη ορισμένο μήνυμα σφάλματος");
	  }
}  



 function game_status_update() {
	//clearTimeout(timer);
	$.ajax({url: "BdGr.php/status/", success: update_status/* headers: {"X-Token": me.token} */ });
}



function update_status(data) {
	/* last_update=new Date().getTime();
	var game_stat_old = game_status; */
	
    game_status=data[0];
	update_info();
	//clearTimeout(timer);
	 
    
    /* if(game_status.p_turn==me.piece_color &&  me.piece_color!=null) {
		x=0;
		// do play
		if(game_stat_old.p_turn!=game_status.p_turn) {
			fill_board();
		}
		$('#move_div').show(1000);
		timer=setTimeout(function() { game_status_update();}, 15000);
	} else {
		// must wait for something
		$('#move_div').hide(1000);
		timer=setTimeout(function() { game_status_update();}, 4000);
	}  */
 	
} 

