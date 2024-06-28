<?php
// Include necessary libraries
require_once('tcpdf/tcpdf.php');
require_once('../includes/connection.php'); // Include your database connection script

// Fetch data from the database
$query = "SELECT * FROM users";
$result = mysqli_query($connection, $query);

// Create new PDF instance
$pdf = new TCPDF();

// Set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Fees Status Report');
$pdf->SetSubject('Fees Status Report');
$pdf->SetKeywords('Fees, Status, Report');

// Add a page
$pdf->AddPage();

// Generate HTML content for the table
$html = '<h1>Fees Status Report</h1>';
$html .= '<table border="1">';
$html .= '<tr><th>ID</th><th>Name</th><th>Fees Status</th></tr>';

while ($row = mysqli_fetch_assoc($result)) {
    $html .= '<tr>';
    $html .= '<td>' . $row['sno'] . '</td>';
    $html .= '<td>' . $row['fname'] . '</td>';
    $html .= '<td>' . ($row['fee_status'] == 1 ? 'Paid' : 'Unpaid') . '</td>';
    $html .= '</tr>';
}

$html .= '</table>';

// Output the HTML content into the PDF
$pdf->writeHTML($html, true, false, true, false, '');

// Close and output PDF
$pdf->Output('fees_status_report.pdf', 'D');
?>
