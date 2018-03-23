# pixhawk
## Step 1: Development Toolchain
1. On the command prompt enter:

        sudo usermod -a -G dialout $USER
2. Logout and login again

3. Download [ubuntu_sim_nuttx.sh](https://github.com/Zenkin/pixhawk/blob/master/ubuntu_sim_nuttx.sh)

4. Run the script in a bash shell:

        source ubuntu_sim_nuttx.sh
    Wait a few minutes ~ 5-10 min, after restart your computer to complete installation of PX4 development toolchain
