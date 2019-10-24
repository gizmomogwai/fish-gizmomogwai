function config-odis -d "config enp0s26u1u4u1u3 for odis flashing"
#  set dev enp0s26u1u4u1u3
  set dev enp0s26u1u4u1u4
  sudo ip addr flush dev $dev && sudo ip addr add 169.254.77.1/16 dev $dev && sudo ip addr add fe80:0000:0000:0000:021a:37ff:febf:ed27/64 dev $dev && sudo ip link set $dev up
end
