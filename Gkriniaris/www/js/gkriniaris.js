$( function(){
    drawEmptyBoard();
    fillBoard();
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



function fillBoardByData(data){
    for (var i=0; i<data.length; i++){
        var o = data[i];
        var id = '#square_' + o.x + '_' + o.y ;
        var c = (o.piece!=null)?o.piece_color + o.piece :'';
        var pc= (o.piece!=null)?'piece'+o.piece_color:'';
        var im = (o.piece!=null)?'<img class="piece" src="images/' +c+'.png">':''; 
        $(id).addClass(o.b_color+'_square').html(im);
         
    }
}


