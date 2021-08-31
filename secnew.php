<?php
$server= "localhost";
$username = "root";
$password= "";
$dbname= "bill";


$conn = mysqli_connect($server,$username,$password,$dbname);
if(isset($_POST['submit'])){
   if(!empty($_POST['billno']) && !empty($_POST['dat']) && !empty($_POST['prc']) && !empty($_POST['disc']) && !empty($_POST['totalamt']) && !empty($_POST['pid']) && !empty($_POST['name']) && !empty($_POST['phone']) && !empty($_POST['refby']) && !empty($_POST['due']) && !empty($_POST['billedby'])){
     $name = $_POST['name'];
     $date = $_POST['dat'];
     $price = $_POST['prc'];
     $totalpaid = $_POST['paid'];
     $disamt = $_POST['disc'];
     $service = $_POST['service'];
     $billno = $_POST['billno'];
     $pid = $_POST['pid'];
     $phone = $_POST['phone'];
     $refby = $_POST['refby'];
     $dueamt = $_POST['due'];
     $billedby = $_POST['billedby'];
//
     $query = " insert into patdb(billno, date, pid, name, phone, service, price, discount, totalpaid, dueamount, refby, billedby) values('$billno','$date','$pid','$name','$phone','$service','$price','$disamt', '$totalpaid', '$dueamt', '$refby', '$billedby')";
                                 
      $run = mysqli_query($conn,$query) or die(mysqli_error()) ;
      if($run){
        // echo "form submitted successfully" ;
      }
      else{
            echo "form not submitted" ;
      }
   }
   else{
         echo "All fields are required" ;
   }
}

?>

<?php 
   include("db.php");
    ?>




<!DOCTYPE html>
<html>
    <title>Receipt Bill</title>
    <head>
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="style.css" media="print">
    </head>
    <body>
        <section class="mt-3">
        <div class="container-fluid">
            
        <h4 class="text-center" style="color:green" text-align="center"> Holy Cross X-Rays </h4>
        <h6 class="text-center">Holy cross hospital &nbsp;kodanchery p o -673580</h6>
        <h6 class="text-center">PH:+91 9847264277  &nbsp;&nbsp; Email: holycrossxrays@gmail.com</h6>
        </div>
        </section>
        <div class="text-center">
           <br> <h4>Receipt</h4><br>
        </div>
        <div> 
            <form action="index.php "  >
                <table align="center" width="90%" border="1">
                <table align="center" width="50%" border="1.5" >
                    
                    <tr>
                        <td align="left" width="50%"><b> Bill.No :&nbsp;</b> <?php echo $_POST['billno']; ?> </td>
                        



                        <td align="center" width="50"><label><b>Date :</b> <span id="year"> </span></label> </td>
                    </tr>
                    <tr>
                        <td align="left" width="50%"><b> Name :&nbsp;</b> <?php echo $_POST['name']; ?> </td>
                        <td align="center" width="50"><b> Pat ID :&nbsp;</b> <?php echo $_POST['pid']; ?> </td>
                    </tr>
                    <tr>
                        <td align="left" width="50%"><b> Ref By : &nbsp;</b> <?php echo $_POST['refby']; ?> </td>
                        <td align="center" width="50"><b>Phone : &nbsp; </b> <?php echo $_POST['phone']; ?> </td>
                    </tr>
                </table>
                <div>
                    <br>
                  <table align="center" width="50%" border="1" >
                    <tr>
                      <th style="border: 1px;padding: auto;">No.</th>
                      <th>Service/Investigation </th>
                      <th>Price </th>
                      <th>Total</th>
                    </tr>
                    <tr>
                      <td > 1 </td>
                      <td> <?php echo $_POST['service']; ?> </td>
                      <td> <?php echo $_POST['prc']; ?> </td>
                      <td> <?php echo $_POST['prc']; ?> </td>
                     
                    </tr>
                    
                  </table>
                </div>  
                <div>
                    <table align="right" width="40%"  border="0">
                        <tr><br>
                            <td align="left" width="50%" ><b><h5> Sub Total : <?php echo $_POST['prc']; ?></h5></b> </td>
                        </tr>
                        <tr>
                            <td align="left" width="50%"><h6> Emergency Charges </h6></td>
                        </tr>
                        <tr>
                            <td align="left" width="50%"><b><h5> Discount : <?php echo $_POST['disc']; ?></h5></b></td>
                        </tr>
                        <tr>
                            <td align="left" width="50%"><b><h5> Total Paid : <?php echo $_POST['paid']; ?></h5></b></td>
                        </tr>
                        <tr>
                            <td align="left" width="50%"><b><h5> Due :<?php echo $_POST['due']; ?> </h5></b></td>
                        </tr>
                    </table>
                    




                    <table align="right" width="30%" border="0">
                        <br><br>
                        <tr>
                            <td align="left" width="50%"> Billed By : <?php echo $_POST['billedby']; ?> </td>
                            <td><br><br><br><br><br><button class="btn btn-primary" align="right" onclick="window.print();" id="btn"> PRINT  </button></td>
                        </tr>
                       
                    </table>
                </div>
                </table>
                
            </form>
        </div>


        

    </body>
