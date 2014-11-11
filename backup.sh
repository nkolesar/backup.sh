###############################################################################
# File:    backup.sh                                                          #
# Author:  Nick Kolesar mysss29@yahoo.com                                     #
# Date:    Tue Nov 11 08:12:03 EST 2014                                       #
# Updated: Tue Nov 11 09:04:35 EST 2014                                       #
#                                                                             #
# IN:      The current directory contains two directories, named 'cur' and    #
#          'bak'.                                                             #
# OUT:     The 'bak' directory contains a new folder, which is a copy of      #
#          'cur' named according to the current date and time in the format,  #
#          'YYYY-MM-DD_HH:MM', where 'HH:MM' is the time in 24h format.       #
#                                                                             #
# Notes:   Understanding the Script:                                          #
#                                                                             #
#          "date +'%F_%T'" simply executes the bash 'date' command, telling   #
#          it to print the date in ISO YYYY-MM-DD format (specified by '%F'), #
#          followed by an underscore and the time in 24 hour/military time    #
#          format (specified by '%T'). This output string is then inserted    #
#          into the destination operand of the cp command because the date    #
#          command was enclosed in '$( )' there.                              #
#                                                                             #
#          For more information on the date command and making the name of    #
#          the destination folder more to your liking, try typing:            #
#             'man date'    (which navigates a lot like 'less'),              #
#             'info date'   (which navigates more like Emacs), or even just   #
#             'date --help'                                                   #
#          in your terminal.                                                  #
#                                                                             #
#          Finally, obviously the 'cur' and 'bak' directories don't have to   #
#          be named exactly that, either.                                     #
###############################################################################

cp -r ./cur ./bak/$(date +'%F_%T')
