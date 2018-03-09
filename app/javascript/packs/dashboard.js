function renderHtml (link) {
  const hiddenSections = document.querySelectorAll(".non-visible");
  const visibleSection = document.querySelector(".visible");
  const id = link.innerHTML.toString();

  if (visibleSection.id !== link.innerHTML) {
    visibleSection.classList.remove("visible");
    visibleSection.classList.add("non-visible");
    hiddenSections.forEach (function(section){
       if(section.id === id) {
        section.classList.remove("non-visible");
        section.classList.add("visible");
      }
    })
  }
}

function selectActive(links, target) {
  links.forEach(function(link) {
    link.classList.remove("active");
  })
  target.classList.add("active");
}

function addLinksListener() {
  const links = document.querySelectorAll(".jslink")
    links.forEach(function(link) {
      link.addEventListener("click", (event) => {
        selectActive(links,event.currentTarget);
        renderHtml(event.currentTarget)
      })

    })
  }

document.addEventListener("DOMContentLoaded", () => {
  addLinksListener()
})
