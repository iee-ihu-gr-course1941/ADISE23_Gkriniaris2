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

$(drawEmptyBoard);





