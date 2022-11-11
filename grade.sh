# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

cd student-submission

if [[ ! -e ListExamples.java ]]
then 
    echo "wrong test file submitted"
    exit 1
fi
cd ..

cp TestListExamples.java student-submission

set +e

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples



echo "no"
