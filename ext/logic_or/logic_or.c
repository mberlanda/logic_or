#include <ruby.h>

static VALUE
rb_logic_or(VALUE self, VALUE other)
{
    return (self == Qnil ? other : self);
}

void
Init_logic_or()
{
    VALUE rb_mLogicOr = rb_define_module("LogicOr");
    rb_define_method(rb_mLogicOr, "logic_or", rb_logic_or, 1);
}