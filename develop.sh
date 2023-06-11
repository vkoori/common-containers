#!/bin/bash

# Declare an array to store the available options
options=("mariadb" "mongo" "redis" "rabbitmq" "adminer" "phpmyadmin" "mongo-express" "redis-commander" "minio")

# Declare a variable to store the selected options
selected_options=()

while true; do
  # Print option list and description
  echo "Select an option:"
  for option in "${options[@]}"; do
    echo "- $option"
  done
  echo "- FINISH"

  # Read user input
  read -p "Enter an option: " option

  # Check if the user's input is valid
  if [[ "$option" == "FINISH" ]]; then
    break # Exit the loop if the user selected FINISH
  elif [[ ! " ${options[@]} " =~ " $option " ]]; then
    echo "Invalid option. Please try again."
    continue # Restart the loop if the user's input is invalid
  elif [[ " ${selected_options[@]} " =~ " $option " ]]; then
    echo "Option already selected. Please select another option."
    continue # Restart the loop if the user already selected the option
  fi

  selected_options+=("$option") # Add the option to the selected options
done

# Concatenate the command
command="docker compose -f develop.yml"
for option in "${selected_options[@]}"; do
  command+=" --profile $option"
done
command+=" up -d"

# Execute the command
echo "Running command: \"$command\""
$command

