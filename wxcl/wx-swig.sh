#!/bin/sh
if [ -z $WXCL ]; then
    WXCL=`dirname $0`
fi

if [ -z $WXDIR -a -z $WXC ]; then
    echo Please run this like WXDIR=/path/to/your/wxwidgets WXC=/path/to/your/wxc ./wx-swig.sh
    exit 1
fi

if [ -z $WXCLDIR ]; then
    WXCLDIR="$WXCL"
fi


WXVERSION="2.6.2"
if test $DEBUG 
then
     DEBUGPOSTFIX="d"
else
     DEBUGPOSTFIX=""
fi

WXSRC="$WXDIR/src/msw"
WXINC="$WXDIR/include"
WXLIBDIR="$WXDIR/lib/vc_lib"
INCTEMP="$WXDIR/lib/vc_lib/msw$DEBUGPOSTFIX"

WXCLSWIG="$WXCL/SWIG"
WXCLSWIGCLASSES="$WXCL/SWIG/classes"
WXCEWXW="$WXCL/wxc/src/ewxw"

SWIGLANG="cffi"

wx_flags=`echo "-I$WXC " "-I$WXCEWXW " "-I$WXDIR " "-I$WXINC " "-D__WXMSW__ " "-I$INCTEMP "`  #"-c++ "

swig_cmd="swig"

cffi_dir="$WXCL/src/cffi"

cffi_classes_dir="$cffi_dir/classes"

`mkdir $cffi_classes_dir`

files=`ls -B $WXCLSWIGCLASSES`

for f in $files   #'wxButton.i' 
  do
  
  mod_name=`echo $f | awk -F. '{print $1}'`
  echo "swig -$SWIGLANG -noswig-lisp $wx_flags -o \"$cffi_classes_dir/$mod_name.lisp\" $WXCLSWIGCLASSES/$f" 
  `swig -$SWIGLANG -noswig-lisp $wx_flags -o "$cffi_classes_dir/$mod_name.lisp" $WXCLSWIGCLASSES/$f`  
done

echo "swig -$SWIGLANG $wx_flags -o \"$cffi_dir/wx_main.lisp\" $WXCLSWIG/wx_main.i" 
`swig -$SWIGLANG $wx_flags -o "$cffi_dir/wxmain.lisp" $WXCLSWIG/wx_main.i`

echo "swig -$SWIGLANG -noswig-lisp $wx_flags -o \"$cffi_dir/wx_wrapper.lisp\" $WXCLSWIG/wx_wrapper.i" 
`swig -$SWIGLANG $wx_flags -o "$cffi_dir/wxwrapper.lisp" $WXCLSWIG/wx_wrapper.i` 
