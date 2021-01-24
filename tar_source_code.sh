rm filelist.txt

# Extension
find -type f | grep '\.cpp$' > filelist.txt
find -type f | grep '\.cu$' >> filelist.txt
find -type f | grep '\.hpp$' >> filelist.txt
find -type f | grep '\.c$' >> filelist.txt
find -type f | grep '\.h$' >> filelist.txt
find -type f | grep '\.user$' >> filelist.txt
find -type f | grep '\.filters$' >> filelist.txt
find -type f | grep '\.rc$' >> filelist.txt
find -type f | grep '\.vcxproj$' >> filelist.txt
find -type f | grep '\.txt$' >> filelist.txt
find -type f | grep '\.ico$' >> filelist.txt
find -type f | grep '\.rc2$' >> filelist.txt
find -type f | grep '\.bmp$' >> filelist.txt
find -type f | grep '\.yuv$' >> filelist.txt
find -type f | grep '\.sln$' >> filelist.txt
find -type f | grep '\.ini$' >> filelist.txt
find -type f | grep '\.example$' >> filelist.txt
find -type f | grep '\.xml$' >> filelist.txt
find -type f | grep '\.sh$' >> filelist.txt
find -type f | grep '\.bat$' >> filelist.txt

# Certain files
find -type f | grep 'ForExample.lib' >> filelist.txt
find -type f | grep 'NecessaryFile.lib' >> filelist.txt
find -type f | grep 'TypeFileNameThatYouNeed.lib' >> filelist.txt

cat filelist.txt | grep -v '\.git\/' > temp.txt
mv temp.txt filelist.txt
cat filelist.txt | grep -v 'x64/' > temp.txt
mv temp.txt filelist.txt

find -type f | grep '.gitignore' >> filelist.txt

rm CompressedFileName.tgz

tar -cvf CompressedFileName.tgz -T filelist.txt

#rm filelist.txt

