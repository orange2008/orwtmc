---
title: Various raid comparison
published: true
---

# raid species
There are several commonly used raids:
JBOD (Just bunch of disks)
RAID 0
RAID 1
RAID 5
RAID 10
All the following assumptions are to read 100MB/s and write to 80MB/s hard disk(128GB).
All the following hard disks are the minimum requirements.
n = Number of hard drives
# RAID 0
RAID 0 spreads data across several disks, increasing read and write speeds.
Fault tolerance: 0
Minimum hard disk requirements: At least 2.
Speed: 200MB/s 160MB/s
Advantages: The fastest data read and write, the biggest advantage to increase the capacity of the hard disk, such as 3 fast 80G hard disk raid0 available total capacity is 240G. The speed is the same.
Disadvantages: No redundancy, one hard disk is damaged, and no data.
Recommendation: Doing raid0 can provide better capacity and performance. It is recommended to use data with low requirements for data security.
# RAID 1
RAID 1 stores the same data on all hard drives.
n = Number of hard drives
Fault tolerance: n-(n-1)
Minimum hard disk requirements: At least 2.
Speed: 100MB/s 80MB/s
Advantages: Mirroring, strong data security, 2 fast hard disks make one raid to run normally, and the other one mirrors backup data to ensure data security. One is broken, the other hard disk also has complete data to ensure operation.
Disadvantages: performance tips are not obvious.
Suggestion: Look at the data security and use it for people who don't have too high performance requirements.
# RAID 5
RAID 5 stores parity data on each hard drive
e.g. Disk 1 data = 1, Disk 2 data = 2, Disk 3 data = parity.
So the parity data is 1+2=3
1 + 2 = 3
So if disk 1 missing.
? + 2 = 3
We can recovery using 3 - 2 = 1
Fault tolerance: n-1
Minimum hard disk requirements: At least 3
Speed: 200MB/s 160MB/s
Advantages: Raid5 takes into account the above advantages. Any N-1 fast hard drive has complete data.
Disadvantages: Only single disk failures are allowed, and one disk failure should be handled as soon as possible. In the case of bad disks, the performance of raid5 IO / CPU has plummeted. At this time, the performance is too bad to add.
Recommendation: Not many disks, both requirements for data security and performance tips, raid5 is a good choice, given the problematic performance, you can consider raid10 for more disks.
# RAID 6
Advantages: raid6 is designed on the basis of raid5 to strengthen data protection. Allows damage to 2 hard drives.
             Available capacity: C = (N-2) × D C = Available capacity N = Number of disks D = Single disk capacity.
            For example, the available capacity of 4 1T hard disks for raid6 is: (4-2) × 1000GB = 2000GB = 2T
Disadvantages: not obvious in terms of performance improvement
Suggestion: High data security requirements and low performance requirements are optional.
# RAID 10
RAID 10 is equivalent to RAID 1 plus RAID 0.
Minimum hard disk requirements: At least 4, and the drive amount must 4 multiples.
Fault tolerance: n/2
Speed: 200MB/s 160MB/s
Advantages: balance security and speed. In the case of four basic disks, raid10 allows two failures of the cabinet disks. As the number of hard disks prompts, the fault tolerance will be increased accordingly. This is not possible with raid5.
Disadvantages: The number of disks is slightly higher, and the disk usage is half.
Recommendation: If the number of hard disks is sufficient, raid10 is recommended.
# JBOD
JBOD just connects the hard drives in series, one is full and the next.
Minimum hard disk requirements: Same as RAID 0
Fault tolerance: 0
Speed: 200MB/s 160MB/s
Taking a span composed of three hard disks as an example, the data storage method is shown in the figure: Span is a logical connection of several physical disks one after the other to provide a large logical disk. The data on the Span is simply stored from the first disk. When the storage space of the first disk is used up, the data is sequentially stored from the subsequent disk. Span access performance is completely equivalent to a single disk access operation. Span also does not provide data security guarantees. It simply provides a method of utilizing disk space. The storage capacity of a span is equal to the total capacity of all disks that make up a span.

# Off topic: raid5 VS raid10
Just looking at the number of disks, the write performance of raid5 is not inferior to raid10.
In the case of four disks, raid10 provides two disks and raid5 provides three disks.
However, the physical fitness of raid5 resulted in additional I0 and CPU usage.

# But raid's most important indicator is reliability:
Raid5 of 4 disks, only single disk failure is allowed,
raid10, allowing 2 g failures on the cabinet disk, reliability is higher than raid5, and raid10 can increase fault tolerance with the rise of the disk, raid will not work, and the additional overhead of IO and CPU is increased, from the perspective of reliability and redundancy The same reliability, raid10 write ability is higher than raid5.

# Special case: bad disk, no hot spare
radi5 CPU and IO performance plummeted. Because the data is incomplete, under certain special software, real-time reconstruction of the data into the memory to ensure business operations, but the performance of raid5 in this life has been rotten.
raid10 is striping + mirroring, bad disk affects read performance, does not affect write performance, and does not require reconfiguration. At this point, raid10 is completely burst raid5.
