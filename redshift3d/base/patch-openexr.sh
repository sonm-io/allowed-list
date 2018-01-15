cd /usr/lib/x86_64-linux-gnu/
for file in libIlmImf*; do ln -s $file ${file/libIlmImf/libopenexr}; done
