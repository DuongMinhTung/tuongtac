<?php

if (!isset($_SESSION['dragonhouse_cart'])) {
  # code...
  redirect(WEB_ROOT.'index.php');
}


// if (isset($_POST['profileCheck'])) {
//   # code...
//     unset($_SESSION['pay']);
//    unset($_SESSION['dragonhouse_cart']);
// }

/*$guestid =$_GET['guestid'];
$guest = new Guest();
$result=$guest->single_guest($guestid);*/

  $name = $_SESSION['name']; 
  $last = $_SESSION['last'];
  // $country =$_SESSION['country'];
  $city = $_SESSION['city'] ;
  $address = $_SESSION['address'];
  $zip =  $_SESSION['zip'] ;
  $phone = $_SESSION['phone'];
  // $email = $_SESSION['email'];
  // $password =$_SESSION['pass'];
  $stat = $_SESSION['pending'];

?>

 <div id="accom-title"  > 
    <div  class="pagetitle">   
            <h1  >Reservation Details
                 
            </h1> 
       </div> 
  </div>

<div class="container"> 

    <div class="col-xs-12 col-sm-11">
      <!--<div class="jumbotron">-->
        <div class="">
           

          <td valign="top" class="body" style="padding-bottom:10px;">

           <form action="index.php?view=payment" method="post"  name="" >
            <span id="printout">
            
           <p>
            <? print(Date("l F d, Y")); ?>
            <br/><br/>
           Sir/Madam <?php echo $name.' '.$last;?> <br/>
           <?php echo $address;?><br/>
           <?php echo $phone;?> <br/>
           <!-- <?php echo $email;?><br/><br/> -->
           Dear Sir/Madam. <?php echo $last;?>,<br/><br/>
           Greetings from dragonhouse Beach Resorts!<br/><br/>
           Please check the details of your reservation:<br/><br/>
           <strong>GUEST NAME(S):</strong> <?php echo $name.' '.$last;?>


          </p>

        <table class="table table-hover">
              <thead>
                <tr  bgcolor="#999999">
                  <!-- <th width="10">#</th> -->
                  <th align="center" width="120">Room Type</th>
                  <th align="center" width="120">Check In</th>
                  <th align="center" width="120">Check Out</th>
                  <th align="center" width="120">Nights</th>
                  <th  width="120">Price</th>
                  <th align="center" width="120">Room</th>
                  <th align="center" width="90">Amount</th> 
                </tr> 
              </thead>
          <tbody>
          
            <?php




             // $arival   = $_SESSION['from']; 
             //  $departure = $_SESSION['to']; 
              // $days = dateDiff($arival,$departure);
              $count_cart = count($_SESSION['dragonhouse_cart']);

                for ($i=0; $i < $count_cart  ; $i++) {    
              $mydb->setQuery("SELECT * FROM `tblroom` r, `tblaccomodation` a WHERE  r.`ACCOMID`=a.`ACCOMID` AND `ROOMID` =". $_SESSION['dragonhouse_cart'][$i]['dragonhouseroomid']);
              $cur = $mydb->loadResultList();

              foreach ($cur as $result) {
                echo '<tr>'; 
                // echo '<td></td>';
                echo '<td>'. $result->ROOM.' '. $result->ACCOMODATION.'</td>';
                echo '<td>'.$_SESSION['dragonhouse_cart'][$i]['dragonhousecheckin'].'</td>';
                echo '<td>'.$_SESSION['dragonhouse_cart'][$i]['dragonhousecheckout'].'</td>';
                echo '<td>'.$_SESSION['dragonhouse_cart'][$i]['dragonhouseday'].'</td>';
                echo '<td> &euro;'. $result->PRICE.'</td>';
                echo '<td >1</td>';
                echo '<td >&euro;'. $_SESSION['dragonhouse_cart'][$i]['dragonhouseroomprice'].'</td>'; 
                echo '</tr>';
              } 


          }
           $payable= $result->PRICE *$days;
           $_SESSION['pay']= $payable;
            ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="5"></td><td align="right"><h5><b>Order Total: </b></h5>
              <td align="left">
              <h5><b> <?php echo '&euro;' . $payable= $days*$result->PRICE; ?></b></h5>
                           
              </td>
            </tr>
            <!--   <tr>
            <td colspan="4"></td><td colspan="5">
                  <div class="col-xs-12 col-sm-12" align="right">
                      <button type="submit" class="btn btn-primary" align="right" name="btnlogin">Payout</button>
                  </div>

            </td>
            </tr> -->

          </tfoot>  
        </table>

    <?php   
     // unset($_SESSION['pay']);
     //    unset($_SESSION['dragonhouse_cart']);
        ?>
