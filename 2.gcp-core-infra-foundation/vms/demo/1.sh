free

sudo dmidecode -t 17

nproc

lscpu




student-01-2ea8401e353c@bkcustom:~$ sudo dmidecode -t 17
# dmidecode 3.2
Getting SMBIOS data from sysfs.
SMBIOS 2.4 present.

Handle 0x7000, DMI type 17, 21 bytes
Memory Device
        Array Handle: 0x0200
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 16384 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM 0
        Bank Locator: Not Specified
        Type: RAM
        Type Detail: Synchronous

Handle 0x7001, DMI type 17, 21 bytes
Memory Device
        Array Handle: 0x0200
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 16384 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM 1
        Bank Locator: Not Specified
        Type: RAM
        Type Detail: Synchronous

student-01-2ea8401e353c@bkcustom:~$

selected custom image with 6 vCPU and the 32GB memory

student-01-2ea8401e353c@bkcustom:~$ nproc
6
student-01-2ea8401e353c@bkcustom:~$


student-01-2ea8401e353c@bkcustom:~$ lscpu
Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Byte Order:          Little Endian
Address sizes:       46 bits physical, 48 bits virtual
CPU(s):              6
On-line CPU(s) list: 0-5
Thread(s) per core:  2
Core(s) per socket:  3
Socket(s):           1
NUMA node(s):        1
Vendor ID:           GenuineIntel
CPU family:          6
Model:               79
Model name:          Intel(R) Xeon(R) CPU @ 2.20GHz
Stepping:            0
CPU MHz:             2200.164
BogoMIPS:            4400.32
Hypervisor vendor:   KVM
Virtualization type: full
L1d cache:           32K
L1i cache:           32K
L2 cache:            256K
L3 cache:            56320K
NUMA node0 CPU(s):   0-5
Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti ssbd ibrs ibpb stibp fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm rdseed adx smap xsaveopt arat md_clear arch_capabilities
student-01-2ea8401e353c@bkcustom:~$

