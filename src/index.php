<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize URL input
    $url = escapeshellarg($_POST["url"]);

    // Change to the correct directory and execute the command
    $command = sprintf("cd /app && poetry run rip %s", $url);
    $output = shell_exec($command);

    // Output the result
    echo "<pre>$output</pre>";
}
?>

