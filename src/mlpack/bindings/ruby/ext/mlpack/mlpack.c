#include <ruby.h>

static VALUE hello_world(VALUE klass)
{
  return rb_str_new2("hello world");
}

void Init_stree()
{
  VALUE mMlpack = rb_define_module("Mlpack");
  rb_define_singleton_method(mMlpack, "hello_world", hello_world, 0);
}
