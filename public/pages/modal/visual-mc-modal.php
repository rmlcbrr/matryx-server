<div class="modal fade" id="Motor" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">VISUAL RESULT</h1>
            </div>
            <div class="modal-body">
                <input type="hidden" id="MC-ID">
                <div class="container">
                <span class="fw-bold">
                    ODOMETER: <input type="number" id="mc-speedometer">
                </span>
                    <table id="motorResult" class="table table-striped table-bordered" style="width:100%;">
                        <thead>
                            <tr>
                                <th>MOTORCYCLE VISUAL INSPECTION</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="Cancel-Data">CANCEL</button>
                <button type="submit" class="btn btn-success" id="mc-save">FINISH</button>
            </div>
        </div>
    </div>
</div>