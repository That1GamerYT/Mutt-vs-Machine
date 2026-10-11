function scr_get_item_price(item, current_level) {
    return (item.base_price * (current_level + 1)) - floor(scr_get_item_level("eyes", "upgrade") * 0.05 * (item.base_price * (current_level + 1)));
}