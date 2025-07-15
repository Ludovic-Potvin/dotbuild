SYSTEM="$1"
SCRIPT_DIR="./scripts/$1"

# Validate the input
if [[ "$input" != "ubuntu" && "$input" != "arch" ]]; then
    echo "Error: Invalid input. Must be 'ubuntu' or 'arch'."
    exit 1
fi

for script in $SCRIPT_DIR do
	echo "Running $script"
	bash "$script"
done
