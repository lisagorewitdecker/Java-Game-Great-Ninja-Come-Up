var world = [
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    [1,0,0,3,1,1,2,2,1,1,3,0,2,1,1],
    [1,0,7,0,7,1,1,1,1,1,0,7,0,1,1],
    [1,0,2,0,0,0,2,0,0,0,0,2,0,1,1],
    [1,1,1,1,1,1,1,0,1,7,1,1,1,1,1],
    [1,6,4,6,1,1,5,0,5,1,8,1,1,1,1],
    [1,4,6,4,7,1,1,0,1,1,1,1,1,1,1],
    [1,4,0,0,0,0,0,0,0,0,0,0,3,1,1],
    [1,0,0,7,7,0,1,1,1,0,7,7,0,2,1],
    [1,3,0,0,0,0,1,9,1,0,0,0,0,2,1],
    [1,1,1,6,1,1,1,1,1,1,1,1,1,1,1]
];
//////////////////////////////////////////////////////////////////////////
var worldObject = {
    0: 'blank',
    1: 'wall',
    2: 'flame',
    3: 'silverPiece',
    4: 'blackFlame',
    5: 'jail',
    6: 'temple',
    7: 'grass',
    8: 'lantern',
    9: 'lantern2'
}
//////////////////////////////////////////////////////////////////////////
function drawWorld(){
    var output="";
        for(var row = 0; row < world.length; row++){
            output += "<div class='row'>";
                for(var j = 0; j < world[row].length; j++){
                    output +="<div class='"+worldObject[world[row][j]]+"'></div>";
                }
            output +="</div>";
        }
    document.getElementById('world').innerHTML = output;
}
drawWorld();
////////////////////////////////////////////////////////////////////////////
ninja = {
    x: 1,
    y: 1
}
//////////////////////////////////////////////////////////////////////////
function update(){
	if(step == 1){
		step = 2;
	}else{
		step = 1;
	}
}
var direction = "down";
var step = 1;
var gold = silver = 0;
//////////////////////////////////////////////////////////////////////////
document.getElementById('gold').innerHTML = gold;
document.getElementById('silver').innerHTML = silver;
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
function drawNinja()
{
		document.getElementById('ninja').style.left = ninja.x * 40 + "px";
		document.getElementById('ninja').style.top = ninja.y * 40 + "px";
		document.getElementById('ninja').style.backgroundImage = "url('../img/red"+ direction + step + ".png')";
}
//function ajaxCall(value){	
//	$.ajax({
//		url: "/world2/"+id,
//		method: "POST",
//		data: value
//	})
//}
drawNinja();
//////////////////////////////////////////////////////////////////////////
document.onkeydown = function(e){
	if(e.keyCode == 37){
        direction = "left";
        if(world[ninja.y][ninja.x - 1] == 0 || world[ninja.y][ninja.x - 1] == 2 || world[ninja.y][ninja.x - 1] == 3){
            ninja.x--;
        }
    }
    if(e.keyCode == 39){
    	direction = 'right';
        if(world[ninja.y][ninja.x + 1] == 0 || world[ninja.y][ninja.x + 1] == 2 || world[ninja.y][ninja.x + 1] == 3){
            ninja.x++;
        }
    }
///////////////////////////////////////////////
    if(e.keyCode == 38){
    	direction = 'top';
        if(world[ninja.y - 1][ninja.x] == 0 || world[ninja.y - 1][ninja.x] == 2 || world[ninja.y - 1][ninja.x] == 3){
            ninja.y--;
        }
    }            
    if(e.keyCode == 40){
    	direction = 'down';
        if(world[ninja.y + 1][ninja.x] == 0 || world[ninja.y + 1][ninja.x] == 2 || world[ninja.y + 1][ninja.x] == 3){
            ninja.y++;
        }
    } 
    if(world[ninja.y][ninja.x] == 2){
    	gold += 1;
    	world[ninja.y][ninja.x] = 0;
    }
    if(world[ninja.y][ninja.x] == 3){
    	silver += 1;
    	world[ninja.y][ninja.x] = 0;
    }
    update();
    drawNinja();
    drawWorld();
    document.getElementById('gold').innerHTML = gold;
    document.getElementById('silver').innerHTML = silver;
}
//////////////////////////////////////////////////////////////////////////