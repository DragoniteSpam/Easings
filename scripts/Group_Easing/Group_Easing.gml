function easing_get(type, t) {
    var curve = animcurve_get(ac_easings);
    if (is_string(type)) return animcurve_channel_evaluate(curve.channels[animcurve_get_channel_index(curve, type)], t);
    return animcurve_channel_evaluate(curve.channels[type], t);
}

function easing_tween(value_start, value_end, f, type) {
    return easing_get(type, f) * (value_end - value_start) + value_start;
};

enum AnimationTweens {
    LINEAR,
    EASE_QUAD_I, EASE_QUAD_O, EASE_QUAD_IO,
    EASE_CUBE_I, EASE_CUBE_O, EASE_CUBE_IO,
    EASE_QUART_I, EASE_QUART_O, EASE_QUART_IO,
    EASE_EXP_I, EASE_EXP_O, EASE_EXP_IO,
    EASE_CIRC_I, EASE_CIRC_O, EASE_CIRC_IO,
    EASE_BACK_I, EASE_BACK_O, EASE_BACK_IO,
    EASE_ELASTIC_I, EASE_ELASTIC_O, EASE_ELASTIC_IO,
    EASE_BOUNCE_I, EASE_BOUNCE_O, EASE_BOUNCE_IO,
    EASE_FAST_TO_SLOW, EASE_MID_TO_SLOW,
}