<p>Chúng tôi rất háo hức dự đoán sự xuất hiện của bạn và muốn thông báo cho bạn những điều sau để giúp bạn lên kế hoạch cho chuyến đi của mình. is <b><?php echo $_SESSION['confirmation']?>:</b><br/><br/>Nếu có thắc mắc về đặt phòng của bạn, đại diện dịch vụ khách hàng sẽ liên hệ với bạn. Nếu không, hãy coi đặt chỗ của bạn đã được xác nhận.</p>
<ul>
 <li>Function Room có giá là &euro; 500.00 cho 4 giờ đầu tiên và &euro; 100.00 mỗi giờ tiếp theo.</li>
 <li>Không cho phép vật nuôi.</li>
 <li>Thực phẩm bên ngoài được phép vào trong nhà khách.</li>
 <li>Thời gian nhận phòng là 1 giờ trưa và thời gian trả phòng là 12 giờ trưa.</li>
 <li>Guest arriving before 1 pm shall be accommodated if rooms are vacant and ready.</li>
 <li>Truy cập WIFI miễn phí.</li>
 <li>Giá phòng đã bao gồm thuế chính phủ và phí dịch vụ.</li>
 <li>Giá có thể thay đổi mà không cần thông báo trước.</li>
 <li>Việc hủy đặt phòng phải được thông báo ít nhất 10 ngày trước khi đến để được hoàn trả tiền đặt cọc. Việc hủy bỏ trong vòng 10 ngày sẽ bị mất toàn bộ tiền đặt cọc.</li>
 <li>Chúng tôi phục vụ Bữa sáng, Bữa trưa và Bữa tối theo yêu cầu với thời gian báo trước 2 giờ.</li><br>
<strong>Tôi đã đồng ý rằng tôi sẽ xuất trình các giấy tờ sau khi nhận phòng:</strong><br/>Bản sao Thanh toán BDO.
 <li></li>
 <li>Thư ủy quyền do người thanh toán BDO cấp cho / những khách có giao dịch được thanh toán thay mặt cho họ.</li>
 </ul>
Nếu bạn có bất kỳ câu hỏi nào, vui lòng gửi email theo địa chỉ dragonhouse.com hoặc gọi (034) 4713 - 135
<br/><br/>
Cảm ơn bạn đã chọn Dragon house
<br/><br/>
Trân trọng kính chào,<br/><br/>
Dragon House 
<br/><br/><br/>
</span>
<div id="divButtons" name="divButtons">
<a href="print_reservation.php" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
<!-- <input type="button" value="Print" onclick="tablePrint();" class="btn btn-primary"> -->
</div>
              </form>
 
        </div>
    <!--  </div>-->
    </div>
    <!--/span--> 
    <!--Sidebar-->

  </div>
  <!--/row-->
  <script>
function tablePrint(){ 
 document.all.divButtons.style.visibility = 'hidden';  
    var display_setting="toolbar=no,location=no,directories=no,menubar=no,";  
    display_setting+="scrollbars=no,width=500, height=500, left=100, top=25";  
    var content_innerhtml = document.getElementById("printout").innerHTML;  
    var document_print=window.open("","",display_setting);  
    document_print.document.open();  
    document_print.document.write('<body style="font-family:verdana; font-size:12px;" onLoad="self.print();self.close();" >');  
    document_print.document.write(content_innerhtml);  
    document_print.document.write('</body></html>');  
    document_print.print();  
    document_print.document.close(); 
   
    return false;  
    } 
  $(document).ready(function() {
    oTable = jQuery('#list').dataTable({
    "bJQueryUI": true,
    "sPaginationType": "full_numbers"
    } );
  });   
</script>