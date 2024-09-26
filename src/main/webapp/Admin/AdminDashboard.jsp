<%@ page contentType="text/html;charset=UTF-8" language="java" %><%-- 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<html>
<head>
    <title>Flight Booking Receipt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .receipt {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .receipt h2 {
            text-align: center;
        }
        .receipt .section {
            margin-bottom: 20px;
        }
        .receipt .section p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="receipt">
        <h2>Flight Booking Receipt</h2>

        <div class="section">
            <p><strong>Airline Name:</strong> Your Airline Name</p>
            <p><strong>Booking ID:</strong> ${booking.bookingId}</p>
        </div>

        <div class="section">
            <h3>Passenger Information</h3>
            <p><strong>Name:</strong> ${booking.passengerName}</p>
            <p><strong>Contact Number:</strong> ${booking.contactNumber}</p>
            <p><strong>Email Address:</strong> ${booking.email}</p>
            <p><strong>Passport Number:</strong> ${booking.passportNumber}</p>
        </div>

        <div class="section">
            <h3>Flight Details</h3>
            <p><strong>Flight Number:</strong> ${booking.flightNumber}</p>
            <p><strong>Departure:</strong> ${booking.departureCity}, ${booking.departureDate}, ${booking.departureTime}</p>
            <p><strong>Arrival:</strong> ${booking.arrivalCity}, ${booking.arrivalDate}, ${booking.arrivalTime}</p>
            <p><strong>Class:</strong> ${booking.flightClass}</p>
        </div>

        <div class="section">
            <h3>Fare Details</h3>
            <p><strong>Base Fare:</strong> ${booking.baseFare}</p>
            <p><strong>Taxes:</strong> ${booking.taxes}</p>
            <p><strong>Additional Charges:</strong> ${booking.additionalCharges}</p>
            <p><strong>Total Amount:</strong> ${booking.totalAmount}</p>
        </div>

        <div class="section">
            <h3>Payment Information</h3>
            <p><strong>Payment Method:</strong> ${booking.paymentMethod}</p>
            <p><strong>Payment Date:</strong> ${booking.paymentDate}</p>
            <p><strong>Transaction ID:</strong> ${booking.transactionId}</p>
        </div>

        <div class="section">
            <h3>Notes</h3>
            <p>Please carry a valid ID proof for check-in.</p>
            <p>For cancellations or changes, contact our customer service.</p>
        </div>

        <div class="section">
            <p>Thank you for booking with Your Airline Name! Have a pleasant flight!</p>
        </div>
    </div>
</body>
</html>
