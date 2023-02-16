// 섹션 이미지 딜레이 넣기
const fadeEls = document.querySelectorAll('.fade-in');
fadeEls.forEach(function (fadeEl, index) {

  gsap.to(fadeEl, 1, {
    delay: (index + 1)*0.15, //0.7초 뒤, 1.4초 뒤, 2.1초 뒤, 2.7초 뒤
    opacity: 1
  });
});

