<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			<title>ene book store</title>
	</head>

	<body>
	<jsp:include page="../pages/header.jsp"/>
	
		<div class="container">
		    <h1>Contact Us</h1>
		    <hr>
		
		    <div class="row">
		        <div class="span8">
		
		            <p class="visible-phone"><a class="btn btn-success" href="#">Email Us: support@eneBooks.com</a></p>
		
		            <div class="alert alert-success">
		                <strong>Before emailing,</strong> please read our <a href="#">frequently asked questions</a> or see our <a href="/howitworks">how-it works page</a>.
		                <br><br>And, be sure to include your Order ID (if you have one) in your email. Thank you!
		            </div>
		
		            <div class="well">
		                <p><i class="icon-envelope"></i> Email us: <a href="#">support@eneBooks.com</a></p>
		                <!--<p><i class="icon-bullhorn"></i> Call us: <a href="tel:877-243-5935">877-243-5935</a></p>-->
		                <p><i class="icon-map-marker"></i> We are located in Adelphi, Maryland.<!--Find us: <a target="_blank" href="https://maps.google.com/maps?q=21220+Northwest+Amberwood+Drive,+Hillsboro,+OR&hl=en&sll=45.536095,-122.894934&sspn=0.010927,0.022724&oq=21220+NW+Amberwood+Drive,+hi&gl=us&hnear=21220+NW+Amberwood+Dr,+Hillsboro,+Oregon+97124&t=m&ie=UTF8&hq=&z=14&ll=45.536095,-122.894934&source=embed">on Google Maps</a>--></p>
		                
		                <p><strong>LOCAL CUSTOMERS:</strong> Feel free to contact us @UMGC Location</p>
		                <p><address>
		                    <strong>Ene Books, Inc.</strong><br>
		                    3501 University Blvd E<br>
		                    Adelphi, MD 20783<br>
		                </address>
		                </p>
		            </div>
		        </div>
		
		        <div class="span4">&nbsp;
		            <!--<iframe width="370" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=21220+Northwest+Amberwood+Drive,+Hillsboro,+OR&amp;hl=en&amp;sll=45.536095,-122.894934&amp;sspn=0.010927,0.022724&amp;oq=21220+NW+Amberwood+Drive,+hi&amp;gl=us&amp;hnear=21220+NW+Amberwood+Dr,+Hillsboro,+Oregon+97124&amp;t=m&amp;ie=UTF8&amp;hq=&amp;z=14&amp;ll=45.536095,-122.894934&amp;output=embed"></iframe><br /><small><a target="_blank" href="https://maps.google.com/maps?q=21220+Northwest+Amberwood+Drive,+Hillsboro,+OR&amp;hl=en&amp;sll=45.536095,-122.894934&amp;sspn=0.010927,0.022724&amp;oq=21220+NW+Amberwood+Drive,+hi&amp;gl=us&amp;hnear=21220+NW+Amberwood+Dr,+Hillsboro,+Oregon+97124&amp;t=m&amp;ie=UTF8&amp;hq=&amp;z=14&amp;ll=45.536095,-122.894934&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>-->
		        </div>
		    </div>
		</div>
		
		<!-- Conctact -->
		<section id="contact2" class="contact2"><!-- background pattern -->
			
                <div class="container">

                    <div class="row">

                        <div class="col-md-offset-3 col-md-6 col-sm-12 col-xs-12 ">

                            <!-- contact form -->
                            <div class="contact-form">

                                <form class="clearfix" accept-charset="utf-8" method="get" action="#">

                                    <div class="row">

                                        <div class="col-sm-6 form-group wow fadeInDown" data-wow-delay="700ms" data-wow-duration="1000ms">

                                            <label class="sr-only" for="name">Your Name</label>									

                                            <input type="text" placeholder="Your Name" name="name" class="form-control input-lg" required="">										

                                        </div>

                                        <div class="col-sm-6 form-group wow fadeInDown" data-wow-delay="700ms" data-wow-duration="1000ms">

                                            <label class="sr-only" for="email">Email Address</label>

                                            <input type="email" placeholder="Your Email" name="email" class="form-control input-lg" required="">

                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-sm-12 form-group wow fadeInDown" data-wow-delay="900ms" data-wow-duration="1000ms">

                                            <label class="sr-only">Phone Number</label>

                                            <input type="tel" placeholder="Phone Number" name="tel" class="form-control input-lg">                                         

                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-sm-12 form-group wow fadeInDown" data-wow-delay="1000ms" data-wow-duration="1000ms">

                                            <label class="sr-only" for="message">Write Message</label>

                                                <textarea rows="6" name="message" id="message" class="form-control input-lg " placeholder="Write Massage" required=""></textarea>

                                        </div>

                                    </div>

                                    <!-- submit button -->
                                    <button class="btn btn-success btn-lg btn-block wow fadeInDown" data-wow-delay="1200ms" data-wow-duration="1000ms" type="submit">Send Message</button>

                                </form>

                            </div>

                        </div>

                    </div>

                </div>

            </section>
		
					
					
	</body>
				

<jsp:include page="../pages/footer.jsp"/>

</html>