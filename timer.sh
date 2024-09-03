seconds=20
end_seconds=$((SECONDS+seconds))
counter=4
loading=""
while ((SECONDS<end_seconds)); do
    if [ "$counter" -eq 4 ]; then
        loading="\r   \r"
        counter=0
    else
        printf "$loading"
        loading="$loading."
        counter=$((counter+1))
    fi
    sleep 0.5
done
