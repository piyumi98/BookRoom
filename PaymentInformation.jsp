<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Payment Information</title>
    <link rel="stylesheet" href="style/PaymentInformation/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/PaymentInformation/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="style/PaymentInformation/css/Bootstrap-4---Payment-Form.css">
    <link rel="stylesheet" href="style/PaymentInformation/css/styles.css">
</head>

<body>

	<jsp:include page="/header.jsp"></jsp:include>

    <h1 style="text-align: justify;width: 800px;height: 50px;margin: 30px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Payment Information</h1><div class="container py-5">

  <div class="row">
    <div class="col-lg-7 mx-auto">
      <div class="bg-white rounded-lg shadow-sm p-5">
        <!-- Credit card form tabs -->
        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill">
                                <i class="fa fa-credit-card"></i>
                                Credit Card
            </a>
          </li>
        </ul>
        <!-- End -->


        <!-- Credit card form content -->
        <div class="tab-content">

          <!-- credit card info-->
          <div id="nav-tab-card" class="tab-pane fade show active">
            <p class="alert alert-success"></p>
            <form role="form">
              <div class="form-group">
                <label for="username">Full name (on the card)</label>
                <input type="text" name="username" placeholder="Jeff Doe" required class="form-control">
              </div>
              <div class="form-group">
                <label for="cardNumber">Card number</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Your card number" class="form-control" required>
                  <div class="input-group-append">
                    <span class="input-group-text text-muted">
                                                <i class="fa fa-cc-visa mx-1"></i>
                                                <i class="fa fa-cc-amex mx-1"></i>
                                                <i class="fa fa-cc-mastercard mx-1"></i>
                                            </span>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-8">
                  <div class="form-group">
                    <label><span class="hidden-xs">Expiration</span></label>
                    <div class="input-group">
                      <input type="number" placeholder="MM" name="" class="form-control" required>
                      <input type="number" placeholder="YY" name="" class="form-control" required>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="form-group mb-4">
                    <label data-toggle="tooltip" title="Three-digits code on the back of your card">CVV
                                                <i class="fa fa-question-circle"></i>
                                            </label>
                    <input type="text" required class="form-control">
                  </div>
                </div>



              </div>
              <button type="button" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Confirm  </button><a class="action" href="Success.jsp"></a>
            </form>
          </div>
          <!-- End -->
        </div>
        <!-- End -->

      </div>
    </div>
  </div>
</div>

    <script src="style/PaymentInformation/js/jquery.min.js"></script>
    <script src="style/PaymentInformation/bootstrap/js/bootstrap.min.js"></script>
    <script src="style/PaymentInformation/js/Bootstrap-4---Payment-Form.js"></script>
    
    <jsp:include page="/footer.jsp"></jsp:include>
    
</body>

</html>