ButtonText = argument0
Result = false

//Find the corners of our box
BoxTop = CurrentY
BoxBottom = BoxTop +  Margin + string_height(ButtonText) + Margin
HalfTextWidth = string_width(ButtonText) / 2
BoxLeft = x - HalfTextWidth - Margin
BoxRight = x + HalfTextWidth + Margin

draw_set_colour(make_colour_hsv(0,200,128))

//See if the cursor is hovering over it
if mouse_x > BoxLeft and mouse_x < BoxRight and mouse_y > BoxTop and mouse_y < BoxBottom {
    draw_set_alpha(1)
    if mouse_check_button_pressed(mb_left) {
        Result = true
    }
} else {
    draw_set_alpha(0.5)
}


draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false)
draw_set_alpha(1)

draw_set_colour(c_white)

CurrentY = CurrentY + Margin

DrawTextAndUpdateCurrentY(ButtonText)

CurrentY = CurrentY + Margin + 3

return Result
