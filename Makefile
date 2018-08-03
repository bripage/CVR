
all: spmv.cpp
	/opt/intel/compilers_and_libraries_2018/linux/bin/intel64/icpc -O3 -ansi-alias -xMIC-AVX512 -qopenmp -Wl,-rpath=/opt/intel/clck/2018.1/provider/share/common/lib/intel64 spmv.cpp -o spmv.cvr
#	icpc -O3 -ansi-alias -xMIC-AVX512 -qopenmp spmv.cpp -DMMAP -o spmv.ours.mmap
#	icpc -O3 -ansi-alias -xMIC-AVX512 -qopenmp spmv.cpp -DNITERS=100 -o spmv.ours.100
#	icpc -O3 -ansi-alias -xMIC-AVX512 -qopenmp spmv.cpp -DNITERS=100 -DMMAP -o spmv.ours.mmap.100
#debug:
#	icpc -O0 -ansi-alias -xMIC-AVX512 -qopenmp spmv.cpp -o spmv.g -g
clean:
	rm spmv.cvr
