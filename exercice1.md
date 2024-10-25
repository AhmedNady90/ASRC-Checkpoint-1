# Partitions du disque

## Objective
* La VM a 2 disques dur. Tu dois préparer le second disque dur de cette manière
1 partition de 6 Go de type ext4 nommée "DATA"
1 partition avec le reste du disque de type swap nommée "SWAP"
* La partition DATA est montée automatiquement au démarrage du système dans un dossier placé dans /mnt. L'UUID du disque est utilisé.

## Steps

### Identify the Disk
To identify your hard disk type 
lsblk

### Start fdisk
 sudo fdisk /dev/sdb
 
### Create the First Partition (DATA)

* Type n to create a new partition
* Choose p for a primary partition
* Select the partition number (1)
* Type the size of the partition
* Type t to change the partition type et 83 for ext4
* write the changes

### Create the SWAP
* sudo fdisk /dev/sdb
* Type n to create a new partition
* Choose p for a primary partition
* Select the partition number (2)
* Type t, choose partition 2 et 82 for the swap type
* Type w to write the changes.

### Format the Partitions and activate the second partition as swap

* sudo mkfs.ext4 /dev/sdb1
* sudo mkswap /dev/sdb2
* sudo swapon /dev/sdb2

### Check the UUID of the DATA Partition and Create the Mount Point

* sudo blkid /dev/sdb1

* sudo nano /etc/fstab
* Add UUID line to automatically mount the DATA partition:
 UUID=    /mnt/DATA  ext4  defaults  0  2

### Verify the Configuration and check the Mount

df -h

#### Voici des captures d'écran montrant les étapes
![Alt text](https://github.com/AhmedNady90/photos/blob/main/check1.PNG)
![Alt text](https://github.com/AhmedNady90/photos/blob/main/check2.PNG)
![Alt text](https://github.com/AhmedNady90/photos/blob/main/check3.PNG)
![Alt text](https://github.com/AhmedNady90/photos/blob/main/check4.PNG)
