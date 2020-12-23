//sv6_get_seed();
var seed_str = base64_decode(file_text_read_string(argument0));
oControl.seed = seed_str;
if (is_undefined(oControl.seed)) oControl.seed = 0;
