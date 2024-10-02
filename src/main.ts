import './style.css';
import { main } from './sundae_theme.gleam';
// Get hot reload
import { randomkt } from './randomkt.gleam';
import { palette_swatch, palette_description } from './palette_swatch.gleam';

document.documentElement.innerHTML = main()
// document.write(randomkt())

function displayPaletteDesc(ordinal) {
    document.getElementsByName("palette-description").forEach((element) => {
        element.innerHTML = palette_description(ordinal) 
    })
}

window.displayPaletteDesc = displayPaletteDesc;