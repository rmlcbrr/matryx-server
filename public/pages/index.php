<?php
session_start();
if(!isset($_SESSION['userdata'])){
    header("Location: ../");
    exit();
}


?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MATRYX IT SOLUTION</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap4.css" rel="stylesheet">
  </head>
  <body>
    <div class="fluid-container">
        <nav class="navbar" style="background-color: #b7d5a6;">
            <div class="container-fluid">
                <a class="navbar-brand">MATRYX IT SOLUTION</a>
                <span class="navbar-text fs-6">
                    USERNAME: <?= $_SESSION['userdata']['username']?>&nbsp;&nbsp;&nbsp;
                    WORKLANE: <?= $_SESSION['userdata']['position']?>
                 </span>
                <button class="btn btn-outline-danger" type="submit" id="logout">LOGOUT</button>
                </form>
            </div>
        </nav>
        <table id="dataResult" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>MVISR</th>
                    <th>PLATE</th>
                    <th>MV FILE</th>
                    <th>OPERATION</th>
                </tr>
            </thead>
        </table>
    </div>
    <?php 
        include 'modal/visual-car-modal.php'; 
        include 'modal/visual-mc-modal.php';
    ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap4.js"></script>
  </body>
</html>

<script>
$(document).ready(function(){
    $(document).on('click', '#logout', function() {
		Swal.fire({
			title: 'Are you sure to logout',
			text: "",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'YES'
		}).then((result) => {
			if (result.isConfirmed) {

				logout();
				Swal.fire(
					'Logout',
					'',
					'success'
				)

			}
	});

	function logout() {
        $.ajax({
            url: "../../private/controller/logout.php",
            type: 'GET',
            success: function(response) {
                location.reload();
            }
        });
		}
    });

    let dataResult = $('#dataResult').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "responsive": true,
                        "searching": false,
                        "paging": false,
                        "ordering": false,
                        "info": false,
                        "lengthChange": false,
                        "ajax": {
                            url: "../../private/controller/visual.php",
                            type: "POST"
                        }
                    });

   let aboveResult = $('#aboveResult').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "responsive": true,
                        "searching": false,
                        "paging": false,
                        "ordering": false,
                        "info": false,
                        "lengthChange": false,
                        "ajax": {
                            url: "../../private/controller/visual-above.php",
                            type: "POST"
                        }
                    });

   let underResult = $('#underResult').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "responsive": true,
                        "searching": false,
                        "paging": false,
                        "ordering": false,
                        "info": false,
                        "lengthChange": false,
                        "ajax": {
                            url: "../../private/controller/visual-under.php",
                            type: "POST"
                        }
                    });
   let motorResult = $('#motorResult').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "responsive": true,
                        "searching": false,
                        "paging": false,
                        "ordering": false,
                        "info": false,
                        "lengthChange": false,
                        "ajax": {
                            url: "../../private/controller/visual-motor.php",
                            type: "POST"
                        }
                    });
                    
   $(document).on('click', '#Cancel-Data', function() {
    dataResult.ajax.reload();
    aboveResult.ajax.reload();
    underResult.ajax.reload();
    motorResult.ajax.reload();
    $('#car-speedometer').val("");
    $('#mc-speedometer').val("");
   });

   function finishProccessMC(){
    motorResult.ajax.reload();
    dataResult.ajax.reload();
   }

   function finishProccessCAR(){
    
    aboveResult.ajax.reload();
    underResult.ajax.reload();
   }

   $(document).on('click', '.start-visual', function() {
    event.preventDefault();
    let id = $(this).data('id');

    $.ajax({
            type: "POST",
            url: "../../private/controller/fetch-visual-id.php",
            data: {id:id},
            cache: false,
            beforeSend: function() {
                
               
            },
            success: function(data,status,xhr)
            {
                let Ndata = JSON.parse(data);
                
                
                if(Ndata){
                    if(Ndata.upload_stage == "MT:W1" || Ndata.upload_stage == "MT23:W1" || Ndata.upload_stage == "MT:W2" || Ndata.upload_stage == "MT23:W2"){
                        $('#MC-ID').val(Ndata.id);
                        $('#Motor').modal('show');
                    }else{
                        $('#CAR-ID').val(Ndata.id);
                        $('#Cars').modal('show');
                        
                    }
                }else{
                    
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                        });
                        Toast.fire({
                        icon: "danger",
                        title: "NO ID DETECTED!!!"
                        });
                }
          
            },
            error:function(xhr,status,error){
                console.log(error);
            }
        

    });

   });

   $(document).on('click', '.toggleButton', function() {
    
        let currentValue = $(this).attr('data-value');
        let newValue;
        let newIcon;

        if (currentValue == '1') {
            newValue = '-1';
            newIcon = '❌';
        } else if (currentValue == '-1') {
            newValue = '0';
            newIcon = '➖';
        } else {
            newValue = '1';
            newIcon = '✔️';
        }

        $(this).attr('data-value', newValue);
        $(this).text(newIcon);
   });

   $(document).on('click', '#mc-save', function() {
        let results = {};
        document.querySelectorAll('.toggleButton').forEach(button => {
        let item = button.parentElement.textContent.trim().slice(1);  // Remove the icon and space
        let value = button.getAttribute('data-value');
            if(value == -1 || value == 0){
                results[item] = value;
            }
        });
        let id = $('#MC-ID').val();
        let speedometer = $('#mc-speedometer').val();
        $.ajax({
            type: "POST",
            url: "../../private/controller/update-visual.php",
            data: {results:results,id:id,speedometer:speedometer},
            cache: false,
            beforeSend: function() {
                
               
            },
            success: function(data,status,xhr)
            {
                let Ndata = JSON.parse(data);

                if(Ndata){
                    $('#mc-speedometer').val("");
                    finishProccessMC();
                    $('#Motor').modal('hide');
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                        });
                        Toast.fire({
                        icon: "success",
                        title: "UPDATED"
                        });
                }else{
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                        });
                        Toast.fire({
                        icon: "danger",
                        title: "ERROR"
                        });
                }
          
            },
            error:function(xhr,status,error){
                console.log(error);
            }
        

    });

   });

   $(document).on('click', '#car-save', function() {
        let results = {};
        document.querySelectorAll('.toggleButton').forEach(button => {
        let item = button.parentElement.textContent.trim().slice(1);  // Remove the icon and space
        let value = button.getAttribute('data-value');
            if(value == -1 || value == 0){
                results[item] = value;
            }
        });
        let id = $('#CAR-ID').val();
        let speedometer = $('#car-speedometer').val();
        $.ajax({
            type: "POST",
            url: "../../private/controller/update-visual.php",
            data: {results:results,id:id,speedometer:speedometer},
            cache: false,
            beforeSend: function() {
                
               
            },
            success: function(data,status,xhr)
            {
                let Ndata = JSON.parse(data);

                if(Ndata){
                    $('#car-speedometer').val("");
                    $('#Cars').modal('hide');
                    finishProccessCAR();
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                        });
                        Toast.fire({
                        icon: "success",
                        title: "UPDATED"
                        });
                }else{
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                        });
                        Toast.fire({
                        icon: "danger",
                        title: "ERROR"
                        });
                }
          
            },
            error:function(xhr,status,error){
                console.log(error);
            }
        

    });

   });

   setInterval(function () {
    dataResult.ajax.reload();
  }, 3000);
   
});  


   
</script>