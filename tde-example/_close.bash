# Close script
# ------------
# gracefully close a script started with `_setup.sh`
# IMPORTANT: source this script, don't run it

popd

# compute and print elapsed time
end_time=$(date +%s)
printf "\n\nTime: $(expr $end_time - $start_time)s.\n\n"
