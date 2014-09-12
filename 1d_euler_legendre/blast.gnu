reset
unset key
set grid
#set yran[-0.2:7]
filename(n) = sprintf("sol_%d.gpl",n)
N=system("ls -1 sol_*.gpl | wc -l")
do for [i=0:N-1] {
   plot filename(i) u 1:2 w l lw 2
   pause 0.2
}
plot filename(i) u 1:2 w l lw 2,'blast.dat' u 1:2 w l lw 2
