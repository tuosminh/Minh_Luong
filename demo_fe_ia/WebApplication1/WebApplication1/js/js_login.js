document.addEventListener('DOMContentLoaded', function () {
    let wrapper = document.querySelector('.wrapper');
    let signuplink = document.querySelector('.signup-link');
    let loginlink = document.querySelector('.login-link');

    signuplink.onclick = () => {
        wrapper.classList.add("active");
        animateContainer();
    };

    loginlink.onclick = () => {
        wrapper.classList.remove("active");
        animateContainer();
    };

    let container = document.getElementById('container');
    let borderArray = ['50%', '0'];
    let blurArray = ['0', '5px'];
    let colorArray = ['#25252b', '#6305D3', '#E3D2F7'];
    let width = window.innerWidth;
    let height = window.innerHeight;
    let count = 30;
    

    function createElementRandom() {
        for (var i = 0; i < count; i++) {
            let randomLeft = Math.floor(Math.random() * width);
            let randomTop = Math.floor(Math.random() * height);
            let color = Math.floor(Math.random() * 3);
            let border = Math.floor(Math.random() * 2);
            let blur = Math.floor(Math.random() * 2);
            let widthElement = Math.floor(Math.random() * 5) + 7;

            let div = document.createElement("div");
            div.classList.add("moving-div");
            div.style.backgroundColor = colorArray[color];
            div.style.position = 'absolute';
            div.style.width = widthElement + 'px';
            div.style.height = widthElement + 'px';
            div.style.left = randomLeft + 'px';
            div.style.top = randomTop + 'px';
            div.style.borderRadius = borderArray[0];
            div.style.filter = 'blur(' + blurArray[blur] + ')';
            div.style.animation = 'move 5s ease-in forwards';
            container.appendChild(div);

            div.addEventListener('animationend', function () {
                this.remove(); // Xóa đốm sáng khi animation kết thúc
            });
        }
    }

    //function animateContainer() {
    //    container.innerHTML = '';
    //    createElementRandom();
    //    setTimeout(() => {
    //        var movingDivs = document.querySelectorAll('.moving-div');
    //        movingDivs.forEach(div => {
    //            div.style.animation = 'move 5s ease-in forwards';
    //        });
    //    }, 50);
    //}

    setInterval(createElementRandom, 3000);
    createElementRandom();
});
