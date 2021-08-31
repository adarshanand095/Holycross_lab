<?php 
   include("db.php");
   //$querry="select * from patdb";
   //$result=mysqli_query($querry);
   
   ?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <title>Document</title>
      <style>
        .result{
         color:red;
        }
        td
        {
          text-align:center;
        }
      </style>
   </head>
   <body>
      <section class="mt-3">
         <div class="container-fluid">
         <h4 class="text-center" style="color:green" text-align="center"> Holy Cross X-Rays </h4>
                            <h6 class="text-center">Holy cross hospital kodanchery p o -673580</h6>
                            <h6 class="text-center">PH:+91 9847264277  Email: holycrossxrays@gmail.com</h6>
         <div class="row">
            <div class="col-md-5  mt-4 ">
               
               <table class="table" style="background-color:#f5f5f5;">
               



                  <thead>
                     <tr>
                        <th>No.</th>
                        <th>Investigations /Services</th>
                        <th style="width: 31%">Qty</th>
                        <th>Price</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td scope="row">1</td>
                        <td style="width:60%">
                           <select name="vegitable" id="vegitable" class="form-control">    
                              <?php 
                                 $sql = "SELECT * FROM orders";
                                 $query = mysqli_query($conn,$sql);
                                 while($row = mysqli_fetch_assoc($query)){
                                 ?>
                              <option id="<?php echo $row['id']; ?>" value="<?php echo $row['product_name']; ?>" class="vegitable custom-select" >     
                                 <?php echo $row['product_name']; ?>
                              </option>
                              <?php  }?>   
                           </select>
                        </td>
                        <td style="width:1%">
                          <input type="number" id="qty" min="1" value="1" class="form-control">
                        </td>
                        <td>
                           <p id="price"></p>
                        </td>
                        <td><button id="add" class="btn btn-primary">Add</button></td>
                     </tr>
                  </tbody>
               </table>
               <!-- End of first Table  -->


<form action="secnew.php" method="post">
               <div role="alert" id="errorMsg" class="mt-5" >
                 <!-- Error msg  -->
              </div>
            </div>
            <div class="col-md-7  mt-4" style="background-color:#f5f5f5;">
               <div class="p-4">
                  <div class="text-center">
                     <h4>Receipt</h4>
                  </div>
                  <tr>           
                         <td> <label>Bill.No :<input type="text" size="5" id="billno" name="billno" placeholder="Bill No."/> </label></td>
                  </tr>
                  




                  <div class="row">
                     <div class="col-xs-6 col-sm-6 col-md-6 ">
                     <th><label>Name   : <input type="text" name="name" placeholder="Enter name Here"/></label></th><br>
                     <th><label>Ref By : </label> <label><input type="text" name="refby" placeholder="Enter Referred Dr. name"/></label></th> 
                     </div>
                     <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                     <th><label>Date : <span id="year"> </span></label></th> <br>
                     <th><label>Pat ID : </label> <label><input type="text" size="12" name="pid" placeholder="Enter patient ID" /></label></th><br>
                     <th> <label>Phone :  </label> <label><input type="text" size="12" name="phone" placeholder="Enter phone no" /></label></th>
                     </div>
                  </div>
                  <div class="row">
                     </span>
                     <table id="receipt_bill" class="table">
                        <thead>
                           <tr>
                              <th> No.</th>
                              <th>Product Name</th>
                              <th>Quantity</th>
                              <th class="text-center">Price</th>
                              <th class="text-center">Total</th>
                           </tr>
                        </thead>
                        <tbody id="new" >
                         
                        </tbody>
                       <tbody> <input type="text" id="service" name="service" hidden></input> 
                                 <input type="text" id="prc" name="prc" hidden></input>
                                 <input type="text" id="totalamt" name="totalamt" hidden></input>   
                                 
                        </tbody>
                        <tr>
                           <td> </td>
                           <td> </td>
                           <td> </td>
                           <td class="text-right text-dark" >
                                <h5><strong>Sub Total:  ₹ </strong></h5>
                              
                           </td>
                           <td class="text-center text-dark" >
                              <h5> <strong><span id="subTotal"></strong></h5>
                              
                           </td>
                        </tr>
                        <tr>
                           <td> </td>
                           <td> </td>
                           <td> </td>
                           <td class="text-right text-dark">
                              <h5><strong>Gross Total: ₹ </strong></h5>
                           </td>
                           <td class="text-center text-danger">
                              <h5 id="totalPayment"><strong> </strong></h5>
                              
                           </td>
                        </tr>
                     </table>

                     <div class="col-xs-6 col-sm-6 col-md-6 ">                                   
                          
                     </div>
                     <div class="text-right"> 
                     <h5><b>Emergency Charges</b> </h5><br>     
                         <p> Discount  :  <input type="text" size="9" id="disc" name="disc" placeholder="Discount amt"/> </p> 
                         <p> Total Paid  : <input type="text" size="9" id="paid" name="paid" placeholder="Toatl Paid amt" /> </p>
                         <p> Due  : <input type="text" id="duee" size="8" name="due" disabled/></p>
                         <input type="text" id="due" size="5" name="due" hidden/>     
                         <input type="text" id="dat" size="5" name="dat"  hidden/>
                     </div>
                     <div class="col-xs-6 col-sm-6 col-md-6 ">                                   
                     <p>Billed By  :<input type="text" name="billedby" placeholder="Enter Name" /></p>
                     </div>
                     <div class="text-center"> 
                     <p> <button id="btn" type="submit" name="submit" > SUBMIT  </button></p>

                     </div>
                        <script>
                           function Refreshpage()
                           {
                              location.reload();
                           }

                        </script>
                  </div>
               </div>
            </div>
         </div>
                                 </form>
      </section>
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

               //$('#qty').text(data.product_qty);
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
          var table1 =   '<tr><td>'+ name + '</td></tr>';
          
          var pri =   '<tr><td>'+ price + '</td></tr>';
          var tot =   '<tr><td>'+ total + '</td></tr>';

                    $('#new').append(table);

          var tval= $('#service').append(table1).text();
          document.getElementById("service").value=tval;

          var itemprice= $('#prc').append(pri).text();
          document.getElementById("prc").value=itemprice;

          //code for due
         
          $("#disc,#paid").keyup(function(){ 
            var dueamt = 0;
          var dis=Number($("#disc").val());
          var paidamt=Number($("#paid").val());
          dueamt= subTotal-(dis+paidamt);
          $("#duee").val(dueamt);
          
          document.getElementById("due").value=dueamt;

          var tota= $('#totalamt').append(paidamt).text();
          document.getElementById("totalamt").value=tota;

          var disamt= $('#discamt').append(dis).text();
          document.getElementById("discamt").value=disamt;

         });


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
                document.getElementById("dat").value=datetime;

           // Code for extract Weekday     
                
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
<script>
/*var billnum=100;
             $('#billno').text(billnum);
         
             function increment(){
               $('#billno').text(billnum);
                billnum++;
                //return billnum++;
                } */
</script>                