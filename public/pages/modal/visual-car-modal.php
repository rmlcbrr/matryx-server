<div class="modal fade" id="Cars" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">VISUAL RESULT</h1>
            </div>
            <div class="modal-body">
            <input type="hidden" id="CAR-ID">
                <div class="container">
                <span class="fw-bold">
                ODOMETER: <input type="number" id="car-speedometer">
                </span>
                    <div class="row">
                        <div class="col-sm-5 col-md-6">
                            <table id="aboveResult" class="table table-striped table-bordered" style="width:100%;">
                                <thead>
                                    
                                    <tr>
                                        <th>ABOVE CARRRIAGE</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                        <div class="col-sm-5 col-md-6">
                            <table id="underResult" class="table table-striped table-bordered" style="width:100%;">
                                    <thead>
                                        <tr>
                                            <th>UNDER CARRRIAGE</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="Cancel-Data">CANCEL</button>
                <button type="button" class="btn btn-success" id="car-save">FINISH</button>
            </div>
        </div>
    </div>
</div>