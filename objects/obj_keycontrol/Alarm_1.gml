//When this alarm goes off, we remove one random key from the required list.

var temp_length = array_length(current_key_demands)
var slot_to_fill = irandom((temp_length - 1));

current_key_demands[slot_to_fill] = 0;

alarm_set(1, irandom_range(120, 600));