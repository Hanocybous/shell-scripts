#!/bin/bash
log_file="/path/to/logfile.log"
error_count=$(grep -c "ERROR" "$log_file")
warning_count=$(grep -c "WARNING" "$log_file")

echo "Error Count: $error_count"
echo "Warning Count: $warning_count"
