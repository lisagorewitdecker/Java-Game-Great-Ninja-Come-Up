var world = [
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    [1,0,0,0,2,2,0,1,0,3,3,0,0,2,1,1],
    [1,0,1,2,1,1,0,1,0,1,1,2,1,2,1,1],
    [1,2,0,0,0,0,2,2,2,0,0,0,0,2,1,1],
    [1,1,0,1,0,0,1,1,1,0,0,1,0,1,1,1],
    [7,0,0,1,1,0,0,1,0,0,1,1,0,0,8,1],
    [1,1,0,1,0,0,0,3,0,0,3,1,0,1,1,1],
    [1,2,0,0,0,0,1,1,1,0,0,0,0,2,1,1],
    [1,2,1,1,2,0,0,11,0,0,2,1,1,2,1,1],
    [1,2,3,1,2,0,2,1,2,0,2,1,0,2,1,1],
    [9,0,0,1,0,0,1,1,1,0,0,1,0,0,10,1],
    [1,2,0,0,0,0,0,0,0,0,0,0,0,2,1,1],
    [1,2,0,3,1,0,0,1,0,0,1,3,0,2,1,1],
    [1,0,1,1,1,1,2,1,2,1,1,1,1,0,1,1],
    [1,2,0,2,2,0,2,1,2,0,2,2,0,2,1,1],
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
];
//////////////////////////////////////////////////////////////////////////
var worldObject = {
    0: 'blank',
    1: 'wall',
    2: 'flame',
    3: 'silverPiece',
    4: 'blackFlame',
    5: 'jail',
    6: 'skull',
    7: 'leftPortal',
    8: 'rightPortal',
    9: 'leftPortal2',
    10: 'rightPortal2',
    11: 'temple'
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
var direction = "down";
var step = 1;
var gold = silver = 0;
var color;
var count = 0;
//////////////////////////////////////////////////////////////////////////
function update(){
	if(step == 1){
		step = 2;
	}else{
		step = 1;
	}
}
document.getElementById('gold').innerHTML = gold;
document.getElementById('silver').innerHTML = silver;
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
function drawNinja(){
    document.getElementById('ninja').style.left = ninja.x * 40 + "px";
    document.getElementById('ninja').style.top = ninja.y * 40 + "px";
    document.getElementById('ninja').style.backgroundImage = "url('../img/red"+direction+step+".png')";
}
drawNinja();
//////////////////////////////////////////////////////////////////////////
document.onkeydown = function(e){
	if(e.keyCode == 37){
		direction = 'left';
		if(world[ninja.y][ninja.x - 1] != 1){
			ninja.x--;
		}
		if(world[ninja.y][ninja.x] == 7){
	    	ninja.x = 13;
	    	ninja.y = 5;
	    }
		if(world[ninja.y][ninja.x] == 9){
	    	ninja.x = 13;
	    	ninja.y = 10;
	    }
	}
    if(e.keyCode == 39){
    	direction = 'right';
        if(world[ninja.y][ninja.x + 1] != 1){
            ninja.x++;
        }
        if(world[ninja.y][ninja.x] == 8){
	    	ninja.x = 1;
	    	ninja.y = 5;
	    }
        if(world[ninja.y][ninja.x] == 10){
	    	ninja.x = 1;
	    	ninja.y = 10;
	    }
    }
///////////////////////////////////////////////
    if(e.keyCode == 38){
    	direction = 'top';
        if(world[ninja.y - 1][ninja.x] != 1){
            ninja.y--;
        }
    }            
    if(e.keyCode == 40){
    	direction = 'down';
        if(world[ninja.y + 1][ninja.x] != 1){
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
    if(world[ninja.y][ninja.x] == 11){
    	count += 1;
    	silver = 0;
    	gold = 0;
    }
    if(count == 3 && world[ninja.y][ninja.x] == 11){
    	silver += 100;
    	gold += 100;
    }
    update();
    drawNinja();
    drawWorld();
    document.getElementById('gold').innerHTML = gold;
    document.getElementById('silver').innerHTML = silver;
}
//////////////////////////////////////////////////////////////////////////






