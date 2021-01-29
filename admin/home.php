<div class="container">
<h3>Administrator Panel:Welcome <?php echo $_SESSION['ADMIN_UNAME'];?></h3>

<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          Rooms
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
      Nhà khách có nhiều phòng khác nhau được phân loại đàn accordion cho các loại.
       Mỗi phòng thuộc loại cụ thể và có số lượng người lớn và trẻ em tối đa có thể ở. Click<a href="mod_room/index.php"> HERE.</a>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
          Accomodation
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
        Điều này bao gồm các loại phòng trong Khách sạn này. Mỗi hạng phòng đều có những tính năng độc đáo khác nhau. Để xem tất cả các hạng mục của tất cả các loại phòng. Click <a href="mod_roomtype/index.php">HERE.</a>  </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          Reservation
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
       Trong khu vực này, bạn có thể xem tất cả các giao dịch đặt phòng của tất cả khách. Và khu vực này cho phép lễ tân xác nhận yêu cầu của khách hoặc hủy đặt phòng. Click <a href="mod_reservation/index.php">HERE.</a>
       </div>
    </div>
  </div>
 
   <?php if($_SESSION['ADMIN_UROLE']=="Administrator"){ ?>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapsesix">
          Users
        </a>
      </h4>
    </div>
    <div id="collapsesix" class="panel-collapse collapse">
      <div class="panel-body">
		    Hệ thống hiển thị danh sách tất cả những người đã đăng ký vào hệ thống. Để xem tất cả những người đã đăng ký ngoài người dùng đã đăng nhập. Click <a href="mod_users/index.php">HERE.</a>
      </div>
    </div>
  </div>
  <!-- <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseseven">
          Utilities
        </a>
      </h4>
    </div>
    <div id="collapseseven" class="panel-collapse collapse">
      <div class="panel-body">
          In this area, you can change the description and slided of pictures of the home page. Click <a href="mod_settings/index.php">HERE.</a>
      </div>
    </div>
  </div> -->
 <?php } ?>
</div>
</div>