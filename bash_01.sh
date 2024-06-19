#!/usr/bin/bash
#You don't need to give the whole path, but it's the best practice. However, as long as $PATH variable exists, it's not a requirement to include the path.
#1. Shell Type (shebang)    //Shell has a lot of types, like zsh, powershell & bash, etc.

: <<'END_COMMENT'   #Makes multi-lined comments
Something something
Another thing another thing
END_COMMENT

#2. Inputs:
    #a. Before running the script on the terminal (running the command AS user/developer) = Positional Parameters
    #b. After running the script on the terminal (Holds the script & awaits input from user)

        #a. Before running the script on the terminal (running the command AS user/developer) = Positional Parameters:
        #Types of variables:
            #a1. Shell Variables
            #a2. Environment Variables
            #a3. Local Variables
                
                #a1. Shell Variables:
                    #$0 --> Script's name
                    #$1 --> 1st argument/parameter
                    #$2 --> 2nd argument/parameter
                    #.  --> .
                    #.  --> .
                    #$n --> nth argument/parameter

                #Example: bash_01.sh Mohamed Hello ---> $0 = "bash_01.sh", $1 = "Mohamed", $2 = "Hello"

                #a2. Environment Variables:
                    #Operations:
                        #a21. Declare variable  --> export
                        #a22. Assign variable   --> $NAME = "Value"
                        #a23. Access variable   --> echo ${VARIABLE}
                        #a24. Delete variable   --> unset VARIABLE
                        #a25. Print all environment variables   -->

                 #a3. Local Variables:
                    #Operations:
                        #a31. Declare variable  --> declare (command) / direct usage
                        #a32. Assign variable   --> NAME = "Value"
                        #a33. Access variable   --> echo ${VARIABLE}
                        #a34. Delete variable   --> unset VARIABLE

        #b. After running the script on the terminal (Holds the script & awaits input from user)
            #Through: 'read' command
            #Example: read $NAME, where $NAME is a variable

#3. Operations:
    #Operations are done on:
    #a. Variables:
        #Using two methods:     a1- Direct assignment with a value (as explained above)
                               #a2- Assignment using another command's result/return (This is called "Command Substitution")
                               #example: NAME = 'hostname' #Hostname is a command
                               #echo ${NAME}

    #b. Direct commands:
        #example: pstree #that's a direct command to run THROUGH the script (Just like typing it on the terminal)

    #c. Arithmetic operations:
        #example: declare -i X = 100
        #         declare -i Y = 200
        #         declare -i RESULT = $(($X + $Y))  #NOTE: $VARIABLE is basically accessing it, we need to access it in order to get its value.
        #         echo {RESULT}

    #d. Checking conditions (if statements):
        #We can check on:
        #d1. Numbers: [>, <, >=, <=, ==, !=, &&, ||, !]
            #example: 
            #if($X > $Y); then
                #some code here when the condition is true
            #else
                #some code here when the condition is false
            #fi #Opposite of "if", meaning the end of the statement
            

        #d2. Strings:
            #d21. Equal strings ('='): Checks if string1 is equal to string2    --> NOTE: One equal, not two
            #example: if[[$string1 = $string2]]; then
                #some code
            #fi

            #d22. Not equal strings ('!='): Checks if string1 is NOT equal to string2
            #example: if[[$string1 != $string2]]; then
                #some code
            #fi

            #d23. Empty string ('-n'): Checks if a string is empty (If it's equal to NULL)
            #example: if[[-n $string1]]; then
                #some code
            #fi

            #d24. Not empty string (-n): Checks if a string is NOT empty (If it's NOT equal to NULL)
            #example: if[[-z $string1]]; then
                #some code
            #fi

        #d3. Files/Directories:
            #d31. File exists ('-f'): Checks if file (given the path) exists
            #example: if[[-f $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d32. File exists & is not empty ('-s'): Checks if file (given the path) exists & is not empty  (NOTE: Any of the 2 condiitons can fail, returning false)
            #example: if[[-s $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d33. Checks ownership ('-O'): Checks if the user running the script is the owner of the file as well
            #example: if[[-O $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d34. Checks group ownership ('-G'): Checks if the user running the script is part of the file owner group & has access to it (I THINK)
            #example: if[[-G $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d35. Directory exists ('-d'): Checks if the directory (given the path) exists
            #example: if[[-d $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d36. Directory does not exist ('! -d'): Checks if the directory (given the path) does NOT exist
            #example: if[[! -d $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d37. Directory Ownership ('-O'): Checks if the user running the script is the owner of the directory as well
            #example: if[[-O $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi

            #d38. Directory Group Ownership ('-G'): Checks if the user running the script is part of the directory's owner group & has access to it (I THINK)
            #example: if[[-G $1]]; then     #In this line, I'm assuming I'll have the path using the first positional parameter '$1'
                #some code
            #fi