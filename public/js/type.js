---
---

$(function(){
  $(".typed .title").typed({
    strings: ["{{ site.title | split: ' ' | join: ' ^250 ' }}"],
    startDelay: 750,
    typeSpeed: 25
  });
});