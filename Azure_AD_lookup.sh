az login
test=$(az ad group list | jq -r .[].displayName)
for group in ${test[@]} 
do 
  echo $group 
done
for group in ${test[@]}
do  
    members=$(az ad group member list --group $group | jq -r .[].displayName)
    count=0 
    for member in ${members[@]} 
    do 
        echo  $member 
        count=$(( count + 1 )) 
    done
echo $group count = $count 
done