</html>

<script>
    $(document).ready(function(){
     $('#vegitable').change(function() {
      var id = $(this).find(':selected')[0].id;
       $.ajax({
          method:'POST',
          url:'fetch_product.php',
          data:{id:id},
          dataType:'json',
          success:function(data)
            {
               $('#price').text(data.product_price);

               
            }
       });
     });
   
     //add to cart 
     var count = 1;
     $('#add').on('click',function(){
   
        var name = $('#vegitable').val();
        var qty = $('#qty').val();
        var price = $('#price').text();

        if(qty == 0)
        {
           var erroMsg =  '<span class="alert alert-danger ml-5">Minimum Qty should be 1 or More than 1</span>';
           $('#errorMsg').html(erroMsg).fadeOut(9000);
        }
        else
        {
           billFunction(); // Below Function passing here 
        }
        
        function billFunction()
          {
          var total = 0;
      
          $("#receipt_bill").each(function () {
          var total =  price*qty;
          var subTotal = 0;
          subTotal += parseInt(total);
         
          var table =   '<tr><td>'+ count +'</td><td>'+ name + '</td><td>' + qty + '</td><td>' + price + '</td><td><strong><input type="hidden" id="total" value="'+total+'">' +total+ '</strong></td></tr>';
          $('#new').append(table)

           // Code for Sub Total 
            var total = 0;
            $('tbody tr td:last-child').each(function() {
                var value = parseInt($('#total', this).val());
                if (!isNaN(value)) {
                    total += value;
                }
            });
             $('#subTotal').text(total);
              
           

             var Subtotal = $('#subTotal').text();
             var taxAmount = $('#taxAmount').text();

             var totalPayment = parseFloat(Subtotal) ;
             $('#totalPayment').text(totalPayment.toFixed(2)); // Showing using ID 
       
         });
         count++;
        } 
       });
           // Code for year 
            
           var currentdate = new Date(); 
             var datetime = currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear();
                $('#year').text(datetime);

           // Code for extract Weekday     
                function myFunction()
                 {
                    var d = new Date();
                    var weekday = new Array(7);
                    weekday[0] = "Sunday";
                    weekday[1] = "Monday";
                    weekday[2] = "Tuesday";
                    weekday[3] = "Wednesday";
                    weekday[4] = "Thursday";
                    weekday[5] = "Friday";
                    weekday[6] = "Saturday";

                    var day = weekday[d.getDay()];
                    return day;
                    }
                var day = myFunction();
                $('#day').text(day);
     });
</script>

<!-- // Code for TIME -->
<script>
    window.onload = displayClock();

     function displayClock(){
       var time = new Date().toLocaleTimeString();
       document.getElementById("time").innerHTML = time;
        setTimeout(displayClock, 1000); 
     }
</script>