if (x > room_width + sprite_xoffset) {
    // Move it just above the screen
    x = -sprite_xoffset;

    // Randomize its horizontal position so it looks different each time
    y = irandom_range(sprite_yoffset, room_height - sprite_yoffset);
}

