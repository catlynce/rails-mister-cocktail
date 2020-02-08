document.querySelectorAll('.carousel-item').forEach((el, i) => {
    console.log(i);
    if ( i === 0)
        el.classList.add('active');
});