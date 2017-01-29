# ======================= Explaining this file ======================= #

# All files can be compiled from this makefile. To do so, cd into the
# /rawos directory and type 'make'. Make will find this Makefile and
# execute all the commands needed to build the files.


# It's fine to run Make multiple times without cleaning the directory.
# Make uses timestamps to decide whether a file has changed and whether
# it needs to be rebuilt or not. However, if you wish to clean it, type:

# 	 make clean


# If you don't understand what a makefile is or it's purpose, you should
# read the docs. You can find the "GNU Make Manual" at:

# 	https://www.gnu.org/software/make/manual/make.html



# ===================== Beginning of the makefile ==================== #

# When 'make' is called without arguments, this rule will be executed.
all: boot_sector.bin


# Remove all generated files. The '@' sign supresses command output. 
clean:
	@rm -f boot_sector.bin




# The 'boot_sector' target requires the 'boot_sector.asm' file. Make
# will only rebuild this target if 'boot_sector.asm' changes.
boot_sector.bin: boot_sector.asm
	@nasm boot_sector.asm -f bin -o boot_sector.bin


# Runs the 'boot_sector.bin' generated file with qemu.
run: boot_sector.bin
	qemu-system-x86_64 boot_sector.bin

# View 'boot_sector.bin' generated file on the hex editor.
view: boot_sector.bin
	@lfhex boot_sector.bin

### This feature doesn't seem to be helpful ############################
# For every file inside src_explained/, generate a comment-free file.
#update: src_explained/*.asm

#	@# The $$ sign tells Make that FILE is not a Make variable.
#	@for FILE in $^; do \
#		cat $$FILE | grep -v "^;;" | uniq > `basename $$FILE`; \
#	done
