# Create your grading script here

# This might be a time where you need to turn off set -e. Why?
# Run the tests and report the grade based on the JUnit output.
# Again output redirection will be useful, and also tools like grep could be helpful here

# https://github.com/ucsd-cse15l-f22/list-methods-lab3
# https://github.com/ucsd-cse15l-f22/list-methods-corrected
# https://github.com/ucsd-cse15l-f22/list-methods-compile-error
# https://github.com/ucsd-cse15l-f22/list-methods-signature
# https://github.com/ucsd-cse15l-f22/list-methods-filename
# https://github.com/ucsd-cse15l-f22/list-methods-nested
# https://github.com/ucsd-cse15l-f22/list-examples-subtle

clear
# set -e

# rm -rf student-submission
# git clone $1 student-submission

if [ ! -e student-submission/ListExamples.java ]
then
echo "\nFILE MISSING! (╯°□°）╯︵ ┻━┻ FIGURE OUT WHY!\n"
exit
fi

cp TestListExamples.java student-submission
cd student-submission
LIB=".:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar"
javac -cp $LIB *.java 
java -cp $LIB org.junit.runner.JUnitCore TestListExamples > result.txt

# "java.lang.IncompatibleClassChangeError: Class ListExamples does not implement the requested interface StringChecker"
grep results.txt "does not implement the requested interface StringChecker"

# if []
# then
# echo "Class ListExamples does not implement the interface StringChecker."
# exit
# fi
