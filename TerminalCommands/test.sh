function copyFiles() {
   arr=("$@")
   for i in "${arr[@]}";
      do
          echo "$i"
      done

}

array=("one 1" "two 2" "three 3")

copyFiles "${array[@]}"
i=true
echo $i
