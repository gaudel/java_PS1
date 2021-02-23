set -o xtrace

echo "--- compile ---"
sources=`find src -name "*.java"`
javac -classpath .:/run_dir/junit-4.12.jar:target/dependency/* -d bin $sources || exit

echo "--- build jar file ---"
cd bin
jar cvfe ../jeanmichel.jar core.Main .
