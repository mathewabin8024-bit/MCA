<html>
<head>
    <title>Electricity Bill</title>
</head>

<body>

<h1>Electricity Bill</h1>

<form action="" method="post">
    <input type="number" name="units" placeholder="Enter number of units" required>
    <input type="submit" name="unit-submit" value="Calculate">
</form>

<?php

// When user submits the form
if (isset($_POST['unit-submit'])) {

    $units = $_POST['units'];

    if (!empty($units)) {
        $result = calculate_bill($units);
        echo "<h3>Total Amount for $units units : ₹ $result</h3>";
    }
}

// Function to calculate electricity bill
function calculate_bill($units) {

    $rate1 = 3.50;   // 0–50 units
    $rate2 = 4.00;   // 51–100 units
    $rate3 = 5.20;   // 101–200 units
    $rate4 = 6.50;   // above 200 units

    if ($units <= 50) {
        $bill = $units * $rate1;
    }
    else if ($units <= 100) {
        $bill = (50 * $rate1) + (($units - 50) * $rate2);
    }
    else if ($units <= 200) {
        $bill = (50 * $rate1) + (50 * $rate2) + (($units - 100) * $rate3);
    }
    else {
        $bill = (50 * $rate1) + (50 * $rate2) + (100 * $rate3) + (($units - 200) * $rate4);
    }

    return number_format($bill, 2, '.', '');
}

?>

</body>
</html>