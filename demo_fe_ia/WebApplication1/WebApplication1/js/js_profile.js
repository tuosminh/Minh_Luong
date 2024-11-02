
//điều khiển menu phụ
function showContent(contentId, button) {
    // Ẩn tất cả nội dung
    let contents = document.getElementsByClassName('menu-content');
    for (var i = 0; i < contents.length; i++) {
        contents[i].style.display = 'none';
    }
    // Hiển thị nội dung tương ứng với menu phụ được nhấn
    document.getElementById(contentId).style.display = 'block';

    // Loại bỏ lớp 'active-btn' từ tất cả các nút
    let buttons = document.querySelectorAll('.nav-item button');
    buttons.forEach(function (btn) {
        btn.classList.remove('active-btn');
    });

    // Thêm lớp 'active-btn' vào nút được nhấn
    button.classList.add('active-btn');
}