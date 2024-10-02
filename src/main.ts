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


window.addEventListener('load', function() {
  const targetClassName = 'flex-wrap-anim';
  const defaultDuration = '0.3s';

  interface DummyDiv extends HTMLDivElement {
    __flexWrapAnimPair: HTMLElement;
    __flexWrapAnimDuration: string;
  }

  const dummyList: DummyDiv[] = [];

  function addDummy(item: HTMLElement, duration: string): void {
    const top = item.offsetTop;
    const left = item.offsetLeft;

    setTimeout(() => {
      item.style.position = 'absolute';
      item.style.top = top + 'px';
      item.style.left = left + 'px';

      const dummyDiv = document.createElement('div') as DummyDiv;
      dummyDiv.classList.add(targetClassName + '-dummy');
      const rect = item.getBoundingClientRect();
      dummyDiv.style.width = `${rect.width}px`;
      dummyDiv.style.height = `${rect.height}px`;
      dummyDiv.style.visibility = 'hidden';
      dummyDiv.__flexWrapAnimPair = item;
      dummyDiv.__flexWrapAnimDuration = duration;
      item.parentNode?.appendChild(dummyDiv);
      dummyList.push(dummyDiv);
    }, 0);
  }

  const conts = document.getElementsByClassName(targetClassName) as HTMLCollectionOf<HTMLElement>;

  for (let i = 0; i < conts.length; i++) {
    const cont = conts[i];
    cont.style.position = 'relative';
    const duration = cont.getAttribute('data-duration') || defaultDuration;
    const items = cont.getElementsByTagName('div') as HTMLCollectionOf<HTMLElement>;

    for (let j = 0; j < items.length; j++) {
      addDummy(items[j], duration);
    }
  }

  window.addEventListener('resize', function(event: Event) {
    dummyList.forEach(function(dummyDiv) {
      const item = dummyDiv.__flexWrapAnimPair;
      const duration = dummyDiv.__flexWrapAnimDuration;
      if (item.offsetTop !== dummyDiv.offsetTop) {
        item.style.transition = `all ${duration}`;
        item.style.top = `${dummyDiv.offsetTop}px`;
        item.style.left = `${dummyDiv.offsetLeft}px`;
      } else {
        item.style.transition = '';
        item.style.left = `${dummyDiv.offsetLeft}px`;
      }
    });
  });
});