#include "JNILib_Library.h"
#include <iostream>

void Java_JNILib_Library_sayHello(JNIEnv *env, jobject object){
  std::cout<<"Hello Gradle!";
}
