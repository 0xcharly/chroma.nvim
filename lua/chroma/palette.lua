local M = {}

M.chroma = {
    -- Background tones.
    surface00 = '#141920', -- Emphasized/countersunk background.
    surface0 = '#191e25',  -- Background.
    surface1 = '#21262d',  -- Background highlights.
    surface2 = '#2c3138',  -- Background selection.

    -- Content tones.
    onSurface00 = '#ffffff', -- Optional emphasized content.
    onSurface0 = '#c0c8d0', -- Body text, default code, primary content.
    onSurface1 = '#abb2bf',
    onSurface2 = '#8b949e', -- Comments, secondary content.
    onSurface3 = '#6e7681',
    onSurface4 = '#484f58', -- Inlays, codelens.

    highlight = '#0842a0',
    onHighlight = '#d3e3fd',

    blueOnSurface = '#58a6ff',
    altSkyBlueOnSurface = '#79c0ff',
    skyBlueOnSurface = '#8bc4f3',
    cyanOnSurface = '#89dceb',
    tealOnSurface = '#94e2d5',
    green0 = '#a3be8c',
    green1 = '#b1d196',
    teal = '#8bd5ca',
    orange0 = '#d89079',
    orange1 = '#ffaa79',
    orange2 = '#ffc2b2',
    yellow0 = '#f0d399',
    yellow1 = '#f9e2af',
    red0 = '#d06f79',
    red1 = '#ed8796',
    red2 = '#e3a1a7',
    purpleOnSurface = '#cbaff9',
    lavenderOnSurface = '#b4befe',
    altLavenderOnSurface = '#a1abe3',
}

M.surfaces = {
    blueSurface = '#94b2f6',
    onBlueSurface = '#171c23',

    greenSurface = '#427603',
    onGreenSurface = '#d0fbba',

    yellowSurface = '#4b2900',
    onYellowSurface = '#f8e3a1',

    redSurface = '#760309',
    onRedSurface = '#ffdcd7',

    purpleSurface = '#342040',
    onPurpleSurface = '#cbaff9',
}

return M
