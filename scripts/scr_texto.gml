//scr_texto("Texto",velocidade,x,y); (Formato)
    if(!instance_exists(obj_texto)){
 txt = instance_create(argument2,argument3,obj_texto);
 with(txt)
 {
    padding = 16; //espaço do texto para a borda da caixa de texto
    maxlenght = view_wview[0]; //tamanho do comprimento da caixa
    text = argument0; //o texto em si
    spd = argument1; //a velocidade que o texto aparece
    font = fnt;
    
    text_lenght = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2),maxlenght);
    text_height = string_height_ext(text, font_size+(font_size/2),maxlenght);
    /*
    boxwidth = text_width + (padding*2); //tamanho da caixa = tamanho do texto + espaçamento
    boxheight = text_height + (padding*2);
    */
    boxwidth = 500;
    boxheight = 100;
 }
}else{
 instance_destroy(obj_texto);
 }
