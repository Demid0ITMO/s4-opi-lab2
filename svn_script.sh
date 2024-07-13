#!/bin/sh

# init repository (server)
svnadmin create lab2-svn
svn mkdir -m "Create trunk directory" file:///home/demid/Desktop/lab2/lab2-svn/trunk
svn mkdir -m "Create branches directory" file:///home/demid/Desktop/lab2/lab2-svn/branches
svn mkdir -m "Create tags directory" file:///home/demid/Desktop/lab2/lab2-svn/tags

# checkout repository, make working copy (programmer)
svn checkout file:///home/demid/Desktop/lab2/lab2-svn/trunk trunk
cd trunk

svn copy file:///home/demid/Desktop/lab2/lab2-svn/trunk \
         file:///home/demid/Desktop/lab2/lab2-svn/branches/red \
         -m "new branch \"red\"" --username "red"
         
svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/red

unzip -o ../commits/commit0.zip -d .
svn add *
svn commit -m "r0" --username "red"

svn copy file:///home/demid/Desktop/lab2/lab2-svn/branches/red \
         file:///home/demid/Desktop/lab2/lab2-svn/branches/blue \
         -m "new branch \"blue\"" --username "blue"
         
svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/blue

unzip -o ../commits/commit1.zip -d .
svn commit -m "r1" --username "blue"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/red

unzip -o ../commits/commit2.zip -d .
svn commit -m "r2" --username "red"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/blue

unzip -o ../commits/commit3.zip -d .
svn commit -m "r3" --username "blue"

unzip -o ../commits/commit4.zip -d .
svn commit -m "r4" --username "blue"

unzip -o ../commits/commit5.zip -d .
svn commit -m "r5" --username "blue"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/red

unzip -o ../commits/commit6.zip -d .
svn commit -m "r6" --username "red"

svn copy file:///home/demid/Desktop/lab2/lab2-svn/branches/red \
         file:///home/demid/Desktop/lab2/lab2-svn/branches/blue2 \
         -m "new branch \"blue2\"" --username "blue"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/blue2

unzip -o ../commits/commit7.zip -d .
svn commit -m "r7" --username "blue"

unzip -o ../commits/commit8.zip -d .
svn commit -m "r8" --username "blue"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/red
svn merge file:///home/demid/Desktop/lab2/lab2-svn/branches/blue2 file:///home/demid/Desktop/lab2/lab2-svn/branches/red --username "red"
svn commit -m "merge blue2 into red" --username "red"

unzip -o ../commits/commit9.zip -d .
svn commit -m "r9" --username "red"

unzip -o ../commits/commit10.zip -d .
svn commit -m "r10" --username "red"

unzip -o ../commits/commit11.zip -d .
svn commit -m "r11" --username "red"

unzip -o ../commits/commit12.zip -d .
svn commit -m "r12" --username "red"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/blue

unzip -o ../commits/commit13.zip -d .
svn commit -m "r13" --username "blue"

svn switch file:///home/demid/Desktop/lab2/lab2-svn/branches/red
svn merge file:///home/demid/Desktop/lab2/lab2-svn/branches/blue file:///home/demid/Desktop/lab2/lab2-svn/branches/red --username "red"

svn add *
svn commit -m "merge blue into red" --username "red"

unzip -o ../commits/commit14.zip -d .
svn commit -m "r14" --username "red"


