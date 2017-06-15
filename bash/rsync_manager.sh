#!/bin/bash

# Copyright 2017 J. Patrick Farrell

# rsync Manager

# Good resource on rsync: http://www.jveweb.net/en/archives/2010/11/synchronizing-folders-with-rsync.html
#
# -a also makes the copy recursive and preserve the modification times, but additionally
#     it copies the symlinks that it encounters as symlinks, preserve the permissions, preserve
#     the owner and group information, and preserve device and special files.
#     This is useful if you are copying the entire home folder of a user, or if you are copying system folders somewhere else.
#
# --exclude 'path/to/exclude' allows us to exclude a directory or path
#
# -r means recursive, this is, it will copy the contents of the source folder, as well as the contents of every folder inside it.
#
# -c will perform a checksum in the files to be transferred. This will skip any file where the checksum coincides.
#
# -d Transfer a directory without recursing, this is, only the files that are in the folder are transferred.
#
# -L Copy the file that a symlink is pointing to whenever it finds a symlink.
#
# --progress Shows the progress of the files that are being transferred.
#
# -t makes rsync preserve the modification times of the files that it copies from the source folder.
#
# -u skip files that are newer on the receiver (destination)
# 
# -z will compress files during transfer.  If transferring lots of files, this could be slower.

# Example:
# To copy all files but exclude text file from tmp1 folder to tmp2 folder:
# Note: If you don't include the trailing slashes above, rsync may actually create folders for you.
#
#  $ rsync -rtv --exclude '*.txt' tmp1/ tmp2/
#

