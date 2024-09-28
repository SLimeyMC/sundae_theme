import './style.css';
import { main } from './sundae_theme.gleam';
import { randomkt } from './randomkt.gleam';

document.documentElement.innerHTML = main()
// document.write(randomkt())