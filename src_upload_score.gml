///upload score online

filename = 'sasgc.dat';
playername = argument0;

ini_open(filename);
        
if (ini_section_exists(playername)) {
      
    //read the content              
    playername = ini_read_string(string(playername), 'Name', '');
    playerlength = base64_decode(ini_read_string(string(playername), 'Length', ''));
    playerpoints = base64_decode(ini_read_string(string(playername), 'Score', ''));
    playerspeed = base64_decode(ini_read_string(string(playername), 'Speed', ''));
    playerdifficult = base64_decode(ini_read_string(string(global.playername), 'Difficult', ''));
    
    //convert datatypes
    length = playerlength;
    points = playerpoints;
    sspeed = playerspeed;
    
    //salt  
    salt_before = //number-salt so long as you want (remember ;)
    salt_behind = //number-salt so lang as you want (remember ;)
    
    //upload der Daten    
        
    url = string('http://snakegame.dumzeugs.de/include/write_highscore.inc.php?playername=') + string(playername) + '&length=' + string(salt_before) + string(length) + string(salt_behind) + '&points=' + string(salt_before) + string(points) + string(salt_behind) + '&speed=' + string(salt_before) + string(sspeed) + string(salt_behind) + '&difficult=' + string(playerdifficult);

    url_open(url);
    
    return show_message('Upload done!');
    
} else {
    
    return show_message('Upload failed!');
    
}

ini_close();