gradle build -x test
if [ ! -d JNILib_cpp/build ]; then
  mkdir JNILib_cpp/build;
fi
cd JNILib_cpp/build
cmake ..
cmake --build . --target install
