??9
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??7
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:F*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:F*
dtype0
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:FK*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:K*
dtype0
{
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2* 
shared_namedense_50/kernel
t
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes
:	?2*
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
:2*
dtype0
z
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

:K2*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:2*
dtype0
z
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:22*
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
:2*
dtype0
z
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_53/kernel
s
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes

:2*
dtype0
r
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_53/bias
k
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
conv_lst_m2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameconv_lst_m2d_30/kernel
?
*conv_lst_m2d_30/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_30/kernel*'
_output_shapes
:?*
dtype0
?
 conv_lst_m2d_30/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*1
shared_name" conv_lst_m2d_30/recurrent_kernel
?
4conv_lst_m2d_30/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_30/recurrent_kernel*'
_output_shapes
:F?*
dtype0
?
conv_lst_m2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_30/bias
z
(conv_lst_m2d_30/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_30/bias*
_output_shapes	
:?*
dtype0
?
conv_lst_m2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*'
shared_nameconv_lst_m2d_31/kernel
?
*conv_lst_m2d_31/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_31/kernel*'
_output_shapes
:F?*
dtype0
?
 conv_lst_m2d_31/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*1
shared_name" conv_lst_m2d_31/recurrent_kernel
?
4conv_lst_m2d_31/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_31/recurrent_kernel*'
_output_shapes
:K?*
dtype0
?
conv_lst_m2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_31/bias
z
(conv_lst_m2d_31/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_31/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_10/kernel/m
?
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
:F*
dtype0
?
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_11/kernel/m
?
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:K*
dtype0
?
Adam/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_50/kernel/m
?
*Adam/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/m*
_output_shapes
:	?2*
dtype0
?
Adam/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_50/bias/m
y
(Adam/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_51/kernel/m
?
*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m*
_output_shapes

:K2*
dtype0
?
Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_51/bias/m
y
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_52/kernel/m
?
*Adam/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/m*
_output_shapes

:22*
dtype0
?
Adam/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_52/bias/m
y
(Adam/dense_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_53/kernel/m
?
*Adam/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/m
y
(Adam/dense_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_30/kernel/m
?
1Adam/conv_lst_m2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_30/kernel/m*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_30/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_30/recurrent_kernel/m
?
;Adam/conv_lst_m2d_30/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_30/recurrent_kernel/m*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_30/bias/m
?
/Adam/conv_lst_m2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_30/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_31/kernel/m
?
1Adam/conv_lst_m2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_31/kernel/m*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_31/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_31/recurrent_kernel/m
?
;Adam/conv_lst_m2d_31/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_31/recurrent_kernel/m*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_31/bias/m
?
/Adam/conv_lst_m2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_31/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_10/kernel/v
?
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
:F*
dtype0
?
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_11/kernel/v
?
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:K*
dtype0
?
Adam/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_50/kernel/v
?
*Adam/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/v*
_output_shapes
:	?2*
dtype0
?
Adam/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_50/bias/v
y
(Adam/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_51/kernel/v
?
*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v*
_output_shapes

:K2*
dtype0
?
Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_51/bias/v
y
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_52/kernel/v
?
*Adam/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/v*
_output_shapes

:22*
dtype0
?
Adam/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_52/bias/v
y
(Adam/dense_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_53/kernel/v
?
*Adam/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/v
y
(Adam/dense_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_30/kernel/v
?
1Adam/conv_lst_m2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_30/kernel/v*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_30/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_30/recurrent_kernel/v
?
;Adam/conv_lst_m2d_30/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_30/recurrent_kernel/v*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_30/bias/v
?
/Adam/conv_lst_m2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_30/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_31/kernel/v
?
1Adam/conv_lst_m2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_31/kernel/v*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_31/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_31/recurrent_kernel/v
?
;Adam/conv_lst_m2d_31/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_31/recurrent_kernel/v*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_31/bias/v
?
/Adam/conv_lst_m2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_31/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?f
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?e
value?eB?e B?e
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
 
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
l
 cell
!
state_spec
"trainable_variables
#regularization_losses
$	variables
%	keras_api
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
R
,trainable_variables
-regularization_losses
.	variables
/	keras_api
R
0trainable_variables
1regularization_losses
2	variables
3	keras_api
h

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
h

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
R
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
h

Dkernel
Ebias
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
h

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?&m?'m?4m?5m?:m?;m?Dm?Em?Jm?Km?Um?Vm?Wm?Xm?Ym?Zm?v?v?&v?'v?4v?5v?:v?;v?Dv?Ev?Jv?Kv?Uv?Vv?Wv?Xv?Yv?Zv?
?
U0
V1
W2
3
4
X5
Y6
Z7
&8
'9
410
511
:12
;13
D14
E15
J16
K17
 
?
U0
V1
W2
3
4
X5
Y6
Z7
&8
'9
410
511
:12
;13
D14
E15
J16
K17
?
[layer_metrics
\metrics
]non_trainable_variables
trainable_variables

^layers
regularization_losses
_layer_regularization_losses
	variables
 
~

Ukernel
Vrecurrent_kernel
Wbias
`trainable_variables
aregularization_losses
b	variables
c	keras_api
 

U0
V1
W2
 

U0
V1
W2
?
dlayer_metrics
emetrics
fnon_trainable_variables
trainable_variables

glayers
regularization_losses
hlayer_regularization_losses

istates
	variables
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
jlayer_metrics
kmetrics
lnon_trainable_variables
trainable_variables

mlayers
regularization_losses
nlayer_regularization_losses
	variables
~

Xkernel
Yrecurrent_kernel
Zbias
otrainable_variables
pregularization_losses
q	variables
r	keras_api
 

X0
Y1
Z2
 

X0
Y1
Z2
?
slayer_metrics
tmetrics
unon_trainable_variables
"trainable_variables

vlayers
#regularization_losses
wlayer_regularization_losses

xstates
$	variables
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
ylayer_metrics
zmetrics
{non_trainable_variables
(trainable_variables

|layers
)regularization_losses
}layer_regularization_losses
*	variables
 
 
 
?
~layer_metrics
metrics
?non_trainable_variables
,trainable_variables
?layers
-regularization_losses
 ?layer_regularization_losses
.	variables
 
 
 
?
?layer_metrics
?metrics
?non_trainable_variables
0trainable_variables
?layers
1regularization_losses
 ?layer_regularization_losses
2	variables
[Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
?
?layer_metrics
?metrics
?non_trainable_variables
6trainable_variables
?layers
7regularization_losses
 ?layer_regularization_losses
8	variables
[Y
VARIABLE_VALUEdense_51/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
?
?layer_metrics
?metrics
?non_trainable_variables
<trainable_variables
?layers
=regularization_losses
 ?layer_regularization_losses
>	variables
 
 
 
?
?layer_metrics
?metrics
?non_trainable_variables
@trainable_variables
?layers
Aregularization_losses
 ?layer_regularization_losses
B	variables
[Y
VARIABLE_VALUEdense_52/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1
 

D0
E1
?
?layer_metrics
?metrics
?non_trainable_variables
Ftrainable_variables
?layers
Gregularization_losses
 ?layer_regularization_losses
H	variables
[Y
VARIABLE_VALUEdense_53/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_53/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
?
?layer_metrics
?metrics
?non_trainable_variables
Ltrainable_variables
?layers
Mregularization_losses
 ?layer_regularization_losses
N	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEconv_lst_m2d_30/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_30/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_30/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEconv_lst_m2d_31/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_31/recurrent_kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_31/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 

U0
V1
W2
 

U0
V1
W2
?
?layer_metrics
?metrics
?non_trainable_variables
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
b	variables
 
 
 

0
 
 
 
 
 
 
 

X0
Y1
Z2
 

X0
Y1
Z2
?
?layer_metrics
?metrics
?non_trainable_variables
otrainable_variables
?layers
pregularization_losses
 ?layer_regularization_losses
q	variables
 
 
 

 0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_50/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_53/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_30/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_30/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_30/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_31/kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_31/recurrent_kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_31/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_50/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_53/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_30/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_30/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_30/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_31/kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_31/recurrent_kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_31/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_10_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
%serving_default_conv_lst_m2d_30_inputPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_10_input%serving_default_conv_lst_m2d_30_inputconv2d_10/kernelconv2d_10/biasconv_lst_m2d_30/kernel conv_lst_m2d_30/recurrent_kernelconv_lst_m2d_30/biasconv2d_11/kernelconv2d_11/biasconv_lst_m2d_31/kernel conv_lst_m2d_31/recurrent_kernelconv_lst_m2d_31/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2580764
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*conv_lst_m2d_30/kernel/Read/ReadVariableOp4conv_lst_m2d_30/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_30/bias/Read/ReadVariableOp*conv_lst_m2d_31/kernel/Read/ReadVariableOp4conv_lst_m2d_31/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_31/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp*Adam/dense_50/kernel/m/Read/ReadVariableOp(Adam/dense_50/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp*Adam/dense_52/kernel/m/Read/ReadVariableOp(Adam/dense_52/bias/m/Read/ReadVariableOp*Adam/dense_53/kernel/m/Read/ReadVariableOp(Adam/dense_53/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_30/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_30/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_30/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_31/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_31/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_31/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp*Adam/dense_50/kernel/v/Read/ReadVariableOp(Adam/dense_50/bias/v/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOp*Adam/dense_52/kernel/v/Read/ReadVariableOp(Adam/dense_52/bias/v/Read/ReadVariableOp*Adam/dense_53/kernel/v/Read/ReadVariableOp(Adam/dense_53/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_30/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_30/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_30/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_31/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_31/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_31/bias/v/Read/ReadVariableOpConst*L
TinE
C2A	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2584405
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv_lst_m2d_30/kernel conv_lst_m2d_30/recurrent_kernelconv_lst_m2d_30/biasconv_lst_m2d_31/kernel conv_lst_m2d_31/recurrent_kernelconv_lst_m2d_31/biastotalcounttotal_1count_1Adam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_50/kernel/mAdam/dense_50/bias/mAdam/dense_51/kernel/mAdam/dense_51/bias/mAdam/dense_52/kernel/mAdam/dense_52/bias/mAdam/dense_53/kernel/mAdam/dense_53/bias/mAdam/conv_lst_m2d_30/kernel/m'Adam/conv_lst_m2d_30/recurrent_kernel/mAdam/conv_lst_m2d_30/bias/mAdam/conv_lst_m2d_31/kernel/m'Adam/conv_lst_m2d_31/recurrent_kernel/mAdam/conv_lst_m2d_31/bias/mAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_50/kernel/vAdam/dense_50/bias/vAdam/dense_51/kernel/vAdam/dense_51/bias/vAdam/dense_52/kernel/vAdam/dense_52/bias/vAdam/dense_53/kernel/vAdam/dense_53/bias/vAdam/conv_lst_m2d_30/kernel/v'Adam/conv_lst_m2d_30/recurrent_kernel/vAdam/conv_lst_m2d_30/bias/vAdam/conv_lst_m2d_31/kernel/v'Adam/conv_lst_m2d_31/recurrent_kernel/vAdam/conv_lst_m2d_31/bias/v*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2584604??5
?e
?
while_body_2580287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
"conv_lst_m2d_30_while_cond_2581433<
8conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counterB
>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations%
!conv_lst_m2d_30_while_placeholder'
#conv_lst_m2d_30_while_placeholder_1'
#conv_lst_m2d_30_while_placeholder_2'
#conv_lst_m2d_30_while_placeholder_3<
8conv_lst_m2d_30_while_less_conv_lst_m2d_30_strided_sliceU
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2581433___redundant_placeholder0U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2581433___redundant_placeholder1U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2581433___redundant_placeholder2U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2581433___redundant_placeholder3"
conv_lst_m2d_30_while_identity
?
conv_lst_m2d_30/while/LessLess!conv_lst_m2d_30_while_placeholder8conv_lst_m2d_30_while_less_conv_lst_m2d_30_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/Less?
conv_lst_m2d_30/while/IdentityIdentityconv_lst_m2d_30/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_30/while/Identity"I
conv_lst_m2d_30_while_identity'conv_lst_m2d_30/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2579483

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2579357*
condR
while_cond_2579356*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_50_layer_call_fn_2583743

inputs
unknown:	?2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_25797632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
+model_15_conv_lst_m2d_31_while_body_2577777N
Jmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_loop_counterT
Pmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_maximum_iterations.
*model_15_conv_lst_m2d_31_while_placeholder0
,model_15_conv_lst_m2d_31_while_placeholder_10
,model_15_conv_lst_m2d_31_while_placeholder_20
,model_15_conv_lst_m2d_31_while_placeholder_3K
Gmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_strided_slice_0?
?model_15_conv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0Y
>model_15_conv_lst_m2d_31_while_split_readvariableop_resource_0:F?[
@model_15_conv_lst_m2d_31_while_split_1_readvariableop_resource_0:K?O
@model_15_conv_lst_m2d_31_while_split_2_readvariableop_resource_0:	?+
'model_15_conv_lst_m2d_31_while_identity-
)model_15_conv_lst_m2d_31_while_identity_1-
)model_15_conv_lst_m2d_31_while_identity_2-
)model_15_conv_lst_m2d_31_while_identity_3-
)model_15_conv_lst_m2d_31_while_identity_4-
)model_15_conv_lst_m2d_31_while_identity_5I
Emodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_strided_slice?
?model_15_conv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensorW
<model_15_conv_lst_m2d_31_while_split_readvariableop_resource:F?Y
>model_15_conv_lst_m2d_31_while_split_1_readvariableop_resource:K?M
>model_15_conv_lst_m2d_31_while_split_2_readvariableop_resource:	???3model_15/conv_lst_m2d_31/while/split/ReadVariableOp?5model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp?5model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp?
Pmodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2R
Pmodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_15_conv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0*model_15_conv_lst_m2d_31_while_placeholderYmodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02D
Bmodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem?
.model_15/conv_lst_m2d_31/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_15/conv_lst_m2d_31/while/split/split_dim?
3model_15/conv_lst_m2d_31/while/split/ReadVariableOpReadVariableOp>model_15_conv_lst_m2d_31_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype025
3model_15/conv_lst_m2d_31/while/split/ReadVariableOp?
$model_15/conv_lst_m2d_31/while/splitSplit7model_15/conv_lst_m2d_31/while/split/split_dim:output:0;model_15/conv_lst_m2d_31/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2&
$model_15/conv_lst_m2d_31/while/split?
0model_15/conv_lst_m2d_31/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_15/conv_lst_m2d_31/while/split_1/split_dim?
5model_15/conv_lst_m2d_31/while/split_1/ReadVariableOpReadVariableOp@model_15_conv_lst_m2d_31_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype027
5model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp?
&model_15/conv_lst_m2d_31/while/split_1Split9model_15/conv_lst_m2d_31/while/split_1/split_dim:output:0=model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2(
&model_15/conv_lst_m2d_31/while/split_1?
0model_15/conv_lst_m2d_31/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/conv_lst_m2d_31/while/split_2/split_dim?
5model_15/conv_lst_m2d_31/while/split_2/ReadVariableOpReadVariableOp@model_15_conv_lst_m2d_31_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp?
&model_15/conv_lst_m2d_31/while/split_2Split9model_15/conv_lst_m2d_31/while/split_2/split_dim:output:0=model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2(
&model_15/conv_lst_m2d_31/while/split_2?
*model_15/conv_lst_m2d_31/while/convolutionConv2DImodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_31/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2,
*model_15/conv_lst_m2d_31/while/convolution?
&model_15/conv_lst_m2d_31/while/BiasAddBiasAdd3model_15/conv_lst_m2d_31/while/convolution:output:0/model_15/conv_lst_m2d_31/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2(
&model_15/conv_lst_m2d_31/while/BiasAdd?
,model_15/conv_lst_m2d_31/while/convolution_1Conv2DImodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_31/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_1?
(model_15/conv_lst_m2d_31/while/BiasAdd_1BiasAdd5model_15/conv_lst_m2d_31/while/convolution_1:output:0/model_15/conv_lst_m2d_31/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2*
(model_15/conv_lst_m2d_31/while/BiasAdd_1?
,model_15/conv_lst_m2d_31/while/convolution_2Conv2DImodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_31/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_2?
(model_15/conv_lst_m2d_31/while/BiasAdd_2BiasAdd5model_15/conv_lst_m2d_31/while/convolution_2:output:0/model_15/conv_lst_m2d_31/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2*
(model_15/conv_lst_m2d_31/while/BiasAdd_2?
,model_15/conv_lst_m2d_31/while/convolution_3Conv2DImodel_15/conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_31/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_3?
(model_15/conv_lst_m2d_31/while/BiasAdd_3BiasAdd5model_15/conv_lst_m2d_31/while/convolution_3:output:0/model_15/conv_lst_m2d_31/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2*
(model_15/conv_lst_m2d_31/while/BiasAdd_3?
,model_15/conv_lst_m2d_31/while/convolution_4Conv2D,model_15_conv_lst_m2d_31_while_placeholder_2/model_15/conv_lst_m2d_31/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_4?
,model_15/conv_lst_m2d_31/while/convolution_5Conv2D,model_15_conv_lst_m2d_31_while_placeholder_2/model_15/conv_lst_m2d_31/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_5?
,model_15/conv_lst_m2d_31/while/convolution_6Conv2D,model_15_conv_lst_m2d_31_while_placeholder_2/model_15/conv_lst_m2d_31/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_6?
,model_15/conv_lst_m2d_31/while/convolution_7Conv2D,model_15_conv_lst_m2d_31_while_placeholder_2/model_15/conv_lst_m2d_31/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_31/while/convolution_7?
"model_15/conv_lst_m2d_31/while/addAddV2/model_15/conv_lst_m2d_31/while/BiasAdd:output:05model_15/conv_lst_m2d_31/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2$
"model_15/conv_lst_m2d_31/while/add?
$model_15/conv_lst_m2d_31/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_15/conv_lst_m2d_31/while/Const?
&model_15/conv_lst_m2d_31/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_31/while/Const_1?
"model_15/conv_lst_m2d_31/while/MulMul&model_15/conv_lst_m2d_31/while/add:z:0-model_15/conv_lst_m2d_31/while/Const:output:0*
T0*/
_output_shapes
:?????????K2$
"model_15/conv_lst_m2d_31/while/Mul?
$model_15/conv_lst_m2d_31/while/Add_1AddV2&model_15/conv_lst_m2d_31/while/Mul:z:0/model_15/conv_lst_m2d_31/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/Add_1?
6model_15/conv_lst_m2d_31/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_15/conv_lst_m2d_31/while/clip_by_value/Minimum/y?
4model_15/conv_lst_m2d_31/while/clip_by_value/MinimumMinimum(model_15/conv_lst_m2d_31/while/Add_1:z:0?model_15/conv_lst_m2d_31/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K26
4model_15/conv_lst_m2d_31/while/clip_by_value/Minimum?
.model_15/conv_lst_m2d_31/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_15/conv_lst_m2d_31/while/clip_by_value/y?
,model_15/conv_lst_m2d_31/while/clip_by_valueMaximum8model_15/conv_lst_m2d_31/while/clip_by_value/Minimum:z:07model_15/conv_lst_m2d_31/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2.
,model_15/conv_lst_m2d_31/while/clip_by_value?
$model_15/conv_lst_m2d_31/while/add_2AddV21model_15/conv_lst_m2d_31/while/BiasAdd_1:output:05model_15/conv_lst_m2d_31/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/add_2?
&model_15/conv_lst_m2d_31/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_15/conv_lst_m2d_31/while/Const_2?
&model_15/conv_lst_m2d_31/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_31/while/Const_3?
$model_15/conv_lst_m2d_31/while/Mul_1Mul(model_15/conv_lst_m2d_31/while/add_2:z:0/model_15/conv_lst_m2d_31/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/Mul_1?
$model_15/conv_lst_m2d_31/while/Add_3AddV2(model_15/conv_lst_m2d_31/while/Mul_1:z:0/model_15/conv_lst_m2d_31/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/Add_3?
8model_15/conv_lst_m2d_31/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_15/conv_lst_m2d_31/while/clip_by_value_1/Minimum/y?
6model_15/conv_lst_m2d_31/while/clip_by_value_1/MinimumMinimum(model_15/conv_lst_m2d_31/while/Add_3:z:0Amodel_15/conv_lst_m2d_31/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_15/conv_lst_m2d_31/while/clip_by_value_1/Minimum?
0model_15/conv_lst_m2d_31/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_15/conv_lst_m2d_31/while/clip_by_value_1/y?
.model_15/conv_lst_m2d_31/while/clip_by_value_1Maximum:model_15/conv_lst_m2d_31/while/clip_by_value_1/Minimum:z:09model_15/conv_lst_m2d_31/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_15/conv_lst_m2d_31/while/clip_by_value_1?
$model_15/conv_lst_m2d_31/while/mul_2Mul2model_15/conv_lst_m2d_31/while/clip_by_value_1:z:0,model_15_conv_lst_m2d_31_while_placeholder_3*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/mul_2?
$model_15/conv_lst_m2d_31/while/add_4AddV21model_15/conv_lst_m2d_31/while/BiasAdd_2:output:05model_15/conv_lst_m2d_31/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/add_4?
#model_15/conv_lst_m2d_31/while/ReluRelu(model_15/conv_lst_m2d_31/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2%
#model_15/conv_lst_m2d_31/while/Relu?
$model_15/conv_lst_m2d_31/while/mul_3Mul0model_15/conv_lst_m2d_31/while/clip_by_value:z:01model_15/conv_lst_m2d_31/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/mul_3?
$model_15/conv_lst_m2d_31/while/add_5AddV2(model_15/conv_lst_m2d_31/while/mul_2:z:0(model_15/conv_lst_m2d_31/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/add_5?
$model_15/conv_lst_m2d_31/while/add_6AddV21model_15/conv_lst_m2d_31/while/BiasAdd_3:output:05model_15/conv_lst_m2d_31/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/add_6?
&model_15/conv_lst_m2d_31/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_15/conv_lst_m2d_31/while/Const_4?
&model_15/conv_lst_m2d_31/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_31/while/Const_5?
$model_15/conv_lst_m2d_31/while/Mul_4Mul(model_15/conv_lst_m2d_31/while/add_6:z:0/model_15/conv_lst_m2d_31/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/Mul_4?
$model_15/conv_lst_m2d_31/while/Add_7AddV2(model_15/conv_lst_m2d_31/while/Mul_4:z:0/model_15/conv_lst_m2d_31/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/Add_7?
8model_15/conv_lst_m2d_31/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_15/conv_lst_m2d_31/while/clip_by_value_2/Minimum/y?
6model_15/conv_lst_m2d_31/while/clip_by_value_2/MinimumMinimum(model_15/conv_lst_m2d_31/while/Add_7:z:0Amodel_15/conv_lst_m2d_31/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_15/conv_lst_m2d_31/while/clip_by_value_2/Minimum?
0model_15/conv_lst_m2d_31/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_15/conv_lst_m2d_31/while/clip_by_value_2/y?
.model_15/conv_lst_m2d_31/while/clip_by_value_2Maximum:model_15/conv_lst_m2d_31/while/clip_by_value_2/Minimum:z:09model_15/conv_lst_m2d_31/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_15/conv_lst_m2d_31/while/clip_by_value_2?
%model_15/conv_lst_m2d_31/while/Relu_1Relu(model_15/conv_lst_m2d_31/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2'
%model_15/conv_lst_m2d_31/while/Relu_1?
$model_15/conv_lst_m2d_31/while/mul_5Mul2model_15/conv_lst_m2d_31/while/clip_by_value_2:z:03model_15/conv_lst_m2d_31/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_15/conv_lst_m2d_31/while/mul_5?
Cmodel_15/conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_15_conv_lst_m2d_31_while_placeholder_1*model_15_conv_lst_m2d_31_while_placeholder(model_15/conv_lst_m2d_31/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_15/conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem?
&model_15/conv_lst_m2d_31/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_15/conv_lst_m2d_31/while/add_8/y?
$model_15/conv_lst_m2d_31/while/add_8AddV2*model_15_conv_lst_m2d_31_while_placeholder/model_15/conv_lst_m2d_31/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_15/conv_lst_m2d_31/while/add_8?
&model_15/conv_lst_m2d_31/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_15/conv_lst_m2d_31/while/add_9/y?
$model_15/conv_lst_m2d_31/while/add_9AddV2Jmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_loop_counter/model_15/conv_lst_m2d_31/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_15/conv_lst_m2d_31/while/add_9?
'model_15/conv_lst_m2d_31/while/IdentityIdentity(model_15/conv_lst_m2d_31/while/add_9:z:0$^model_15/conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2)
'model_15/conv_lst_m2d_31/while/Identity?
)model_15/conv_lst_m2d_31/while/Identity_1IdentityPmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_maximum_iterations$^model_15/conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_31/while/Identity_1?
)model_15/conv_lst_m2d_31/while/Identity_2Identity(model_15/conv_lst_m2d_31/while/add_8:z:0$^model_15/conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_31/while/Identity_2?
)model_15/conv_lst_m2d_31/while/Identity_3IdentitySmodel_15/conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_15/conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_31/while/Identity_3?
)model_15/conv_lst_m2d_31/while/Identity_4Identity(model_15/conv_lst_m2d_31/while/mul_5:z:0$^model_15/conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_15/conv_lst_m2d_31/while/Identity_4?
)model_15/conv_lst_m2d_31/while/Identity_5Identity(model_15/conv_lst_m2d_31/while/add_5:z:0$^model_15/conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_15/conv_lst_m2d_31/while/Identity_5?
#model_15/conv_lst_m2d_31/while/NoOpNoOp4^model_15/conv_lst_m2d_31/while/split/ReadVariableOp6^model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp6^model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_15/conv_lst_m2d_31/while/NoOp"[
'model_15_conv_lst_m2d_31_while_identity0model_15/conv_lst_m2d_31/while/Identity:output:0"_
)model_15_conv_lst_m2d_31_while_identity_12model_15/conv_lst_m2d_31/while/Identity_1:output:0"_
)model_15_conv_lst_m2d_31_while_identity_22model_15/conv_lst_m2d_31/while/Identity_2:output:0"_
)model_15_conv_lst_m2d_31_while_identity_32model_15/conv_lst_m2d_31/while/Identity_3:output:0"_
)model_15_conv_lst_m2d_31_while_identity_42model_15/conv_lst_m2d_31/while/Identity_4:output:0"_
)model_15_conv_lst_m2d_31_while_identity_52model_15/conv_lst_m2d_31/while/Identity_5:output:0"?
Emodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_strided_sliceGmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_strided_slice_0"?
>model_15_conv_lst_m2d_31_while_split_1_readvariableop_resource@model_15_conv_lst_m2d_31_while_split_1_readvariableop_resource_0"?
>model_15_conv_lst_m2d_31_while_split_2_readvariableop_resource@model_15_conv_lst_m2d_31_while_split_2_readvariableop_resource_0"~
<model_15_conv_lst_m2d_31_while_split_readvariableop_resource>model_15_conv_lst_m2d_31_while_split_readvariableop_resource_0"?
?model_15_conv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor?model_15_conv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2j
3model_15/conv_lst_m2d_31/while/split/ReadVariableOp3model_15/conv_lst_m2d_31/while/split/ReadVariableOp2n
5model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp5model_15/conv_lst_m2d_31/while/split_1/ReadVariableOp2n
5model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp5model_15/conv_lst_m2d_31/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?e
?
while_body_2583566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?p
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583692

inputs8
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2583566*
condR
while_cond_2583565*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?
m
C__inference_add_15_layer_call_and_return_conditional_losses_2579791

inputs
inputs_1
identityW
addAddV2inputsinputs_1*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
E__inference_dense_50_layer_call_and_return_conditional_losses_2579763

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?9
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2578768

inputs"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25786862
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2578700*
condR
while_cond_2578699*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????K2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identityp
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????F
 
_user_specified_nameinputs
?
?
*__inference_model_15_layer_call_fn_2580806
inputs_0
inputs_1!
unknown:F
	unknown_0:F$
	unknown_1:?$
	unknown_2:F?
	unknown_3:	?#
	unknown_4:FK
	unknown_5:K$
	unknown_6:F?$
	unknown_7:K?
	unknown_8:	?
	unknown_9:	?2

unknown_10:2

unknown_11:K2

unknown_12:2

unknown_13:22

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_25798282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?e
?
while_body_2583122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2582393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2582393___redundant_placeholder05
1while_while_cond_2582393___redundant_placeholder15
1while_while_cond_2582393___redundant_placeholder25
1while_while_cond_2582393___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?D
?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584117

inputs
states_0
states_18
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/1
?
?
E__inference_dense_52_layer_call_and_return_conditional_losses_2579804

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?:
?
E__inference_model_15_layer_call_and_return_conditional_losses_2580529

inputs
inputs_1+
conv2d_10_2580481:F
conv2d_10_2580483:F2
conv_lst_m2d_30_2580486:?2
conv_lst_m2d_30_2580488:F?&
conv_lst_m2d_30_2580490:	?+
conv2d_11_2580493:FK
conv2d_11_2580495:K2
conv_lst_m2d_31_2580498:F?2
conv_lst_m2d_31_2580500:K?&
conv_lst_m2d_31_2580502:	?#
dense_50_2580507:	?2
dense_50_2580509:2"
dense_51_2580512:K2
dense_51_2580514:2"
dense_52_2580518:22
dense_52_2580520:2"
dense_53_2580523:2
dense_53_2580525:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?'conv_lst_m2d_30/StatefulPartitionedCall?'conv_lst_m2d_31/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_10_2580481conv2d_10_2580483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_25792582#
!conv2d_10/StatefulPartitionedCall?
'conv_lst_m2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_30_2580486conv_lst_m2d_30_2580488conv_lst_m2d_30_2580490*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25804132)
'conv_lst_m2d_30/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_2580493conv2d_11_2580495*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_25795022#
!conv2d_11/StatefulPartitionedCall?
'conv_lst_m2d_31/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_30/StatefulPartitionedCall:output:0conv_lst_m2d_31_2580498conv_lst_m2d_31_2580500conv_lst_m2d_31_2580502*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25801612)
'conv_lst_m2d_31/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_25797432
flatten_21/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall0conv_lst_m2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_20_layer_call_and_return_conditional_losses_25797512
flatten_20/PartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_50_2580507dense_50_2580509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_25797632"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_51_2580512dense_51_2580514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_25797792"
 dense_51/StatefulPartitionedCall?
add_15/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0)dense_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_add_15_layer_call_and_return_conditional_losses_25797912
add_15/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCalladd_15/PartitionedCall:output:0dense_52_2580518dense_52_2580520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_25798042"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2580523dense_53_2580525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_25798212"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall(^conv_lst_m2d_30/StatefulPartitionedCall(^conv_lst_m2d_31/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2R
'conv_lst_m2d_30/StatefulPartitionedCall'conv_lst_m2d_30/StatefulPartitionedCall2R
'conv_lst_m2d_31/StatefulPartitionedCall'conv_lst_m2d_31/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2578049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2578049___redundant_placeholder05
1while_while_cond_2578049___redundant_placeholder15
1while_while_cond_2578049___redundant_placeholder25
1while_while_cond_2578049___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?	
?
1__inference_conv_lst_m2d_31_layer_call_fn_2582782
inputs_0"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25790062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????F
"
_user_specified_name
inputs/0
?
?
while_cond_2580034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2580034___redundant_placeholder05
1while_while_cond_2580034___redundant_placeholder15
1while_while_cond_2580034___redundant_placeholder25
1while_while_cond_2580034___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?

?
E__inference_dense_50_layer_call_and_return_conditional_losses_2583753

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_2581953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2581953___redundant_placeholder05
1while_while_cond_2581953___redundant_placeholder15
1while_while_cond_2581953___redundant_placeholder25
1while_while_cond_2581953___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
3__inference_conv_lstm_cell_31_layer_call_fn_2584042

inputs
states_0
states_1"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25788742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/1
?7
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2578118

inputs"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25780362
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2578050*
condR
while_cond_2578049*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identityp
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????
 
_user_specified_nameinputs
?e
?
while_body_2580035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_conv2d_10_layer_call_fn_2582749

inputs!
unknown:F
	unknown_0:F
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_25792582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?e
?
while_body_2582174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?e
?
while_body_2582394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?D
?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2583933

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/1
?
?
%__inference_signature_wrapper_2580764
conv2d_10_input
conv_lst_m2d_30_input!
unknown:F
	unknown_0:F$
	unknown_1:?$
	unknown_2:F?
	unknown_3:	?#
	unknown_4:FK
	unknown_5:K$
	unknown_6:F?$
	unknown_7:K?
	unknown_8:	?
	unknown_9:	?2

unknown_10:2

unknown_11:K2

unknown_12:2

unknown_13:22

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_30_inputconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_25779342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input:jf
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input
?
?
while_cond_2583343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2583343___redundant_placeholder05
1while_while_cond_2583343___redundant_placeholder15
1while_while_cond_2583343___redundant_placeholder25
1while_while_cond_2583343___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2578699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2578699___redundant_placeholder05
1while_while_cond_2578699___redundant_placeholder15
1while_while_cond_2578699___redundant_placeholder25
1while_while_cond_2578699___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?$
?
while_body_2578286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_2578310_0:?*
while_2578312_0:F?
while_2578314_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_2578310:?(
while_2578312:F?
while_2578314:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_2578310_0while_2578312_0while_2578314_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25782242
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5z

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp" 
while_2578310while_2578310_0" 
while_2578312while_2578312_0" 
while_2578314while_2578314_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
3__inference_conv_lstm_cell_30_layer_call_fn_2583841

inputs
states_0
states_1"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25780362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/1
?q
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583026
inputs_08
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2582900*
condR
while_cond_2582899*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????K2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????F
"
_user_specified_name
inputs/0
?e
?
while_body_2579357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?:
?
E__inference_model_15_layer_call_and_return_conditional_losses_2580662
conv_lst_m2d_30_input
conv2d_10_input+
conv2d_10_2580614:F
conv2d_10_2580616:F2
conv_lst_m2d_30_2580619:?2
conv_lst_m2d_30_2580621:F?&
conv_lst_m2d_30_2580623:	?+
conv2d_11_2580626:FK
conv2d_11_2580628:K2
conv_lst_m2d_31_2580631:F?2
conv_lst_m2d_31_2580633:K?&
conv_lst_m2d_31_2580635:	?#
dense_50_2580640:	?2
dense_50_2580642:2"
dense_51_2580645:K2
dense_51_2580647:2"
dense_52_2580651:22
dense_52_2580653:2"
dense_53_2580656:2
dense_53_2580658:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?'conv_lst_m2d_30/StatefulPartitionedCall?'conv_lst_m2d_31/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_2580614conv2d_10_2580616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_25792582#
!conv2d_10/StatefulPartitionedCall?
'conv_lst_m2d_30/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_30_inputconv_lst_m2d_30_2580619conv_lst_m2d_30_2580621conv_lst_m2d_30_2580623*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25794832)
'conv_lst_m2d_30/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_2580626conv2d_11_2580628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_25795022#
!conv2d_11/StatefulPartitionedCall?
'conv_lst_m2d_31/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_30/StatefulPartitionedCall:output:0conv_lst_m2d_31_2580631conv_lst_m2d_31_2580633conv_lst_m2d_31_2580635*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25797292)
'conv_lst_m2d_31/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_25797432
flatten_21/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall0conv_lst_m2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_20_layer_call_and_return_conditional_losses_25797512
flatten_20/PartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_50_2580640dense_50_2580642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_25797632"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_51_2580645dense_51_2580647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_25797792"
 dense_51/StatefulPartitionedCall?
add_15/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0)dense_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_add_15_layer_call_and_return_conditional_losses_25797912
add_15/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCalladd_15/PartitionedCall:output:0dense_52_2580651dense_52_2580653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_25798042"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2580656dense_53_2580658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_25798212"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall(^conv_lst_m2d_30/StatefulPartitionedCall(^conv_lst_m2d_31/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2R
'conv_lst_m2d_30/StatefulPartitionedCall'conv_lst_m2d_30/StatefulPartitionedCall2R
'conv_lst_m2d_31/StatefulPartitionedCall'conv_lst_m2d_31/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input
?
?
*__inference_model_15_layer_call_fn_2579867
conv_lst_m2d_30_input
conv2d_10_input!
unknown:F
	unknown_0:F$
	unknown_1:?$
	unknown_2:F?
	unknown_3:	?#
	unknown_4:FK
	unknown_5:K$
	unknown_6:F?$
	unknown_7:K?
	unknown_8:	?
	unknown_9:	?2

unknown_10:2

unknown_11:K2

unknown_12:2

unknown_13:22

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_30_inputconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_25798282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input
?
?
*__inference_dense_51_layer_call_fn_2583762

inputs
unknown:K2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_25797792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????K: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????K
 
_user_specified_nameinputs
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582520

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2582394*
condR
while_cond_2582393*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?$
?
while_body_2578700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_2578724_0:F?*
while_2578726_0:K?
while_2578728_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_2578724:F?(
while_2578726:K?
while_2578728:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_2578724_0while_2578726_0while_2578728_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25786862
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5z

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp" 
while_2578724while_2578724_0" 
while_2578726while_2578726_0" 
while_2578728while_2578728_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2582899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2582899___redundant_placeholder05
1while_while_cond_2582899___redundant_placeholder15
1while_while_cond_2582899___redundant_placeholder25
1while_while_cond_2582899___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?
T
(__inference_add_15_layer_call_fn_2583778
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_add_15_layer_call_and_return_conditional_losses_25797912
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?
?
1__inference_conv_lst_m2d_31_layer_call_fn_2582793

inputs"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25797292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?q
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583248
inputs_08
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2583122*
condR
while_cond_2583121*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????K2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????F
"
_user_specified_name
inputs/0
?$
?
while_body_2578938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_2578962_0:F?*
while_2578964_0:K?
while_2578966_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_2578962:F?(
while_2578964:K?
while_2578966:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_2578962_0while_2578964_0while_2578966_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25788742
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5z

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp" 
while_2578962while_2578962_0" 
while_2578964while_2578964_0" 
while_2578966while_2578966_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?D
?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584192

inputs
states_0
states_18
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/1
?
?
"conv_lst_m2d_31_while_cond_2581174<
8conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counterB
>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations%
!conv_lst_m2d_31_while_placeholder'
#conv_lst_m2d_31_while_placeholder_1'
#conv_lst_m2d_31_while_placeholder_2'
#conv_lst_m2d_31_while_placeholder_3<
8conv_lst_m2d_31_while_less_conv_lst_m2d_31_strided_sliceU
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581174___redundant_placeholder0U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581174___redundant_placeholder1U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581174___redundant_placeholder2U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581174___redundant_placeholder3"
conv_lst_m2d_31_while_identity
?
conv_lst_m2d_31/while/LessLess!conv_lst_m2d_31_while_placeholder8conv_lst_m2d_31_while_less_conv_lst_m2d_31_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/Less?
conv_lst_m2d_31/while/IdentityIdentityconv_lst_m2d_31/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_31/while/Identity"I
conv_lst_m2d_31_while_identity'conv_lst_m2d_31/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?p
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2579729

inputs8
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2579603*
condR
while_cond_2579602*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?	
?
1__inference_conv_lst_m2d_30_layer_call_fn_2581838
inputs_0"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25783542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????
"
_user_specified_name
inputs/0
?D
?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2578686

inputs

states
states_18
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????K
 
_user_specified_namestates:WS
/
_output_shapes
:?????????K
 
_user_specified_namestates
?:
?
E__inference_model_15_layer_call_and_return_conditional_losses_2579828

inputs
inputs_1+
conv2d_10_2579259:F
conv2d_10_2579261:F2
conv_lst_m2d_30_2579484:?2
conv_lst_m2d_30_2579486:F?&
conv_lst_m2d_30_2579488:	?+
conv2d_11_2579503:FK
conv2d_11_2579505:K2
conv_lst_m2d_31_2579730:F?2
conv_lst_m2d_31_2579732:K?&
conv_lst_m2d_31_2579734:	?#
dense_50_2579764:	?2
dense_50_2579766:2"
dense_51_2579780:K2
dense_51_2579782:2"
dense_52_2579805:22
dense_52_2579807:2"
dense_53_2579822:2
dense_53_2579824:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?'conv_lst_m2d_30/StatefulPartitionedCall?'conv_lst_m2d_31/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_10_2579259conv2d_10_2579261*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_25792582#
!conv2d_10/StatefulPartitionedCall?
'conv_lst_m2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_30_2579484conv_lst_m2d_30_2579486conv_lst_m2d_30_2579488*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25794832)
'conv_lst_m2d_30/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_2579503conv2d_11_2579505*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_25795022#
!conv2d_11/StatefulPartitionedCall?
'conv_lst_m2d_31/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_30/StatefulPartitionedCall:output:0conv_lst_m2d_31_2579730conv_lst_m2d_31_2579732conv_lst_m2d_31_2579734*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25797292)
'conv_lst_m2d_31/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_25797432
flatten_21/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall0conv_lst_m2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_20_layer_call_and_return_conditional_losses_25797512
flatten_20/PartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_50_2579764dense_50_2579766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_25797632"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_51_2579780dense_51_2579782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_25797792"
 dense_51/StatefulPartitionedCall?
add_15/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0)dense_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_add_15_layer_call_and_return_conditional_losses_25797912
add_15/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCalladd_15/PartitionedCall:output:0dense_52_2579805dense_52_2579807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_25798042"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2579822dense_53_2579824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_25798212"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall(^conv_lst_m2d_30/StatefulPartitionedCall(^conv_lst_m2d_31/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2R
'conv_lst_m2d_30/StatefulPartitionedCall'conv_lst_m2d_30/StatefulPartitionedCall2R
'conv_lst_m2d_31/StatefulPartitionedCall'conv_lst_m2d_31/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_conv_lst_m2d_30_layer_call_fn_2581849

inputs"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25794832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?	
?
1__inference_conv_lst_m2d_30_layer_call_fn_2581827
inputs_0"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25781182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????
"
_user_specified_name
inputs/0
?
o
C__inference_add_15_layer_call_and_return_conditional_losses_2583784
inputs_0
inputs_1
identityY
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?
?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_2579258

inputs8
conv2d_readvariableop_resource:F-
biasadd_readvariableop_resource:F
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?e
?
while_body_2582614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_dense_53_layer_call_and_return_conditional_losses_2579821

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?7
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2578354

inputs"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25782242
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2578286*
condR
while_cond_2578285*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identityp
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_20_layer_call_and_return_conditional_losses_2579751

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????K:[ W
3
_output_shapes!
:?????????K
 
_user_specified_nameinputs
?
?
while_cond_2583121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2583121___redundant_placeholder05
1while_while_cond_2583121___redundant_placeholder15
1while_while_cond_2583121___redundant_placeholder25
1while_while_cond_2583121___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?:
?
E__inference_model_15_layer_call_and_return_conditional_losses_2580714
conv_lst_m2d_30_input
conv2d_10_input+
conv2d_10_2580666:F
conv2d_10_2580668:F2
conv_lst_m2d_30_2580671:?2
conv_lst_m2d_30_2580673:F?&
conv_lst_m2d_30_2580675:	?+
conv2d_11_2580678:FK
conv2d_11_2580680:K2
conv_lst_m2d_31_2580683:F?2
conv_lst_m2d_31_2580685:K?&
conv_lst_m2d_31_2580687:	?#
dense_50_2580692:	?2
dense_50_2580694:2"
dense_51_2580697:K2
dense_51_2580699:2"
dense_52_2580703:22
dense_52_2580705:2"
dense_53_2580708:2
dense_53_2580710:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?'conv_lst_m2d_30/StatefulPartitionedCall?'conv_lst_m2d_31/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_2580666conv2d_10_2580668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_25792582#
!conv2d_10/StatefulPartitionedCall?
'conv_lst_m2d_30/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_30_inputconv_lst_m2d_30_2580671conv_lst_m2d_30_2580673conv_lst_m2d_30_2580675*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25804132)
'conv_lst_m2d_30/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_2580678conv2d_11_2580680*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_25795022#
!conv2d_11/StatefulPartitionedCall?
'conv_lst_m2d_31/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_30/StatefulPartitionedCall:output:0conv_lst_m2d_31_2580683conv_lst_m2d_31_2580685conv_lst_m2d_31_2580687*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25801612)
'conv_lst_m2d_31/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_25797432
flatten_21/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall0conv_lst_m2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_20_layer_call_and_return_conditional_losses_25797512
flatten_20/PartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_50_2580692dense_50_2580694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_25797632"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_51_2580697dense_51_2580699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_25797792"
 dense_51/StatefulPartitionedCall?
add_15/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0)dense_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_add_15_layer_call_and_return_conditional_losses_25797912
add_15/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCalladd_15/PartitionedCall:output:0dense_52_2580703dense_52_2580705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_25798042"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2580708dense_53_2580710*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_25798212"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall(^conv_lst_m2d_30/StatefulPartitionedCall(^conv_lst_m2d_31/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2R
'conv_lst_m2d_30/StatefulPartitionedCall'conv_lst_m2d_30/StatefulPartitionedCall2R
'conv_lst_m2d_31/StatefulPartitionedCall'conv_lst_m2d_31/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input
?
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_2583734

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????K2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????K2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K:W S
/
_output_shapes
:?????????K
 
_user_specified_nameinputs
?
?
while_cond_2579602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2579602___redundant_placeholder05
1while_while_cond_2579602___redundant_placeholder15
1while_while_cond_2579602___redundant_placeholder25
1while_while_cond_2579602___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
??
?
E__inference_model_15_layer_call_and_return_conditional_losses_2581816
inputs_0
inputs_1B
(conv2d_10_conv2d_readvariableop_resource:F7
)conv2d_10_biasadd_readvariableop_resource:FH
-conv_lst_m2d_30_split_readvariableop_resource:?J
/conv_lst_m2d_30_split_1_readvariableop_resource:F?>
/conv_lst_m2d_30_split_2_readvariableop_resource:	?B
(conv2d_11_conv2d_readvariableop_resource:FK7
)conv2d_11_biasadd_readvariableop_resource:KH
-conv_lst_m2d_31_split_readvariableop_resource:F?J
/conv_lst_m2d_31_split_1_readvariableop_resource:K?>
/conv_lst_m2d_31_split_2_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?26
(dense_50_biasadd_readvariableop_resource:29
'dense_51_matmul_readvariableop_resource:K26
(dense_51_biasadd_readvariableop_resource:29
'dense_52_matmul_readvariableop_resource:226
(dense_52_biasadd_readvariableop_resource:29
'dense_53_matmul_readvariableop_resource:26
(dense_53_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?$conv_lst_m2d_30/split/ReadVariableOp?&conv_lst_m2d_30/split_1/ReadVariableOp?&conv_lst_m2d_30/split_2/ReadVariableOp?conv_lst_m2d_30/while?$conv_lst_m2d_31/split/ReadVariableOp?&conv_lst_m2d_31/split_1/ReadVariableOp?&conv_lst_m2d_31/split_2/ReadVariableOp?conv_lst_m2d_31/while?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dinputs_1'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_10/Relu?
conv_lst_m2d_30/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_30/zeros_like?
%conv_lst_m2d_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_30/Sum/reduction_indices?
conv_lst_m2d_30/SumSumconv_lst_m2d_30/zeros_like:y:0.conv_lst_m2d_30/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_30/Sum?
conv_lst_m2d_30/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_30/zeros?
conv_lst_m2d_30/convolutionConv2Dconv_lst_m2d_30/Sum:output:0conv_lst_m2d_30/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution?
conv_lst_m2d_30/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_30/transpose/perm?
conv_lst_m2d_30/transpose	Transposeinputs_0'conv_lst_m2d_30/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_30/transpose{
conv_lst_m2d_30/ShapeShapeconv_lst_m2d_30/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_30/Shape?
#conv_lst_m2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_30/strided_slice/stack?
%conv_lst_m2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_30/strided_slice/stack_1?
%conv_lst_m2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_30/strided_slice/stack_2?
conv_lst_m2d_30/strided_sliceStridedSliceconv_lst_m2d_30/Shape:output:0,conv_lst_m2d_30/strided_slice/stack:output:0.conv_lst_m2d_30/strided_slice/stack_1:output:0.conv_lst_m2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_30/strided_slice?
+conv_lst_m2d_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_30/TensorArrayV2/element_shape?
conv_lst_m2d_30/TensorArrayV2TensorListReserve4conv_lst_m2d_30/TensorArrayV2/element_shape:output:0&conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_30/TensorArrayV2?
Econv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_30/transpose:y:0Nconv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_30/strided_slice_1/stack?
'conv_lst_m2d_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_1/stack_1?
'conv_lst_m2d_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_1/stack_2?
conv_lst_m2d_30/strided_slice_1StridedSliceconv_lst_m2d_30/transpose:y:0.conv_lst_m2d_30/strided_slice_1/stack:output:00conv_lst_m2d_30/strided_slice_1/stack_1:output:00conv_lst_m2d_30/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_30/strided_slice_1?
conv_lst_m2d_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_30/split/split_dim?
$conv_lst_m2d_30/split/ReadVariableOpReadVariableOp-conv_lst_m2d_30_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_30/split/ReadVariableOp?
conv_lst_m2d_30/splitSplit(conv_lst_m2d_30/split/split_dim:output:0,conv_lst_m2d_30/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_30/split?
!conv_lst_m2d_30/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_30/split_1/split_dim?
&conv_lst_m2d_30/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_30_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_30/split_1/ReadVariableOp?
conv_lst_m2d_30/split_1Split*conv_lst_m2d_30/split_1/split_dim:output:0.conv_lst_m2d_30/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_30/split_1?
!conv_lst_m2d_30/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_30/split_2/split_dim?
&conv_lst_m2d_30/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_30_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_30/split_2/ReadVariableOp?
conv_lst_m2d_30/split_2Split*conv_lst_m2d_30/split_2/split_dim:output:0.conv_lst_m2d_30/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_30/split_2?
conv_lst_m2d_30/convolution_1Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_1?
conv_lst_m2d_30/BiasAddBiasAdd&conv_lst_m2d_30/convolution_1:output:0 conv_lst_m2d_30/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd?
conv_lst_m2d_30/convolution_2Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_2?
conv_lst_m2d_30/BiasAdd_1BiasAdd&conv_lst_m2d_30/convolution_2:output:0 conv_lst_m2d_30/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_1?
conv_lst_m2d_30/convolution_3Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_3?
conv_lst_m2d_30/BiasAdd_2BiasAdd&conv_lst_m2d_30/convolution_3:output:0 conv_lst_m2d_30/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_2?
conv_lst_m2d_30/convolution_4Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_4?
conv_lst_m2d_30/BiasAdd_3BiasAdd&conv_lst_m2d_30/convolution_4:output:0 conv_lst_m2d_30/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_3?
conv_lst_m2d_30/convolution_5Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_5?
conv_lst_m2d_30/convolution_6Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_6?
conv_lst_m2d_30/convolution_7Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_7?
conv_lst_m2d_30/convolution_8Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_8?
conv_lst_m2d_30/addAddV2 conv_lst_m2d_30/BiasAdd:output:0&conv_lst_m2d_30/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/adds
conv_lst_m2d_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Constw
conv_lst_m2d_30/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_1?
conv_lst_m2d_30/MulMulconv_lst_m2d_30/add:z:0conv_lst_m2d_30/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul?
conv_lst_m2d_30/Add_1AddV2conv_lst_m2d_30/Mul:z:0 conv_lst_m2d_30/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_1?
'conv_lst_m2d_30/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_30/clip_by_value/Minimum/y?
%conv_lst_m2d_30/clip_by_value/MinimumMinimumconv_lst_m2d_30/Add_1:z:00conv_lst_m2d_30/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/clip_by_value/Minimum?
conv_lst_m2d_30/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_30/clip_by_value/y?
conv_lst_m2d_30/clip_by_valueMaximum)conv_lst_m2d_30/clip_by_value/Minimum:z:0(conv_lst_m2d_30/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/clip_by_value?
conv_lst_m2d_30/add_2AddV2"conv_lst_m2d_30/BiasAdd_1:output:0&conv_lst_m2d_30/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_2w
conv_lst_m2d_30/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Const_2w
conv_lst_m2d_30/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_3?
conv_lst_m2d_30/Mul_1Mulconv_lst_m2d_30/add_2:z:0 conv_lst_m2d_30/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul_1?
conv_lst_m2d_30/Add_3AddV2conv_lst_m2d_30/Mul_1:z:0 conv_lst_m2d_30/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_3?
)conv_lst_m2d_30/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_30/clip_by_value_1/Minimum/y?
'conv_lst_m2d_30/clip_by_value_1/MinimumMinimumconv_lst_m2d_30/Add_3:z:02conv_lst_m2d_30/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_30/clip_by_value_1/Minimum?
!conv_lst_m2d_30/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_30/clip_by_value_1/y?
conv_lst_m2d_30/clip_by_value_1Maximum+conv_lst_m2d_30/clip_by_value_1/Minimum:z:0*conv_lst_m2d_30/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/clip_by_value_1?
conv_lst_m2d_30/mul_2Mul#conv_lst_m2d_30/clip_by_value_1:z:0$conv_lst_m2d_30/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_2?
conv_lst_m2d_30/add_4AddV2"conv_lst_m2d_30/BiasAdd_2:output:0&conv_lst_m2d_30/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_4?
conv_lst_m2d_30/ReluReluconv_lst_m2d_30/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Relu?
conv_lst_m2d_30/mul_3Mul!conv_lst_m2d_30/clip_by_value:z:0"conv_lst_m2d_30/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_3?
conv_lst_m2d_30/add_5AddV2conv_lst_m2d_30/mul_2:z:0conv_lst_m2d_30/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_5?
conv_lst_m2d_30/add_6AddV2"conv_lst_m2d_30/BiasAdd_3:output:0&conv_lst_m2d_30/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_6w
conv_lst_m2d_30/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Const_4w
conv_lst_m2d_30/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_5?
conv_lst_m2d_30/Mul_4Mulconv_lst_m2d_30/add_6:z:0 conv_lst_m2d_30/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul_4?
conv_lst_m2d_30/Add_7AddV2conv_lst_m2d_30/Mul_4:z:0 conv_lst_m2d_30/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_7?
)conv_lst_m2d_30/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_30/clip_by_value_2/Minimum/y?
'conv_lst_m2d_30/clip_by_value_2/MinimumMinimumconv_lst_m2d_30/Add_7:z:02conv_lst_m2d_30/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_30/clip_by_value_2/Minimum?
!conv_lst_m2d_30/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_30/clip_by_value_2/y?
conv_lst_m2d_30/clip_by_value_2Maximum+conv_lst_m2d_30/clip_by_value_2/Minimum:z:0*conv_lst_m2d_30/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/clip_by_value_2?
conv_lst_m2d_30/Relu_1Reluconv_lst_m2d_30/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Relu_1?
conv_lst_m2d_30/mul_5Mul#conv_lst_m2d_30/clip_by_value_2:z:0$conv_lst_m2d_30/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_5?
-conv_lst_m2d_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_30/TensorArrayV2_1/element_shape?
conv_lst_m2d_30/TensorArrayV2_1TensorListReserve6conv_lst_m2d_30/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_30/TensorArrayV2_1n
conv_lst_m2d_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_30/time?
(conv_lst_m2d_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_30/while/maximum_iterations?
"conv_lst_m2d_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_30/while/loop_counter?
conv_lst_m2d_30/whileWhile+conv_lst_m2d_30/while/loop_counter:output:01conv_lst_m2d_30/while/maximum_iterations:output:0conv_lst_m2d_30/time:output:0(conv_lst_m2d_30/TensorArrayV2_1:handle:0$conv_lst_m2d_30/convolution:output:0$conv_lst_m2d_30/convolution:output:0&conv_lst_m2d_30/strided_slice:output:0Gconv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_30_split_readvariableop_resource/conv_lst_m2d_30_split_1_readvariableop_resource/conv_lst_m2d_30_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"conv_lst_m2d_30_while_body_2581434*.
cond&R$
"conv_lst_m2d_30_while_cond_2581433*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_30/while?
@conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_30/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_30/while:output:3Iconv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_30/strided_slice_2/stack?
'conv_lst_m2d_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_30/strided_slice_2/stack_1?
'conv_lst_m2d_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_2/stack_2?
conv_lst_m2d_30/strided_slice_2StridedSlice;conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_30/strided_slice_2/stack:output:00conv_lst_m2d_30/strided_slice_2/stack_1:output:00conv_lst_m2d_30/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_30/strided_slice_2?
 conv_lst_m2d_30/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_30/transpose_1/perm?
conv_lst_m2d_30/transpose_1	Transpose;conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_30/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_30/transpose_1?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_11/Relu?
conv_lst_m2d_31/zeros_like	ZerosLikeconv_lst_m2d_30/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_31/zeros_like?
%conv_lst_m2d_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_31/Sum/reduction_indices?
conv_lst_m2d_31/SumSumconv_lst_m2d_31/zeros_like:y:0.conv_lst_m2d_31/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_31/Sum?
%conv_lst_m2d_31/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_31/zeros/shape_as_tensor
conv_lst_m2d_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_31/zeros/Const?
conv_lst_m2d_31/zerosFill.conv_lst_m2d_31/zeros/shape_as_tensor:output:0$conv_lst_m2d_31/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_31/zeros?
conv_lst_m2d_31/convolutionConv2Dconv_lst_m2d_31/Sum:output:0conv_lst_m2d_31/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution?
conv_lst_m2d_31/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_31/transpose/perm?
conv_lst_m2d_31/transpose	Transposeconv_lst_m2d_30/transpose_1:y:0'conv_lst_m2d_31/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_31/transpose{
conv_lst_m2d_31/ShapeShapeconv_lst_m2d_31/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_31/Shape?
#conv_lst_m2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_31/strided_slice/stack?
%conv_lst_m2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_31/strided_slice/stack_1?
%conv_lst_m2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_31/strided_slice/stack_2?
conv_lst_m2d_31/strided_sliceStridedSliceconv_lst_m2d_31/Shape:output:0,conv_lst_m2d_31/strided_slice/stack:output:0.conv_lst_m2d_31/strided_slice/stack_1:output:0.conv_lst_m2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_31/strided_slice?
+conv_lst_m2d_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_31/TensorArrayV2/element_shape?
conv_lst_m2d_31/TensorArrayV2TensorListReserve4conv_lst_m2d_31/TensorArrayV2/element_shape:output:0&conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_31/TensorArrayV2?
Econv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_31/transpose:y:0Nconv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_31/strided_slice_1/stack?
'conv_lst_m2d_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_1/stack_1?
'conv_lst_m2d_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_1/stack_2?
conv_lst_m2d_31/strided_slice_1StridedSliceconv_lst_m2d_31/transpose:y:0.conv_lst_m2d_31/strided_slice_1/stack:output:00conv_lst_m2d_31/strided_slice_1/stack_1:output:00conv_lst_m2d_31/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_31/strided_slice_1?
conv_lst_m2d_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_31/split/split_dim?
$conv_lst_m2d_31/split/ReadVariableOpReadVariableOp-conv_lst_m2d_31_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_31/split/ReadVariableOp?
conv_lst_m2d_31/splitSplit(conv_lst_m2d_31/split/split_dim:output:0,conv_lst_m2d_31/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_31/split?
!conv_lst_m2d_31/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_31/split_1/split_dim?
&conv_lst_m2d_31/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_31_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_31/split_1/ReadVariableOp?
conv_lst_m2d_31/split_1Split*conv_lst_m2d_31/split_1/split_dim:output:0.conv_lst_m2d_31/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_31/split_1?
!conv_lst_m2d_31/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_31/split_2/split_dim?
&conv_lst_m2d_31/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_31_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_31/split_2/ReadVariableOp?
conv_lst_m2d_31/split_2Split*conv_lst_m2d_31/split_2/split_dim:output:0.conv_lst_m2d_31/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_31/split_2?
conv_lst_m2d_31/convolution_1Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_1?
conv_lst_m2d_31/BiasAddBiasAdd&conv_lst_m2d_31/convolution_1:output:0 conv_lst_m2d_31/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd?
conv_lst_m2d_31/convolution_2Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_2?
conv_lst_m2d_31/BiasAdd_1BiasAdd&conv_lst_m2d_31/convolution_2:output:0 conv_lst_m2d_31/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_1?
conv_lst_m2d_31/convolution_3Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_3?
conv_lst_m2d_31/BiasAdd_2BiasAdd&conv_lst_m2d_31/convolution_3:output:0 conv_lst_m2d_31/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_2?
conv_lst_m2d_31/convolution_4Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_4?
conv_lst_m2d_31/BiasAdd_3BiasAdd&conv_lst_m2d_31/convolution_4:output:0 conv_lst_m2d_31/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_3?
conv_lst_m2d_31/convolution_5Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_5?
conv_lst_m2d_31/convolution_6Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_6?
conv_lst_m2d_31/convolution_7Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_7?
conv_lst_m2d_31/convolution_8Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_8?
conv_lst_m2d_31/addAddV2 conv_lst_m2d_31/BiasAdd:output:0&conv_lst_m2d_31/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/adds
conv_lst_m2d_31/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Constw
conv_lst_m2d_31/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_1?
conv_lst_m2d_31/MulMulconv_lst_m2d_31/add:z:0conv_lst_m2d_31/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul?
conv_lst_m2d_31/Add_1AddV2conv_lst_m2d_31/Mul:z:0 conv_lst_m2d_31/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_1?
'conv_lst_m2d_31/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_31/clip_by_value/Minimum/y?
%conv_lst_m2d_31/clip_by_value/MinimumMinimumconv_lst_m2d_31/Add_1:z:00conv_lst_m2d_31/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/clip_by_value/Minimum?
conv_lst_m2d_31/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_31/clip_by_value/y?
conv_lst_m2d_31/clip_by_valueMaximum)conv_lst_m2d_31/clip_by_value/Minimum:z:0(conv_lst_m2d_31/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/clip_by_value?
conv_lst_m2d_31/add_2AddV2"conv_lst_m2d_31/BiasAdd_1:output:0&conv_lst_m2d_31/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_2w
conv_lst_m2d_31/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Const_2w
conv_lst_m2d_31/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_3?
conv_lst_m2d_31/Mul_1Mulconv_lst_m2d_31/add_2:z:0 conv_lst_m2d_31/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul_1?
conv_lst_m2d_31/Add_3AddV2conv_lst_m2d_31/Mul_1:z:0 conv_lst_m2d_31/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_3?
)conv_lst_m2d_31/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_31/clip_by_value_1/Minimum/y?
'conv_lst_m2d_31/clip_by_value_1/MinimumMinimumconv_lst_m2d_31/Add_3:z:02conv_lst_m2d_31/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_31/clip_by_value_1/Minimum?
!conv_lst_m2d_31/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_31/clip_by_value_1/y?
conv_lst_m2d_31/clip_by_value_1Maximum+conv_lst_m2d_31/clip_by_value_1/Minimum:z:0*conv_lst_m2d_31/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/clip_by_value_1?
conv_lst_m2d_31/mul_2Mul#conv_lst_m2d_31/clip_by_value_1:z:0$conv_lst_m2d_31/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_2?
conv_lst_m2d_31/add_4AddV2"conv_lst_m2d_31/BiasAdd_2:output:0&conv_lst_m2d_31/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_4?
conv_lst_m2d_31/ReluReluconv_lst_m2d_31/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Relu?
conv_lst_m2d_31/mul_3Mul!conv_lst_m2d_31/clip_by_value:z:0"conv_lst_m2d_31/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_3?
conv_lst_m2d_31/add_5AddV2conv_lst_m2d_31/mul_2:z:0conv_lst_m2d_31/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_5?
conv_lst_m2d_31/add_6AddV2"conv_lst_m2d_31/BiasAdd_3:output:0&conv_lst_m2d_31/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_6w
conv_lst_m2d_31/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Const_4w
conv_lst_m2d_31/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_5?
conv_lst_m2d_31/Mul_4Mulconv_lst_m2d_31/add_6:z:0 conv_lst_m2d_31/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul_4?
conv_lst_m2d_31/Add_7AddV2conv_lst_m2d_31/Mul_4:z:0 conv_lst_m2d_31/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_7?
)conv_lst_m2d_31/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_31/clip_by_value_2/Minimum/y?
'conv_lst_m2d_31/clip_by_value_2/MinimumMinimumconv_lst_m2d_31/Add_7:z:02conv_lst_m2d_31/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_31/clip_by_value_2/Minimum?
!conv_lst_m2d_31/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_31/clip_by_value_2/y?
conv_lst_m2d_31/clip_by_value_2Maximum+conv_lst_m2d_31/clip_by_value_2/Minimum:z:0*conv_lst_m2d_31/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/clip_by_value_2?
conv_lst_m2d_31/Relu_1Reluconv_lst_m2d_31/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Relu_1?
conv_lst_m2d_31/mul_5Mul#conv_lst_m2d_31/clip_by_value_2:z:0$conv_lst_m2d_31/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_5?
-conv_lst_m2d_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_31/TensorArrayV2_1/element_shape?
conv_lst_m2d_31/TensorArrayV2_1TensorListReserve6conv_lst_m2d_31/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_31/TensorArrayV2_1n
conv_lst_m2d_31/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_31/time?
(conv_lst_m2d_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_31/while/maximum_iterations?
"conv_lst_m2d_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_31/while/loop_counter?
conv_lst_m2d_31/whileWhile+conv_lst_m2d_31/while/loop_counter:output:01conv_lst_m2d_31/while/maximum_iterations:output:0conv_lst_m2d_31/time:output:0(conv_lst_m2d_31/TensorArrayV2_1:handle:0$conv_lst_m2d_31/convolution:output:0$conv_lst_m2d_31/convolution:output:0&conv_lst_m2d_31/strided_slice:output:0Gconv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_31_split_readvariableop_resource/conv_lst_m2d_31_split_1_readvariableop_resource/conv_lst_m2d_31_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"conv_lst_m2d_31_while_body_2581659*.
cond&R$
"conv_lst_m2d_31_while_cond_2581658*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_31/while?
@conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_31/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_31/while:output:3Iconv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_31/strided_slice_2/stack?
'conv_lst_m2d_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_31/strided_slice_2/stack_1?
'conv_lst_m2d_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_2/stack_2?
conv_lst_m2d_31/strided_slice_2StridedSlice;conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_31/strided_slice_2/stack:output:00conv_lst_m2d_31/strided_slice_2/stack_1:output:00conv_lst_m2d_31/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_31/strided_slice_2?
 conv_lst_m2d_31/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_31/transpose_1/perm?
conv_lst_m2d_31/transpose_1	Transpose;conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_31/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_31/transpose_1u
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_21/Const?
flatten_21/ReshapeReshapeconv2d_11/Relu:activations:0flatten_21/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_21/Reshapeu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_20/Const?
flatten_20/ReshapeReshapeconv_lst_m2d_31/transpose_1:y:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_20/Reshape?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMulflatten_20/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_50/BiasAdd?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMulMatMulflatten_21/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_51/BiasAdd?

add_15/addAddV2dense_50/BiasAdd:output:0dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_15/add?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMuladd_15/add:z:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_52/BiasAdds
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_52/Relu?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/BiasAdd|
dense_53/SoftmaxSoftmaxdense_53/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_53/Softmaxu
IdentityIdentitydense_53/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp%^conv_lst_m2d_30/split/ReadVariableOp'^conv_lst_m2d_30/split_1/ReadVariableOp'^conv_lst_m2d_30/split_2/ReadVariableOp^conv_lst_m2d_30/while%^conv_lst_m2d_31/split/ReadVariableOp'^conv_lst_m2d_31/split_1/ReadVariableOp'^conv_lst_m2d_31/split_2/ReadVariableOp^conv_lst_m2d_31/while ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2L
$conv_lst_m2d_30/split/ReadVariableOp$conv_lst_m2d_30/split/ReadVariableOp2P
&conv_lst_m2d_30/split_1/ReadVariableOp&conv_lst_m2d_30/split_1/ReadVariableOp2P
&conv_lst_m2d_30/split_2/ReadVariableOp&conv_lst_m2d_30/split_2/ReadVariableOp2.
conv_lst_m2d_30/whileconv_lst_m2d_30/while2L
$conv_lst_m2d_31/split/ReadVariableOp$conv_lst_m2d_31/split/ReadVariableOp2P
&conv_lst_m2d_31/split_1/ReadVariableOp&conv_lst_m2d_31/split_1/ReadVariableOp2P
&conv_lst_m2d_31/split_2/ReadVariableOp&conv_lst_m2d_31/split_2/ReadVariableOp2.
conv_lst_m2d_31/whileconv_lst_m2d_31/while2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_model_15_layer_call_fn_2580848
inputs_0
inputs_1!
unknown:F
	unknown_0:F$
	unknown_1:?$
	unknown_2:F?
	unknown_3:	?#
	unknown_4:FK
	unknown_5:K$
	unknown_6:F?$
	unknown_7:K?
	unknown_8:	?
	unknown_9:	?2

unknown_10:2

unknown_11:K2

unknown_12:2

unknown_13:22

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_25805292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_2579743

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????K2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????K2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K:W S
/
_output_shapes
:?????????K
 
_user_specified_nameinputs
?
?
1__inference_conv_lst_m2d_31_layer_call_fn_2582804

inputs"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25801612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?
?
+model_15_conv_lst_m2d_31_while_cond_2577776N
Jmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_loop_counterT
Pmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_maximum_iterations.
*model_15_conv_lst_m2d_31_while_placeholder0
,model_15_conv_lst_m2d_31_while_placeholder_10
,model_15_conv_lst_m2d_31_while_placeholder_20
,model_15_conv_lst_m2d_31_while_placeholder_3N
Jmodel_15_conv_lst_m2d_31_while_less_model_15_conv_lst_m2d_31_strided_sliceg
cmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_cond_2577776___redundant_placeholder0g
cmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_cond_2577776___redundant_placeholder1g
cmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_cond_2577776___redundant_placeholder2g
cmodel_15_conv_lst_m2d_31_while_model_15_conv_lst_m2d_31_while_cond_2577776___redundant_placeholder3+
'model_15_conv_lst_m2d_31_while_identity
?
#model_15/conv_lst_m2d_31/while/LessLess*model_15_conv_lst_m2d_31_while_placeholderJmodel_15_conv_lst_m2d_31_while_less_model_15_conv_lst_m2d_31_strided_slice*
T0*
_output_shapes
: 2%
#model_15/conv_lst_m2d_31/while/Less?
'model_15/conv_lst_m2d_31/while/IdentityIdentity'model_15/conv_lst_m2d_31/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_15/conv_lst_m2d_31/while/Identity"[
'model_15_conv_lst_m2d_31_while_identity0model_15/conv_lst_m2d_31/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2582613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2582613___redundant_placeholder05
1while_while_cond_2582613___redundant_placeholder15
1while_while_cond_2582613___redundant_placeholder25
1while_while_cond_2582613___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
c
G__inference_flatten_20_layer_call_and_return_conditional_losses_2583723

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????K:[ W
3
_output_shapes!
:?????????K
 
_user_specified_nameinputs
?
?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_2579502

inputs8
conv2d_readvariableop_resource:FK-
biasadd_readvariableop_resource:K
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????F: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs
?

?
E__inference_dense_51_layer_call_and_return_conditional_losses_2583772

inputs0
matmul_readvariableop_resource:K2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:K2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????K
 
_user_specified_nameinputs
?

?
E__inference_dense_51_layer_call_and_return_conditional_losses_2579779

inputs0
matmul_readvariableop_resource:K2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:K2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????K
 
_user_specified_nameinputs
??
?
E__inference_model_15_layer_call_and_return_conditional_losses_2581332
inputs_0
inputs_1B
(conv2d_10_conv2d_readvariableop_resource:F7
)conv2d_10_biasadd_readvariableop_resource:FH
-conv_lst_m2d_30_split_readvariableop_resource:?J
/conv_lst_m2d_30_split_1_readvariableop_resource:F?>
/conv_lst_m2d_30_split_2_readvariableop_resource:	?B
(conv2d_11_conv2d_readvariableop_resource:FK7
)conv2d_11_biasadd_readvariableop_resource:KH
-conv_lst_m2d_31_split_readvariableop_resource:F?J
/conv_lst_m2d_31_split_1_readvariableop_resource:K?>
/conv_lst_m2d_31_split_2_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?26
(dense_50_biasadd_readvariableop_resource:29
'dense_51_matmul_readvariableop_resource:K26
(dense_51_biasadd_readvariableop_resource:29
'dense_52_matmul_readvariableop_resource:226
(dense_52_biasadd_readvariableop_resource:29
'dense_53_matmul_readvariableop_resource:26
(dense_53_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?$conv_lst_m2d_30/split/ReadVariableOp?&conv_lst_m2d_30/split_1/ReadVariableOp?&conv_lst_m2d_30/split_2/ReadVariableOp?conv_lst_m2d_30/while?$conv_lst_m2d_31/split/ReadVariableOp?&conv_lst_m2d_31/split_1/ReadVariableOp?&conv_lst_m2d_31/split_2/ReadVariableOp?conv_lst_m2d_31/while?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dinputs_1'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_10/Relu?
conv_lst_m2d_30/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_30/zeros_like?
%conv_lst_m2d_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_30/Sum/reduction_indices?
conv_lst_m2d_30/SumSumconv_lst_m2d_30/zeros_like:y:0.conv_lst_m2d_30/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_30/Sum?
conv_lst_m2d_30/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_30/zeros?
conv_lst_m2d_30/convolutionConv2Dconv_lst_m2d_30/Sum:output:0conv_lst_m2d_30/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution?
conv_lst_m2d_30/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_30/transpose/perm?
conv_lst_m2d_30/transpose	Transposeinputs_0'conv_lst_m2d_30/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_30/transpose{
conv_lst_m2d_30/ShapeShapeconv_lst_m2d_30/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_30/Shape?
#conv_lst_m2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_30/strided_slice/stack?
%conv_lst_m2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_30/strided_slice/stack_1?
%conv_lst_m2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_30/strided_slice/stack_2?
conv_lst_m2d_30/strided_sliceStridedSliceconv_lst_m2d_30/Shape:output:0,conv_lst_m2d_30/strided_slice/stack:output:0.conv_lst_m2d_30/strided_slice/stack_1:output:0.conv_lst_m2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_30/strided_slice?
+conv_lst_m2d_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_30/TensorArrayV2/element_shape?
conv_lst_m2d_30/TensorArrayV2TensorListReserve4conv_lst_m2d_30/TensorArrayV2/element_shape:output:0&conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_30/TensorArrayV2?
Econv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_30/transpose:y:0Nconv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_30/strided_slice_1/stack?
'conv_lst_m2d_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_1/stack_1?
'conv_lst_m2d_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_1/stack_2?
conv_lst_m2d_30/strided_slice_1StridedSliceconv_lst_m2d_30/transpose:y:0.conv_lst_m2d_30/strided_slice_1/stack:output:00conv_lst_m2d_30/strided_slice_1/stack_1:output:00conv_lst_m2d_30/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_30/strided_slice_1?
conv_lst_m2d_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_30/split/split_dim?
$conv_lst_m2d_30/split/ReadVariableOpReadVariableOp-conv_lst_m2d_30_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_30/split/ReadVariableOp?
conv_lst_m2d_30/splitSplit(conv_lst_m2d_30/split/split_dim:output:0,conv_lst_m2d_30/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_30/split?
!conv_lst_m2d_30/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_30/split_1/split_dim?
&conv_lst_m2d_30/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_30_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_30/split_1/ReadVariableOp?
conv_lst_m2d_30/split_1Split*conv_lst_m2d_30/split_1/split_dim:output:0.conv_lst_m2d_30/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_30/split_1?
!conv_lst_m2d_30/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_30/split_2/split_dim?
&conv_lst_m2d_30/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_30_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_30/split_2/ReadVariableOp?
conv_lst_m2d_30/split_2Split*conv_lst_m2d_30/split_2/split_dim:output:0.conv_lst_m2d_30/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_30/split_2?
conv_lst_m2d_30/convolution_1Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_1?
conv_lst_m2d_30/BiasAddBiasAdd&conv_lst_m2d_30/convolution_1:output:0 conv_lst_m2d_30/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd?
conv_lst_m2d_30/convolution_2Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_2?
conv_lst_m2d_30/BiasAdd_1BiasAdd&conv_lst_m2d_30/convolution_2:output:0 conv_lst_m2d_30/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_1?
conv_lst_m2d_30/convolution_3Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_3?
conv_lst_m2d_30/BiasAdd_2BiasAdd&conv_lst_m2d_30/convolution_3:output:0 conv_lst_m2d_30/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_2?
conv_lst_m2d_30/convolution_4Conv2D(conv_lst_m2d_30/strided_slice_1:output:0conv_lst_m2d_30/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_30/convolution_4?
conv_lst_m2d_30/BiasAdd_3BiasAdd&conv_lst_m2d_30/convolution_4:output:0 conv_lst_m2d_30/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/BiasAdd_3?
conv_lst_m2d_30/convolution_5Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_5?
conv_lst_m2d_30/convolution_6Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_6?
conv_lst_m2d_30/convolution_7Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_7?
conv_lst_m2d_30/convolution_8Conv2D$conv_lst_m2d_30/convolution:output:0 conv_lst_m2d_30/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_30/convolution_8?
conv_lst_m2d_30/addAddV2 conv_lst_m2d_30/BiasAdd:output:0&conv_lst_m2d_30/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/adds
conv_lst_m2d_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Constw
conv_lst_m2d_30/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_1?
conv_lst_m2d_30/MulMulconv_lst_m2d_30/add:z:0conv_lst_m2d_30/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul?
conv_lst_m2d_30/Add_1AddV2conv_lst_m2d_30/Mul:z:0 conv_lst_m2d_30/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_1?
'conv_lst_m2d_30/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_30/clip_by_value/Minimum/y?
%conv_lst_m2d_30/clip_by_value/MinimumMinimumconv_lst_m2d_30/Add_1:z:00conv_lst_m2d_30/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/clip_by_value/Minimum?
conv_lst_m2d_30/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_30/clip_by_value/y?
conv_lst_m2d_30/clip_by_valueMaximum)conv_lst_m2d_30/clip_by_value/Minimum:z:0(conv_lst_m2d_30/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/clip_by_value?
conv_lst_m2d_30/add_2AddV2"conv_lst_m2d_30/BiasAdd_1:output:0&conv_lst_m2d_30/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_2w
conv_lst_m2d_30/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Const_2w
conv_lst_m2d_30/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_3?
conv_lst_m2d_30/Mul_1Mulconv_lst_m2d_30/add_2:z:0 conv_lst_m2d_30/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul_1?
conv_lst_m2d_30/Add_3AddV2conv_lst_m2d_30/Mul_1:z:0 conv_lst_m2d_30/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_3?
)conv_lst_m2d_30/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_30/clip_by_value_1/Minimum/y?
'conv_lst_m2d_30/clip_by_value_1/MinimumMinimumconv_lst_m2d_30/Add_3:z:02conv_lst_m2d_30/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_30/clip_by_value_1/Minimum?
!conv_lst_m2d_30/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_30/clip_by_value_1/y?
conv_lst_m2d_30/clip_by_value_1Maximum+conv_lst_m2d_30/clip_by_value_1/Minimum:z:0*conv_lst_m2d_30/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/clip_by_value_1?
conv_lst_m2d_30/mul_2Mul#conv_lst_m2d_30/clip_by_value_1:z:0$conv_lst_m2d_30/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_2?
conv_lst_m2d_30/add_4AddV2"conv_lst_m2d_30/BiasAdd_2:output:0&conv_lst_m2d_30/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_4?
conv_lst_m2d_30/ReluReluconv_lst_m2d_30/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Relu?
conv_lst_m2d_30/mul_3Mul!conv_lst_m2d_30/clip_by_value:z:0"conv_lst_m2d_30/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_3?
conv_lst_m2d_30/add_5AddV2conv_lst_m2d_30/mul_2:z:0conv_lst_m2d_30/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_5?
conv_lst_m2d_30/add_6AddV2"conv_lst_m2d_30/BiasAdd_3:output:0&conv_lst_m2d_30/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/add_6w
conv_lst_m2d_30/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/Const_4w
conv_lst_m2d_30/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/Const_5?
conv_lst_m2d_30/Mul_4Mulconv_lst_m2d_30/add_6:z:0 conv_lst_m2d_30/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Mul_4?
conv_lst_m2d_30/Add_7AddV2conv_lst_m2d_30/Mul_4:z:0 conv_lst_m2d_30/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Add_7?
)conv_lst_m2d_30/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_30/clip_by_value_2/Minimum/y?
'conv_lst_m2d_30/clip_by_value_2/MinimumMinimumconv_lst_m2d_30/Add_7:z:02conv_lst_m2d_30/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_30/clip_by_value_2/Minimum?
!conv_lst_m2d_30/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_30/clip_by_value_2/y?
conv_lst_m2d_30/clip_by_value_2Maximum+conv_lst_m2d_30/clip_by_value_2/Minimum:z:0*conv_lst_m2d_30/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/clip_by_value_2?
conv_lst_m2d_30/Relu_1Reluconv_lst_m2d_30/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/Relu_1?
conv_lst_m2d_30/mul_5Mul#conv_lst_m2d_30/clip_by_value_2:z:0$conv_lst_m2d_30/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/mul_5?
-conv_lst_m2d_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_30/TensorArrayV2_1/element_shape?
conv_lst_m2d_30/TensorArrayV2_1TensorListReserve6conv_lst_m2d_30/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_30/TensorArrayV2_1n
conv_lst_m2d_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_30/time?
(conv_lst_m2d_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_30/while/maximum_iterations?
"conv_lst_m2d_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_30/while/loop_counter?
conv_lst_m2d_30/whileWhile+conv_lst_m2d_30/while/loop_counter:output:01conv_lst_m2d_30/while/maximum_iterations:output:0conv_lst_m2d_30/time:output:0(conv_lst_m2d_30/TensorArrayV2_1:handle:0$conv_lst_m2d_30/convolution:output:0$conv_lst_m2d_30/convolution:output:0&conv_lst_m2d_30/strided_slice:output:0Gconv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_30_split_readvariableop_resource/conv_lst_m2d_30_split_1_readvariableop_resource/conv_lst_m2d_30_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"conv_lst_m2d_30_while_body_2580950*.
cond&R$
"conv_lst_m2d_30_while_cond_2580949*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_30/while?
@conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_30/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_30/while:output:3Iconv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_30/strided_slice_2/stack?
'conv_lst_m2d_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_30/strided_slice_2/stack_1?
'conv_lst_m2d_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_30/strided_slice_2/stack_2?
conv_lst_m2d_30/strided_slice_2StridedSlice;conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_30/strided_slice_2/stack:output:00conv_lst_m2d_30/strided_slice_2/stack_1:output:00conv_lst_m2d_30/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_30/strided_slice_2?
 conv_lst_m2d_30/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_30/transpose_1/perm?
conv_lst_m2d_30/transpose_1	Transpose;conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_30/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_30/transpose_1?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_11/Relu?
conv_lst_m2d_31/zeros_like	ZerosLikeconv_lst_m2d_30/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_31/zeros_like?
%conv_lst_m2d_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_31/Sum/reduction_indices?
conv_lst_m2d_31/SumSumconv_lst_m2d_31/zeros_like:y:0.conv_lst_m2d_31/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_31/Sum?
%conv_lst_m2d_31/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_31/zeros/shape_as_tensor
conv_lst_m2d_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_31/zeros/Const?
conv_lst_m2d_31/zerosFill.conv_lst_m2d_31/zeros/shape_as_tensor:output:0$conv_lst_m2d_31/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_31/zeros?
conv_lst_m2d_31/convolutionConv2Dconv_lst_m2d_31/Sum:output:0conv_lst_m2d_31/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution?
conv_lst_m2d_31/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_31/transpose/perm?
conv_lst_m2d_31/transpose	Transposeconv_lst_m2d_30/transpose_1:y:0'conv_lst_m2d_31/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_31/transpose{
conv_lst_m2d_31/ShapeShapeconv_lst_m2d_31/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_31/Shape?
#conv_lst_m2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_31/strided_slice/stack?
%conv_lst_m2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_31/strided_slice/stack_1?
%conv_lst_m2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_31/strided_slice/stack_2?
conv_lst_m2d_31/strided_sliceStridedSliceconv_lst_m2d_31/Shape:output:0,conv_lst_m2d_31/strided_slice/stack:output:0.conv_lst_m2d_31/strided_slice/stack_1:output:0.conv_lst_m2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_31/strided_slice?
+conv_lst_m2d_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_31/TensorArrayV2/element_shape?
conv_lst_m2d_31/TensorArrayV2TensorListReserve4conv_lst_m2d_31/TensorArrayV2/element_shape:output:0&conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_31/TensorArrayV2?
Econv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_31/transpose:y:0Nconv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_31/strided_slice_1/stack?
'conv_lst_m2d_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_1/stack_1?
'conv_lst_m2d_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_1/stack_2?
conv_lst_m2d_31/strided_slice_1StridedSliceconv_lst_m2d_31/transpose:y:0.conv_lst_m2d_31/strided_slice_1/stack:output:00conv_lst_m2d_31/strided_slice_1/stack_1:output:00conv_lst_m2d_31/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_31/strided_slice_1?
conv_lst_m2d_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_31/split/split_dim?
$conv_lst_m2d_31/split/ReadVariableOpReadVariableOp-conv_lst_m2d_31_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_31/split/ReadVariableOp?
conv_lst_m2d_31/splitSplit(conv_lst_m2d_31/split/split_dim:output:0,conv_lst_m2d_31/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_31/split?
!conv_lst_m2d_31/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_31/split_1/split_dim?
&conv_lst_m2d_31/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_31_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_31/split_1/ReadVariableOp?
conv_lst_m2d_31/split_1Split*conv_lst_m2d_31/split_1/split_dim:output:0.conv_lst_m2d_31/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_31/split_1?
!conv_lst_m2d_31/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_31/split_2/split_dim?
&conv_lst_m2d_31/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_31_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_31/split_2/ReadVariableOp?
conv_lst_m2d_31/split_2Split*conv_lst_m2d_31/split_2/split_dim:output:0.conv_lst_m2d_31/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_31/split_2?
conv_lst_m2d_31/convolution_1Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_1?
conv_lst_m2d_31/BiasAddBiasAdd&conv_lst_m2d_31/convolution_1:output:0 conv_lst_m2d_31/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd?
conv_lst_m2d_31/convolution_2Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_2?
conv_lst_m2d_31/BiasAdd_1BiasAdd&conv_lst_m2d_31/convolution_2:output:0 conv_lst_m2d_31/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_1?
conv_lst_m2d_31/convolution_3Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_3?
conv_lst_m2d_31/BiasAdd_2BiasAdd&conv_lst_m2d_31/convolution_3:output:0 conv_lst_m2d_31/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_2?
conv_lst_m2d_31/convolution_4Conv2D(conv_lst_m2d_31/strided_slice_1:output:0conv_lst_m2d_31/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_31/convolution_4?
conv_lst_m2d_31/BiasAdd_3BiasAdd&conv_lst_m2d_31/convolution_4:output:0 conv_lst_m2d_31/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/BiasAdd_3?
conv_lst_m2d_31/convolution_5Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_5?
conv_lst_m2d_31/convolution_6Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_6?
conv_lst_m2d_31/convolution_7Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_7?
conv_lst_m2d_31/convolution_8Conv2D$conv_lst_m2d_31/convolution:output:0 conv_lst_m2d_31/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_31/convolution_8?
conv_lst_m2d_31/addAddV2 conv_lst_m2d_31/BiasAdd:output:0&conv_lst_m2d_31/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/adds
conv_lst_m2d_31/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Constw
conv_lst_m2d_31/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_1?
conv_lst_m2d_31/MulMulconv_lst_m2d_31/add:z:0conv_lst_m2d_31/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul?
conv_lst_m2d_31/Add_1AddV2conv_lst_m2d_31/Mul:z:0 conv_lst_m2d_31/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_1?
'conv_lst_m2d_31/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_31/clip_by_value/Minimum/y?
%conv_lst_m2d_31/clip_by_value/MinimumMinimumconv_lst_m2d_31/Add_1:z:00conv_lst_m2d_31/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/clip_by_value/Minimum?
conv_lst_m2d_31/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_31/clip_by_value/y?
conv_lst_m2d_31/clip_by_valueMaximum)conv_lst_m2d_31/clip_by_value/Minimum:z:0(conv_lst_m2d_31/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/clip_by_value?
conv_lst_m2d_31/add_2AddV2"conv_lst_m2d_31/BiasAdd_1:output:0&conv_lst_m2d_31/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_2w
conv_lst_m2d_31/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Const_2w
conv_lst_m2d_31/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_3?
conv_lst_m2d_31/Mul_1Mulconv_lst_m2d_31/add_2:z:0 conv_lst_m2d_31/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul_1?
conv_lst_m2d_31/Add_3AddV2conv_lst_m2d_31/Mul_1:z:0 conv_lst_m2d_31/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_3?
)conv_lst_m2d_31/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_31/clip_by_value_1/Minimum/y?
'conv_lst_m2d_31/clip_by_value_1/MinimumMinimumconv_lst_m2d_31/Add_3:z:02conv_lst_m2d_31/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_31/clip_by_value_1/Minimum?
!conv_lst_m2d_31/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_31/clip_by_value_1/y?
conv_lst_m2d_31/clip_by_value_1Maximum+conv_lst_m2d_31/clip_by_value_1/Minimum:z:0*conv_lst_m2d_31/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/clip_by_value_1?
conv_lst_m2d_31/mul_2Mul#conv_lst_m2d_31/clip_by_value_1:z:0$conv_lst_m2d_31/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_2?
conv_lst_m2d_31/add_4AddV2"conv_lst_m2d_31/BiasAdd_2:output:0&conv_lst_m2d_31/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_4?
conv_lst_m2d_31/ReluReluconv_lst_m2d_31/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Relu?
conv_lst_m2d_31/mul_3Mul!conv_lst_m2d_31/clip_by_value:z:0"conv_lst_m2d_31/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_3?
conv_lst_m2d_31/add_5AddV2conv_lst_m2d_31/mul_2:z:0conv_lst_m2d_31/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_5?
conv_lst_m2d_31/add_6AddV2"conv_lst_m2d_31/BiasAdd_3:output:0&conv_lst_m2d_31/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/add_6w
conv_lst_m2d_31/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/Const_4w
conv_lst_m2d_31/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/Const_5?
conv_lst_m2d_31/Mul_4Mulconv_lst_m2d_31/add_6:z:0 conv_lst_m2d_31/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Mul_4?
conv_lst_m2d_31/Add_7AddV2conv_lst_m2d_31/Mul_4:z:0 conv_lst_m2d_31/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Add_7?
)conv_lst_m2d_31/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_31/clip_by_value_2/Minimum/y?
'conv_lst_m2d_31/clip_by_value_2/MinimumMinimumconv_lst_m2d_31/Add_7:z:02conv_lst_m2d_31/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_31/clip_by_value_2/Minimum?
!conv_lst_m2d_31/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_31/clip_by_value_2/y?
conv_lst_m2d_31/clip_by_value_2Maximum+conv_lst_m2d_31/clip_by_value_2/Minimum:z:0*conv_lst_m2d_31/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/clip_by_value_2?
conv_lst_m2d_31/Relu_1Reluconv_lst_m2d_31/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/Relu_1?
conv_lst_m2d_31/mul_5Mul#conv_lst_m2d_31/clip_by_value_2:z:0$conv_lst_m2d_31/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/mul_5?
-conv_lst_m2d_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_31/TensorArrayV2_1/element_shape?
conv_lst_m2d_31/TensorArrayV2_1TensorListReserve6conv_lst_m2d_31/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_31/TensorArrayV2_1n
conv_lst_m2d_31/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_31/time?
(conv_lst_m2d_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_31/while/maximum_iterations?
"conv_lst_m2d_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_31/while/loop_counter?
conv_lst_m2d_31/whileWhile+conv_lst_m2d_31/while/loop_counter:output:01conv_lst_m2d_31/while/maximum_iterations:output:0conv_lst_m2d_31/time:output:0(conv_lst_m2d_31/TensorArrayV2_1:handle:0$conv_lst_m2d_31/convolution:output:0$conv_lst_m2d_31/convolution:output:0&conv_lst_m2d_31/strided_slice:output:0Gconv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_31_split_readvariableop_resource/conv_lst_m2d_31_split_1_readvariableop_resource/conv_lst_m2d_31_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"conv_lst_m2d_31_while_body_2581175*.
cond&R$
"conv_lst_m2d_31_while_cond_2581174*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_31/while?
@conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_31/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_31/while:output:3Iconv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_31/strided_slice_2/stack?
'conv_lst_m2d_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_31/strided_slice_2/stack_1?
'conv_lst_m2d_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_31/strided_slice_2/stack_2?
conv_lst_m2d_31/strided_slice_2StridedSlice;conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_31/strided_slice_2/stack:output:00conv_lst_m2d_31/strided_slice_2/stack_1:output:00conv_lst_m2d_31/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_31/strided_slice_2?
 conv_lst_m2d_31/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_31/transpose_1/perm?
conv_lst_m2d_31/transpose_1	Transpose;conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_31/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_31/transpose_1u
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_21/Const?
flatten_21/ReshapeReshapeconv2d_11/Relu:activations:0flatten_21/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_21/Reshapeu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_20/Const?
flatten_20/ReshapeReshapeconv_lst_m2d_31/transpose_1:y:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_20/Reshape?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMulflatten_20/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_50/BiasAdd?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMulMatMulflatten_21/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_51/BiasAdd?

add_15/addAddV2dense_50/BiasAdd:output:0dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_15/add?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMuladd_15/add:z:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_52/BiasAdds
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_52/Relu?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/BiasAdd|
dense_53/SoftmaxSoftmaxdense_53/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_53/Softmaxu
IdentityIdentitydense_53/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp%^conv_lst_m2d_30/split/ReadVariableOp'^conv_lst_m2d_30/split_1/ReadVariableOp'^conv_lst_m2d_30/split_2/ReadVariableOp^conv_lst_m2d_30/while%^conv_lst_m2d_31/split/ReadVariableOp'^conv_lst_m2d_31/split_1/ReadVariableOp'^conv_lst_m2d_31/split_2/ReadVariableOp^conv_lst_m2d_31/while ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2L
$conv_lst_m2d_30/split/ReadVariableOp$conv_lst_m2d_30/split/ReadVariableOp2P
&conv_lst_m2d_30/split_1/ReadVariableOp&conv_lst_m2d_30/split_1/ReadVariableOp2P
&conv_lst_m2d_30/split_2/ReadVariableOp&conv_lst_m2d_30/split_2/ReadVariableOp2.
conv_lst_m2d_30/whileconv_lst_m2d_30/while2L
$conv_lst_m2d_31/split/ReadVariableOp$conv_lst_m2d_31/split/ReadVariableOp2P
&conv_lst_m2d_31/split_1/ReadVariableOp&conv_lst_m2d_31/split_1/ReadVariableOp2P
&conv_lst_m2d_31/split_2/ReadVariableOp&conv_lst_m2d_31/split_2/ReadVariableOp2.
conv_lst_m2d_31/whileconv_lst_m2d_31/while2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
3__inference_conv_lstm_cell_31_layer_call_fn_2584025

inputs
states_0
states_1"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25786862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????K
"
_user_specified_name
states/1
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582080
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2581954*
condR
while_cond_2581953*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????
"
_user_specified_name
inputs/0
?
?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_2582760

inputs8
conv2d_readvariableop_resource:F-
biasadd_readvariableop_resource:F
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_52_layer_call_fn_2583793

inputs
unknown:22
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_25798042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?e
?
while_body_2582900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
??
?
"conv_lst_m2d_30_while_body_2580950<
8conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counterB
>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations%
!conv_lst_m2d_30_while_placeholder'
#conv_lst_m2d_30_while_placeholder_1'
#conv_lst_m2d_30_while_placeholder_2'
#conv_lst_m2d_30_while_placeholder_39
5conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice_0w
sconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_30_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_30_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_30_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_30_while_identity$
 conv_lst_m2d_30_while_identity_1$
 conv_lst_m2d_30_while_identity_2$
 conv_lst_m2d_30_while_identity_3$
 conv_lst_m2d_30_while_identity_4$
 conv_lst_m2d_30_while_identity_57
3conv_lst_m2d_30_while_conv_lst_m2d_30_strided_sliceu
qconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_30_while_split_readvariableop_resource:?P
5conv_lst_m2d_30_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_30_while_split_2_readvariableop_resource:	???*conv_lst_m2d_30/while/split/ReadVariableOp?,conv_lst_m2d_30/while/split_1/ReadVariableOp?,conv_lst_m2d_30/while/split_2/ReadVariableOp?
Gconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_30_while_placeholderPconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_30/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_30/while/split/split_dim?
*conv_lst_m2d_30/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_30_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_30/while/split/ReadVariableOp?
conv_lst_m2d_30/while/splitSplit.conv_lst_m2d_30/while/split/split_dim:output:02conv_lst_m2d_30/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_30/while/split?
'conv_lst_m2d_30/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_30/while/split_1/split_dim?
,conv_lst_m2d_30/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_30_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_30/while/split_1/ReadVariableOp?
conv_lst_m2d_30/while/split_1Split0conv_lst_m2d_30/while/split_1/split_dim:output:04conv_lst_m2d_30/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_30/while/split_1?
'conv_lst_m2d_30/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_30/while/split_2/split_dim?
,conv_lst_m2d_30/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_30_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_30/while/split_2/ReadVariableOp?
conv_lst_m2d_30/while/split_2Split0conv_lst_m2d_30/while/split_2/split_dim:output:04conv_lst_m2d_30/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_30/while/split_2?
!conv_lst_m2d_30/while/convolutionConv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_30/while/convolution?
conv_lst_m2d_30/while/BiasAddBiasAdd*conv_lst_m2d_30/while/convolution:output:0&conv_lst_m2d_30/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/BiasAdd?
#conv_lst_m2d_30/while/convolution_1Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_1?
conv_lst_m2d_30/while/BiasAdd_1BiasAdd,conv_lst_m2d_30/while/convolution_1:output:0&conv_lst_m2d_30/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_1?
#conv_lst_m2d_30/while/convolution_2Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_2?
conv_lst_m2d_30/while/BiasAdd_2BiasAdd,conv_lst_m2d_30/while/convolution_2:output:0&conv_lst_m2d_30/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_2?
#conv_lst_m2d_30/while/convolution_3Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_3?
conv_lst_m2d_30/while/BiasAdd_3BiasAdd,conv_lst_m2d_30/while/convolution_3:output:0&conv_lst_m2d_30/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_3?
#conv_lst_m2d_30/while/convolution_4Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_4?
#conv_lst_m2d_30/while/convolution_5Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_5?
#conv_lst_m2d_30/while/convolution_6Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_6?
#conv_lst_m2d_30/while/convolution_7Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_7?
conv_lst_m2d_30/while/addAddV2&conv_lst_m2d_30/while/BiasAdd:output:0,conv_lst_m2d_30/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add
conv_lst_m2d_30/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const?
conv_lst_m2d_30/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_1?
conv_lst_m2d_30/while/MulMulconv_lst_m2d_30/while/add:z:0$conv_lst_m2d_30/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul?
conv_lst_m2d_30/while/Add_1AddV2conv_lst_m2d_30/while/Mul:z:0&conv_lst_m2d_30/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_1?
-conv_lst_m2d_30/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_30/while/clip_by_value/Minimum/y?
+conv_lst_m2d_30/while/clip_by_value/MinimumMinimumconv_lst_m2d_30/while/Add_1:z:06conv_lst_m2d_30/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_30/while/clip_by_value/Minimum?
%conv_lst_m2d_30/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_30/while/clip_by_value/y?
#conv_lst_m2d_30/while/clip_by_valueMaximum/conv_lst_m2d_30/while/clip_by_value/Minimum:z:0.conv_lst_m2d_30/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_30/while/clip_by_value?
conv_lst_m2d_30/while/add_2AddV2(conv_lst_m2d_30/while/BiasAdd_1:output:0,conv_lst_m2d_30/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_2?
conv_lst_m2d_30/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const_2?
conv_lst_m2d_30/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_3?
conv_lst_m2d_30/while/Mul_1Mulconv_lst_m2d_30/while/add_2:z:0&conv_lst_m2d_30/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul_1?
conv_lst_m2d_30/while/Add_3AddV2conv_lst_m2d_30/while/Mul_1:z:0&conv_lst_m2d_30/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_3?
/conv_lst_m2d_30/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_30/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_30/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_30/while/Add_3:z:08conv_lst_m2d_30/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_30/while/clip_by_value_1/Minimum?
'conv_lst_m2d_30/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_30/while/clip_by_value_1/y?
%conv_lst_m2d_30/while/clip_by_value_1Maximum1conv_lst_m2d_30/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_30/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/while/clip_by_value_1?
conv_lst_m2d_30/while/mul_2Mul)conv_lst_m2d_30/while/clip_by_value_1:z:0#conv_lst_m2d_30_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_2?
conv_lst_m2d_30/while/add_4AddV2(conv_lst_m2d_30/while/BiasAdd_2:output:0,conv_lst_m2d_30/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_4?
conv_lst_m2d_30/while/ReluReluconv_lst_m2d_30/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Relu?
conv_lst_m2d_30/while/mul_3Mul'conv_lst_m2d_30/while/clip_by_value:z:0(conv_lst_m2d_30/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_3?
conv_lst_m2d_30/while/add_5AddV2conv_lst_m2d_30/while/mul_2:z:0conv_lst_m2d_30/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_5?
conv_lst_m2d_30/while/add_6AddV2(conv_lst_m2d_30/while/BiasAdd_3:output:0,conv_lst_m2d_30/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_6?
conv_lst_m2d_30/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const_4?
conv_lst_m2d_30/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_5?
conv_lst_m2d_30/while/Mul_4Mulconv_lst_m2d_30/while/add_6:z:0&conv_lst_m2d_30/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul_4?
conv_lst_m2d_30/while/Add_7AddV2conv_lst_m2d_30/while/Mul_4:z:0&conv_lst_m2d_30/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_7?
/conv_lst_m2d_30/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_30/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_30/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_30/while/Add_7:z:08conv_lst_m2d_30/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_30/while/clip_by_value_2/Minimum?
'conv_lst_m2d_30/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_30/while/clip_by_value_2/y?
%conv_lst_m2d_30/while/clip_by_value_2Maximum1conv_lst_m2d_30/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_30/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/while/clip_by_value_2?
conv_lst_m2d_30/while/Relu_1Reluconv_lst_m2d_30/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Relu_1?
conv_lst_m2d_30/while/mul_5Mul)conv_lst_m2d_30/while/clip_by_value_2:z:0*conv_lst_m2d_30/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_5?
:conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_30_while_placeholder_1!conv_lst_m2d_30_while_placeholderconv_lst_m2d_30/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_30/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_30/while/add_8/y?
conv_lst_m2d_30/while/add_8AddV2!conv_lst_m2d_30_while_placeholder&conv_lst_m2d_30/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/add_8?
conv_lst_m2d_30/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_30/while/add_9/y?
conv_lst_m2d_30/while/add_9AddV28conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counter&conv_lst_m2d_30/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/add_9?
conv_lst_m2d_30/while/IdentityIdentityconv_lst_m2d_30/while/add_9:z:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_30/while/Identity?
 conv_lst_m2d_30/while/Identity_1Identity>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_1?
 conv_lst_m2d_30/while/Identity_2Identityconv_lst_m2d_30/while/add_8:z:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_2?
 conv_lst_m2d_30/while/Identity_3IdentityJconv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_3?
 conv_lst_m2d_30/while/Identity_4Identityconv_lst_m2d_30/while/mul_5:z:0^conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_30/while/Identity_4?
 conv_lst_m2d_30/while/Identity_5Identityconv_lst_m2d_30/while/add_5:z:0^conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_30/while/Identity_5?
conv_lst_m2d_30/while/NoOpNoOp+^conv_lst_m2d_30/while/split/ReadVariableOp-^conv_lst_m2d_30/while/split_1/ReadVariableOp-^conv_lst_m2d_30/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_30/while/NoOp"l
3conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice5conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice_0"I
conv_lst_m2d_30_while_identity'conv_lst_m2d_30/while/Identity:output:0"M
 conv_lst_m2d_30_while_identity_1)conv_lst_m2d_30/while/Identity_1:output:0"M
 conv_lst_m2d_30_while_identity_2)conv_lst_m2d_30/while/Identity_2:output:0"M
 conv_lst_m2d_30_while_identity_3)conv_lst_m2d_30/while/Identity_3:output:0"M
 conv_lst_m2d_30_while_identity_4)conv_lst_m2d_30/while/Identity_4:output:0"M
 conv_lst_m2d_30_while_identity_5)conv_lst_m2d_30/while/Identity_5:output:0"p
5conv_lst_m2d_30_while_split_1_readvariableop_resource7conv_lst_m2d_30_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_30_while_split_2_readvariableop_resource7conv_lst_m2d_30_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_30_while_split_readvariableop_resource5conv_lst_m2d_30_while_split_readvariableop_resource_0"?
qconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_30/while/split/ReadVariableOp*conv_lst_m2d_30/while/split/ReadVariableOp2\
,conv_lst_m2d_30/while/split_1/ReadVariableOp,conv_lst_m2d_30/while/split_1/ReadVariableOp2\
,conv_lst_m2d_30/while/split_2/ReadVariableOp,conv_lst_m2d_30/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_2583712

inputs8
conv2d_readvariableop_resource:FK-
biasadd_readvariableop_resource:K
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????F: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs
?
?
"conv_lst_m2d_30_while_cond_2580949<
8conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counterB
>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations%
!conv_lst_m2d_30_while_placeholder'
#conv_lst_m2d_30_while_placeholder_1'
#conv_lst_m2d_30_while_placeholder_2'
#conv_lst_m2d_30_while_placeholder_3<
8conv_lst_m2d_30_while_less_conv_lst_m2d_30_strided_sliceU
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2580949___redundant_placeholder0U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2580949___redundant_placeholder1U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2580949___redundant_placeholder2U
Qconv_lst_m2d_30_while_conv_lst_m2d_30_while_cond_2580949___redundant_placeholder3"
conv_lst_m2d_30_while_identity
?
conv_lst_m2d_30/while/LessLess!conv_lst_m2d_30_while_placeholder8conv_lst_m2d_30_while_less_conv_lst_m2d_30_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/Less?
conv_lst_m2d_30/while/IdentityIdentityconv_lst_m2d_30/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_30/while/Identity"I
conv_lst_m2d_30_while_identity'conv_lst_m2d_30/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?D
?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2584008

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/1
?
?
*__inference_dense_53_layer_call_fn_2583813

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_25798212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
 __inference__traced_save_2584405
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_conv_lst_m2d_30_kernel_read_readvariableop?
;savev2_conv_lst_m2d_30_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_30_bias_read_readvariableop5
1savev2_conv_lst_m2d_31_kernel_read_readvariableop?
;savev2_conv_lst_m2d_31_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_31_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop5
1savev2_adam_dense_50_kernel_m_read_readvariableop3
/savev2_adam_dense_50_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableop5
1savev2_adam_dense_52_kernel_m_read_readvariableop3
/savev2_adam_dense_52_bias_m_read_readvariableop5
1savev2_adam_dense_53_kernel_m_read_readvariableop3
/savev2_adam_dense_53_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_30_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_30_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_30_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_31_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_31_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_31_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop5
1savev2_adam_dense_50_kernel_v_read_readvariableop3
/savev2_adam_dense_50_bias_v_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableop5
1savev2_adam_dense_52_kernel_v_read_readvariableop3
/savev2_adam_dense_52_bias_v_read_readvariableop5
1savev2_adam_dense_53_kernel_v_read_readvariableop3
/savev2_adam_dense_53_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_30_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_30_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_30_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_31_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_31_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_31_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?"
value?"B?"@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_conv_lst_m2d_30_kernel_read_readvariableop;savev2_conv_lst_m2d_30_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_30_bias_read_readvariableop1savev2_conv_lst_m2d_31_kernel_read_readvariableop;savev2_conv_lst_m2d_31_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_31_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop1savev2_adam_dense_50_kernel_m_read_readvariableop/savev2_adam_dense_50_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop1savev2_adam_dense_52_kernel_m_read_readvariableop/savev2_adam_dense_52_bias_m_read_readvariableop1savev2_adam_dense_53_kernel_m_read_readvariableop/savev2_adam_dense_53_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_30_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_30_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_30_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_31_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_31_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_31_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop1savev2_adam_dense_50_kernel_v_read_readvariableop/savev2_adam_dense_50_bias_v_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableop1savev2_adam_dense_52_kernel_v_read_readvariableop/savev2_adam_dense_52_bias_v_read_readvariableop1savev2_adam_dense_53_kernel_v_read_readvariableop/savev2_adam_dense_53_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_30_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_30_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_30_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_31_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_31_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_31_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :F:F:FK:K:	?2:2:K2:2:22:2:2:: : : : : :?:F?:?:F?:K?:?: : : : :F:F:FK:K:	?2:2:K2:2:22:2:2::?:F?:?:F?:K?:?:F:F:FK:K:	?2:2:K2:2:22:2:2::?:F?:?:F?:K?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:F: 

_output_shapes
:F:,(
&
_output_shapes
:FK: 

_output_shapes
:K:%!

_output_shapes
:	?2: 

_output_shapes
:2:$ 

_output_shapes

:K2: 

_output_shapes
:2:$	 

_output_shapes

:22: 


_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?:-)
'
_output_shapes
:F?:!

_output_shapes	
:?:-)
'
_output_shapes
:F?:-)
'
_output_shapes
:K?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:F: 

_output_shapes
:F:,(
&
_output_shapes
:FK: 

_output_shapes
:K:% !

_output_shapes
:	?2: !

_output_shapes
:2:$" 

_output_shapes

:K2: #

_output_shapes
:2:$$ 

_output_shapes

:22: %

_output_shapes
:2:$& 

_output_shapes

:2: '

_output_shapes
::-()
'
_output_shapes
:?:-))
'
_output_shapes
:F?:!*

_output_shapes	
:?:-+)
'
_output_shapes
:F?:-,)
'
_output_shapes
:K?:!-

_output_shapes	
:?:,.(
&
_output_shapes
:F: /

_output_shapes
:F:,0(
&
_output_shapes
:FK: 1

_output_shapes
:K:%2!

_output_shapes
:	?2: 3

_output_shapes
:2:$4 

_output_shapes

:K2: 5

_output_shapes
:2:$6 

_output_shapes

:22: 7

_output_shapes
:2:$8 

_output_shapes

:2: 9

_output_shapes
::-:)
'
_output_shapes
:?:-;)
'
_output_shapes
:F?:!<

_output_shapes	
:?:-=)
'
_output_shapes
:F?:->)
'
_output_shapes
:K?:!?

_output_shapes	
:?:@

_output_shapes
: 
?D
?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2578036

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????F
 
_user_specified_namestates:WS
/
_output_shapes
:?????????F
 
_user_specified_namestates
?
?
+model_15_conv_lst_m2d_30_while_cond_2577551N
Jmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_loop_counterT
Pmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_maximum_iterations.
*model_15_conv_lst_m2d_30_while_placeholder0
,model_15_conv_lst_m2d_30_while_placeholder_10
,model_15_conv_lst_m2d_30_while_placeholder_20
,model_15_conv_lst_m2d_30_while_placeholder_3N
Jmodel_15_conv_lst_m2d_30_while_less_model_15_conv_lst_m2d_30_strided_sliceg
cmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_cond_2577551___redundant_placeholder0g
cmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_cond_2577551___redundant_placeholder1g
cmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_cond_2577551___redundant_placeholder2g
cmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_cond_2577551___redundant_placeholder3+
'model_15_conv_lst_m2d_30_while_identity
?
#model_15/conv_lst_m2d_30/while/LessLess*model_15_conv_lst_m2d_30_while_placeholderJmodel_15_conv_lst_m2d_30_while_less_model_15_conv_lst_m2d_30_strided_slice*
T0*
_output_shapes
: 2%
#model_15/conv_lst_m2d_30/while/Less?
'model_15/conv_lst_m2d_30/while/IdentityIdentity'model_15/conv_lst_m2d_30/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_15/conv_lst_m2d_30/while/Identity"[
'model_15_conv_lst_m2d_30_while_identity0model_15/conv_lst_m2d_30/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
??
?
"conv_lst_m2d_31_while_body_2581659<
8conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counterB
>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations%
!conv_lst_m2d_31_while_placeholder'
#conv_lst_m2d_31_while_placeholder_1'
#conv_lst_m2d_31_while_placeholder_2'
#conv_lst_m2d_31_while_placeholder_39
5conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice_0w
sconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_31_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_31_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_31_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_31_while_identity$
 conv_lst_m2d_31_while_identity_1$
 conv_lst_m2d_31_while_identity_2$
 conv_lst_m2d_31_while_identity_3$
 conv_lst_m2d_31_while_identity_4$
 conv_lst_m2d_31_while_identity_57
3conv_lst_m2d_31_while_conv_lst_m2d_31_strided_sliceu
qconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_31_while_split_readvariableop_resource:F?P
5conv_lst_m2d_31_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_31_while_split_2_readvariableop_resource:	???*conv_lst_m2d_31/while/split/ReadVariableOp?,conv_lst_m2d_31/while/split_1/ReadVariableOp?,conv_lst_m2d_31/while/split_2/ReadVariableOp?
Gconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_31_while_placeholderPconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_31/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_31/while/split/split_dim?
*conv_lst_m2d_31/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_31_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_31/while/split/ReadVariableOp?
conv_lst_m2d_31/while/splitSplit.conv_lst_m2d_31/while/split/split_dim:output:02conv_lst_m2d_31/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_31/while/split?
'conv_lst_m2d_31/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_31/while/split_1/split_dim?
,conv_lst_m2d_31/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_31_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_31/while/split_1/ReadVariableOp?
conv_lst_m2d_31/while/split_1Split0conv_lst_m2d_31/while/split_1/split_dim:output:04conv_lst_m2d_31/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_31/while/split_1?
'conv_lst_m2d_31/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_31/while/split_2/split_dim?
,conv_lst_m2d_31/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_31_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_31/while/split_2/ReadVariableOp?
conv_lst_m2d_31/while/split_2Split0conv_lst_m2d_31/while/split_2/split_dim:output:04conv_lst_m2d_31/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_31/while/split_2?
!conv_lst_m2d_31/while/convolutionConv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_31/while/convolution?
conv_lst_m2d_31/while/BiasAddBiasAdd*conv_lst_m2d_31/while/convolution:output:0&conv_lst_m2d_31/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/BiasAdd?
#conv_lst_m2d_31/while/convolution_1Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_1?
conv_lst_m2d_31/while/BiasAdd_1BiasAdd,conv_lst_m2d_31/while/convolution_1:output:0&conv_lst_m2d_31/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_1?
#conv_lst_m2d_31/while/convolution_2Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_2?
conv_lst_m2d_31/while/BiasAdd_2BiasAdd,conv_lst_m2d_31/while/convolution_2:output:0&conv_lst_m2d_31/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_2?
#conv_lst_m2d_31/while/convolution_3Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_3?
conv_lst_m2d_31/while/BiasAdd_3BiasAdd,conv_lst_m2d_31/while/convolution_3:output:0&conv_lst_m2d_31/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_3?
#conv_lst_m2d_31/while/convolution_4Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_4?
#conv_lst_m2d_31/while/convolution_5Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_5?
#conv_lst_m2d_31/while/convolution_6Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_6?
#conv_lst_m2d_31/while/convolution_7Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_7?
conv_lst_m2d_31/while/addAddV2&conv_lst_m2d_31/while/BiasAdd:output:0,conv_lst_m2d_31/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add
conv_lst_m2d_31/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const?
conv_lst_m2d_31/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_1?
conv_lst_m2d_31/while/MulMulconv_lst_m2d_31/while/add:z:0$conv_lst_m2d_31/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul?
conv_lst_m2d_31/while/Add_1AddV2conv_lst_m2d_31/while/Mul:z:0&conv_lst_m2d_31/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_1?
-conv_lst_m2d_31/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_31/while/clip_by_value/Minimum/y?
+conv_lst_m2d_31/while/clip_by_value/MinimumMinimumconv_lst_m2d_31/while/Add_1:z:06conv_lst_m2d_31/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_31/while/clip_by_value/Minimum?
%conv_lst_m2d_31/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_31/while/clip_by_value/y?
#conv_lst_m2d_31/while/clip_by_valueMaximum/conv_lst_m2d_31/while/clip_by_value/Minimum:z:0.conv_lst_m2d_31/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_31/while/clip_by_value?
conv_lst_m2d_31/while/add_2AddV2(conv_lst_m2d_31/while/BiasAdd_1:output:0,conv_lst_m2d_31/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_2?
conv_lst_m2d_31/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const_2?
conv_lst_m2d_31/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_3?
conv_lst_m2d_31/while/Mul_1Mulconv_lst_m2d_31/while/add_2:z:0&conv_lst_m2d_31/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul_1?
conv_lst_m2d_31/while/Add_3AddV2conv_lst_m2d_31/while/Mul_1:z:0&conv_lst_m2d_31/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_3?
/conv_lst_m2d_31/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_31/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_31/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_31/while/Add_3:z:08conv_lst_m2d_31/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_31/while/clip_by_value_1/Minimum?
'conv_lst_m2d_31/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_31/while/clip_by_value_1/y?
%conv_lst_m2d_31/while/clip_by_value_1Maximum1conv_lst_m2d_31/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_31/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/while/clip_by_value_1?
conv_lst_m2d_31/while/mul_2Mul)conv_lst_m2d_31/while/clip_by_value_1:z:0#conv_lst_m2d_31_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_2?
conv_lst_m2d_31/while/add_4AddV2(conv_lst_m2d_31/while/BiasAdd_2:output:0,conv_lst_m2d_31/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_4?
conv_lst_m2d_31/while/ReluReluconv_lst_m2d_31/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Relu?
conv_lst_m2d_31/while/mul_3Mul'conv_lst_m2d_31/while/clip_by_value:z:0(conv_lst_m2d_31/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_3?
conv_lst_m2d_31/while/add_5AddV2conv_lst_m2d_31/while/mul_2:z:0conv_lst_m2d_31/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_5?
conv_lst_m2d_31/while/add_6AddV2(conv_lst_m2d_31/while/BiasAdd_3:output:0,conv_lst_m2d_31/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_6?
conv_lst_m2d_31/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const_4?
conv_lst_m2d_31/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_5?
conv_lst_m2d_31/while/Mul_4Mulconv_lst_m2d_31/while/add_6:z:0&conv_lst_m2d_31/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul_4?
conv_lst_m2d_31/while/Add_7AddV2conv_lst_m2d_31/while/Mul_4:z:0&conv_lst_m2d_31/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_7?
/conv_lst_m2d_31/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_31/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_31/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_31/while/Add_7:z:08conv_lst_m2d_31/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_31/while/clip_by_value_2/Minimum?
'conv_lst_m2d_31/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_31/while/clip_by_value_2/y?
%conv_lst_m2d_31/while/clip_by_value_2Maximum1conv_lst_m2d_31/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_31/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/while/clip_by_value_2?
conv_lst_m2d_31/while/Relu_1Reluconv_lst_m2d_31/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Relu_1?
conv_lst_m2d_31/while/mul_5Mul)conv_lst_m2d_31/while/clip_by_value_2:z:0*conv_lst_m2d_31/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_5?
:conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_31_while_placeholder_1!conv_lst_m2d_31_while_placeholderconv_lst_m2d_31/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_31/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_31/while/add_8/y?
conv_lst_m2d_31/while/add_8AddV2!conv_lst_m2d_31_while_placeholder&conv_lst_m2d_31/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/add_8?
conv_lst_m2d_31/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_31/while/add_9/y?
conv_lst_m2d_31/while/add_9AddV28conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counter&conv_lst_m2d_31/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/add_9?
conv_lst_m2d_31/while/IdentityIdentityconv_lst_m2d_31/while/add_9:z:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_31/while/Identity?
 conv_lst_m2d_31/while/Identity_1Identity>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_1?
 conv_lst_m2d_31/while/Identity_2Identityconv_lst_m2d_31/while/add_8:z:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_2?
 conv_lst_m2d_31/while/Identity_3IdentityJconv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_3?
 conv_lst_m2d_31/while/Identity_4Identityconv_lst_m2d_31/while/mul_5:z:0^conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_31/while/Identity_4?
 conv_lst_m2d_31/while/Identity_5Identityconv_lst_m2d_31/while/add_5:z:0^conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_31/while/Identity_5?
conv_lst_m2d_31/while/NoOpNoOp+^conv_lst_m2d_31/while/split/ReadVariableOp-^conv_lst_m2d_31/while/split_1/ReadVariableOp-^conv_lst_m2d_31/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_31/while/NoOp"l
3conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice5conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice_0"I
conv_lst_m2d_31_while_identity'conv_lst_m2d_31/while/Identity:output:0"M
 conv_lst_m2d_31_while_identity_1)conv_lst_m2d_31/while/Identity_1:output:0"M
 conv_lst_m2d_31_while_identity_2)conv_lst_m2d_31/while/Identity_2:output:0"M
 conv_lst_m2d_31_while_identity_3)conv_lst_m2d_31/while/Identity_3:output:0"M
 conv_lst_m2d_31_while_identity_4)conv_lst_m2d_31/while/Identity_4:output:0"M
 conv_lst_m2d_31_while_identity_5)conv_lst_m2d_31/while/Identity_5:output:0"p
5conv_lst_m2d_31_while_split_1_readvariableop_resource7conv_lst_m2d_31_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_31_while_split_2_readvariableop_resource7conv_lst_m2d_31_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_31_while_split_readvariableop_resource5conv_lst_m2d_31_while_split_readvariableop_resource_0"?
qconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_31/while/split/ReadVariableOp*conv_lst_m2d_31/while/split/ReadVariableOp2\
,conv_lst_m2d_31/while/split_1/ReadVariableOp,conv_lst_m2d_31/while/split_1/ReadVariableOp2\
,conv_lst_m2d_31/while/split_2/ReadVariableOp,conv_lst_m2d_31/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?p
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2580161

inputs8
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2580035*
condR
while_cond_2580034*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?
?
while_cond_2579356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2579356___redundant_placeholder05
1while_while_cond_2579356___redundant_placeholder15
1while_while_cond_2579356___redundant_placeholder25
1while_while_cond_2579356___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
??
?
"conv_lst_m2d_31_while_body_2581175<
8conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counterB
>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations%
!conv_lst_m2d_31_while_placeholder'
#conv_lst_m2d_31_while_placeholder_1'
#conv_lst_m2d_31_while_placeholder_2'
#conv_lst_m2d_31_while_placeholder_39
5conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice_0w
sconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_31_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_31_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_31_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_31_while_identity$
 conv_lst_m2d_31_while_identity_1$
 conv_lst_m2d_31_while_identity_2$
 conv_lst_m2d_31_while_identity_3$
 conv_lst_m2d_31_while_identity_4$
 conv_lst_m2d_31_while_identity_57
3conv_lst_m2d_31_while_conv_lst_m2d_31_strided_sliceu
qconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_31_while_split_readvariableop_resource:F?P
5conv_lst_m2d_31_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_31_while_split_2_readvariableop_resource:	???*conv_lst_m2d_31/while/split/ReadVariableOp?,conv_lst_m2d_31/while/split_1/ReadVariableOp?,conv_lst_m2d_31/while/split_2/ReadVariableOp?
Gconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_31_while_placeholderPconv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_31/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_31/while/split/split_dim?
*conv_lst_m2d_31/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_31_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_31/while/split/ReadVariableOp?
conv_lst_m2d_31/while/splitSplit.conv_lst_m2d_31/while/split/split_dim:output:02conv_lst_m2d_31/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_31/while/split?
'conv_lst_m2d_31/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_31/while/split_1/split_dim?
,conv_lst_m2d_31/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_31_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_31/while/split_1/ReadVariableOp?
conv_lst_m2d_31/while/split_1Split0conv_lst_m2d_31/while/split_1/split_dim:output:04conv_lst_m2d_31/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_31/while/split_1?
'conv_lst_m2d_31/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_31/while/split_2/split_dim?
,conv_lst_m2d_31/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_31_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_31/while/split_2/ReadVariableOp?
conv_lst_m2d_31/while/split_2Split0conv_lst_m2d_31/while/split_2/split_dim:output:04conv_lst_m2d_31/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_31/while/split_2?
!conv_lst_m2d_31/while/convolutionConv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_31/while/convolution?
conv_lst_m2d_31/while/BiasAddBiasAdd*conv_lst_m2d_31/while/convolution:output:0&conv_lst_m2d_31/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/BiasAdd?
#conv_lst_m2d_31/while/convolution_1Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_1?
conv_lst_m2d_31/while/BiasAdd_1BiasAdd,conv_lst_m2d_31/while/convolution_1:output:0&conv_lst_m2d_31/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_1?
#conv_lst_m2d_31/while/convolution_2Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_2?
conv_lst_m2d_31/while/BiasAdd_2BiasAdd,conv_lst_m2d_31/while/convolution_2:output:0&conv_lst_m2d_31/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_2?
#conv_lst_m2d_31/while/convolution_3Conv2D@conv_lst_m2d_31/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_31/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_31/while/convolution_3?
conv_lst_m2d_31/while/BiasAdd_3BiasAdd,conv_lst_m2d_31/while/convolution_3:output:0&conv_lst_m2d_31/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_31/while/BiasAdd_3?
#conv_lst_m2d_31/while/convolution_4Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_4?
#conv_lst_m2d_31/while/convolution_5Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_5?
#conv_lst_m2d_31/while/convolution_6Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_6?
#conv_lst_m2d_31/while/convolution_7Conv2D#conv_lst_m2d_31_while_placeholder_2&conv_lst_m2d_31/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_31/while/convolution_7?
conv_lst_m2d_31/while/addAddV2&conv_lst_m2d_31/while/BiasAdd:output:0,conv_lst_m2d_31/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add
conv_lst_m2d_31/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const?
conv_lst_m2d_31/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_1?
conv_lst_m2d_31/while/MulMulconv_lst_m2d_31/while/add:z:0$conv_lst_m2d_31/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul?
conv_lst_m2d_31/while/Add_1AddV2conv_lst_m2d_31/while/Mul:z:0&conv_lst_m2d_31/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_1?
-conv_lst_m2d_31/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_31/while/clip_by_value/Minimum/y?
+conv_lst_m2d_31/while/clip_by_value/MinimumMinimumconv_lst_m2d_31/while/Add_1:z:06conv_lst_m2d_31/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_31/while/clip_by_value/Minimum?
%conv_lst_m2d_31/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_31/while/clip_by_value/y?
#conv_lst_m2d_31/while/clip_by_valueMaximum/conv_lst_m2d_31/while/clip_by_value/Minimum:z:0.conv_lst_m2d_31/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_31/while/clip_by_value?
conv_lst_m2d_31/while/add_2AddV2(conv_lst_m2d_31/while/BiasAdd_1:output:0,conv_lst_m2d_31/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_2?
conv_lst_m2d_31/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const_2?
conv_lst_m2d_31/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_3?
conv_lst_m2d_31/while/Mul_1Mulconv_lst_m2d_31/while/add_2:z:0&conv_lst_m2d_31/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul_1?
conv_lst_m2d_31/while/Add_3AddV2conv_lst_m2d_31/while/Mul_1:z:0&conv_lst_m2d_31/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_3?
/conv_lst_m2d_31/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_31/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_31/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_31/while/Add_3:z:08conv_lst_m2d_31/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_31/while/clip_by_value_1/Minimum?
'conv_lst_m2d_31/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_31/while/clip_by_value_1/y?
%conv_lst_m2d_31/while/clip_by_value_1Maximum1conv_lst_m2d_31/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_31/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/while/clip_by_value_1?
conv_lst_m2d_31/while/mul_2Mul)conv_lst_m2d_31/while/clip_by_value_1:z:0#conv_lst_m2d_31_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_2?
conv_lst_m2d_31/while/add_4AddV2(conv_lst_m2d_31/while/BiasAdd_2:output:0,conv_lst_m2d_31/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_4?
conv_lst_m2d_31/while/ReluReluconv_lst_m2d_31/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Relu?
conv_lst_m2d_31/while/mul_3Mul'conv_lst_m2d_31/while/clip_by_value:z:0(conv_lst_m2d_31/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_3?
conv_lst_m2d_31/while/add_5AddV2conv_lst_m2d_31/while/mul_2:z:0conv_lst_m2d_31/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_5?
conv_lst_m2d_31/while/add_6AddV2(conv_lst_m2d_31/while/BiasAdd_3:output:0,conv_lst_m2d_31/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/add_6?
conv_lst_m2d_31/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_31/while/Const_4?
conv_lst_m2d_31/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_31/while/Const_5?
conv_lst_m2d_31/while/Mul_4Mulconv_lst_m2d_31/while/add_6:z:0&conv_lst_m2d_31/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Mul_4?
conv_lst_m2d_31/while/Add_7AddV2conv_lst_m2d_31/while/Mul_4:z:0&conv_lst_m2d_31/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Add_7?
/conv_lst_m2d_31/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_31/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_31/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_31/while/Add_7:z:08conv_lst_m2d_31/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_31/while/clip_by_value_2/Minimum?
'conv_lst_m2d_31/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_31/while/clip_by_value_2/y?
%conv_lst_m2d_31/while/clip_by_value_2Maximum1conv_lst_m2d_31/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_31/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_31/while/clip_by_value_2?
conv_lst_m2d_31/while/Relu_1Reluconv_lst_m2d_31/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/Relu_1?
conv_lst_m2d_31/while/mul_5Mul)conv_lst_m2d_31/while/clip_by_value_2:z:0*conv_lst_m2d_31/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_31/while/mul_5?
:conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_31_while_placeholder_1!conv_lst_m2d_31_while_placeholderconv_lst_m2d_31/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_31/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_31/while/add_8/y?
conv_lst_m2d_31/while/add_8AddV2!conv_lst_m2d_31_while_placeholder&conv_lst_m2d_31/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/add_8?
conv_lst_m2d_31/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_31/while/add_9/y?
conv_lst_m2d_31/while/add_9AddV28conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counter&conv_lst_m2d_31/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/add_9?
conv_lst_m2d_31/while/IdentityIdentityconv_lst_m2d_31/while/add_9:z:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_31/while/Identity?
 conv_lst_m2d_31/while/Identity_1Identity>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_1?
 conv_lst_m2d_31/while/Identity_2Identityconv_lst_m2d_31/while/add_8:z:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_2?
 conv_lst_m2d_31/while/Identity_3IdentityJconv_lst_m2d_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_31/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_31/while/Identity_3?
 conv_lst_m2d_31/while/Identity_4Identityconv_lst_m2d_31/while/mul_5:z:0^conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_31/while/Identity_4?
 conv_lst_m2d_31/while/Identity_5Identityconv_lst_m2d_31/while/add_5:z:0^conv_lst_m2d_31/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_31/while/Identity_5?
conv_lst_m2d_31/while/NoOpNoOp+^conv_lst_m2d_31/while/split/ReadVariableOp-^conv_lst_m2d_31/while/split_1/ReadVariableOp-^conv_lst_m2d_31/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_31/while/NoOp"l
3conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice5conv_lst_m2d_31_while_conv_lst_m2d_31_strided_slice_0"I
conv_lst_m2d_31_while_identity'conv_lst_m2d_31/while/Identity:output:0"M
 conv_lst_m2d_31_while_identity_1)conv_lst_m2d_31/while/Identity_1:output:0"M
 conv_lst_m2d_31_while_identity_2)conv_lst_m2d_31/while/Identity_2:output:0"M
 conv_lst_m2d_31_while_identity_3)conv_lst_m2d_31/while/Identity_3:output:0"M
 conv_lst_m2d_31_while_identity_4)conv_lst_m2d_31/while/Identity_4:output:0"M
 conv_lst_m2d_31_while_identity_5)conv_lst_m2d_31/while/Identity_5:output:0"p
5conv_lst_m2d_31_while_split_1_readvariableop_resource7conv_lst_m2d_31_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_31_while_split_2_readvariableop_resource7conv_lst_m2d_31_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_31_while_split_readvariableop_resource5conv_lst_m2d_31_while_split_readvariableop_resource_0"?
qconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_31_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_31/while/split/ReadVariableOp*conv_lst_m2d_31/while/split/ReadVariableOp2\
,conv_lst_m2d_31/while/split_1/ReadVariableOp,conv_lst_m2d_31/while/split_1/ReadVariableOp2\
,conv_lst_m2d_31/while/split_2/ReadVariableOp,conv_lst_m2d_31/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
??
?
"__inference__wrapped_model_2577934
conv_lst_m2d_30_input
conv2d_10_inputK
1model_15_conv2d_10_conv2d_readvariableop_resource:F@
2model_15_conv2d_10_biasadd_readvariableop_resource:FQ
6model_15_conv_lst_m2d_30_split_readvariableop_resource:?S
8model_15_conv_lst_m2d_30_split_1_readvariableop_resource:F?G
8model_15_conv_lst_m2d_30_split_2_readvariableop_resource:	?K
1model_15_conv2d_11_conv2d_readvariableop_resource:FK@
2model_15_conv2d_11_biasadd_readvariableop_resource:KQ
6model_15_conv_lst_m2d_31_split_readvariableop_resource:F?S
8model_15_conv_lst_m2d_31_split_1_readvariableop_resource:K?G
8model_15_conv_lst_m2d_31_split_2_readvariableop_resource:	?C
0model_15_dense_50_matmul_readvariableop_resource:	?2?
1model_15_dense_50_biasadd_readvariableop_resource:2B
0model_15_dense_51_matmul_readvariableop_resource:K2?
1model_15_dense_51_biasadd_readvariableop_resource:2B
0model_15_dense_52_matmul_readvariableop_resource:22?
1model_15_dense_52_biasadd_readvariableop_resource:2B
0model_15_dense_53_matmul_readvariableop_resource:2?
1model_15_dense_53_biasadd_readvariableop_resource:
identity??)model_15/conv2d_10/BiasAdd/ReadVariableOp?(model_15/conv2d_10/Conv2D/ReadVariableOp?)model_15/conv2d_11/BiasAdd/ReadVariableOp?(model_15/conv2d_11/Conv2D/ReadVariableOp?-model_15/conv_lst_m2d_30/split/ReadVariableOp?/model_15/conv_lst_m2d_30/split_1/ReadVariableOp?/model_15/conv_lst_m2d_30/split_2/ReadVariableOp?model_15/conv_lst_m2d_30/while?-model_15/conv_lst_m2d_31/split/ReadVariableOp?/model_15/conv_lst_m2d_31/split_1/ReadVariableOp?/model_15/conv_lst_m2d_31/split_2/ReadVariableOp?model_15/conv_lst_m2d_31/while?(model_15/dense_50/BiasAdd/ReadVariableOp?'model_15/dense_50/MatMul/ReadVariableOp?(model_15/dense_51/BiasAdd/ReadVariableOp?'model_15/dense_51/MatMul/ReadVariableOp?(model_15/dense_52/BiasAdd/ReadVariableOp?'model_15/dense_52/MatMul/ReadVariableOp?(model_15/dense_53/BiasAdd/ReadVariableOp?'model_15/dense_53/MatMul/ReadVariableOp?
(model_15/conv2d_10/Conv2D/ReadVariableOpReadVariableOp1model_15_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02*
(model_15/conv2d_10/Conv2D/ReadVariableOp?
model_15/conv2d_10/Conv2DConv2Dconv2d_10_input0model_15/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
model_15/conv2d_10/Conv2D?
)model_15/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp2model_15_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02+
)model_15/conv2d_10/BiasAdd/ReadVariableOp?
model_15/conv2d_10/BiasAddBiasAdd"model_15/conv2d_10/Conv2D:output:01model_15/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
model_15/conv2d_10/BiasAdd?
model_15/conv2d_10/ReluRelu#model_15/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
model_15/conv2d_10/Relu?
#model_15/conv_lst_m2d_30/zeros_like	ZerosLikeconv_lst_m2d_30_input*
T0*3
_output_shapes!
:?????????2%
#model_15/conv_lst_m2d_30/zeros_like?
.model_15/conv_lst_m2d_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_15/conv_lst_m2d_30/Sum/reduction_indices?
model_15/conv_lst_m2d_30/SumSum'model_15/conv_lst_m2d_30/zeros_like:y:07model_15/conv_lst_m2d_30/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
model_15/conv_lst_m2d_30/Sum?
model_15/conv_lst_m2d_30/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2 
model_15/conv_lst_m2d_30/zeros?
$model_15/conv_lst_m2d_30/convolutionConv2D%model_15/conv_lst_m2d_30/Sum:output:0'model_15/conv_lst_m2d_30/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2&
$model_15/conv_lst_m2d_30/convolution?
'model_15/conv_lst_m2d_30/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_15/conv_lst_m2d_30/transpose/perm?
"model_15/conv_lst_m2d_30/transpose	Transposeconv_lst_m2d_30_input0model_15/conv_lst_m2d_30/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2$
"model_15/conv_lst_m2d_30/transpose?
model_15/conv_lst_m2d_30/ShapeShape&model_15/conv_lst_m2d_30/transpose:y:0*
T0*
_output_shapes
:2 
model_15/conv_lst_m2d_30/Shape?
,model_15/conv_lst_m2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/conv_lst_m2d_30/strided_slice/stack?
.model_15/conv_lst_m2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_15/conv_lst_m2d_30/strided_slice/stack_1?
.model_15/conv_lst_m2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_15/conv_lst_m2d_30/strided_slice/stack_2?
&model_15/conv_lst_m2d_30/strided_sliceStridedSlice'model_15/conv_lst_m2d_30/Shape:output:05model_15/conv_lst_m2d_30/strided_slice/stack:output:07model_15/conv_lst_m2d_30/strided_slice/stack_1:output:07model_15/conv_lst_m2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_15/conv_lst_m2d_30/strided_slice?
4model_15/conv_lst_m2d_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_15/conv_lst_m2d_30/TensorArrayV2/element_shape?
&model_15/conv_lst_m2d_30/TensorArrayV2TensorListReserve=model_15/conv_lst_m2d_30/TensorArrayV2/element_shape:output:0/model_15/conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_15/conv_lst_m2d_30/TensorArrayV2?
Nmodel_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2P
Nmodel_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_15/conv_lst_m2d_30/transpose:y:0Wmodel_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor?
.model_15/conv_lst_m2d_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_15/conv_lst_m2d_30/strided_slice_1/stack?
0model_15/conv_lst_m2d_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_30/strided_slice_1/stack_1?
0model_15/conv_lst_m2d_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_30/strided_slice_1/stack_2?
(model_15/conv_lst_m2d_30/strided_slice_1StridedSlice&model_15/conv_lst_m2d_30/transpose:y:07model_15/conv_lst_m2d_30/strided_slice_1/stack:output:09model_15/conv_lst_m2d_30/strided_slice_1/stack_1:output:09model_15/conv_lst_m2d_30/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2*
(model_15/conv_lst_m2d_30/strided_slice_1?
(model_15/conv_lst_m2d_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_15/conv_lst_m2d_30/split/split_dim?
-model_15/conv_lst_m2d_30/split/ReadVariableOpReadVariableOp6model_15_conv_lst_m2d_30_split_readvariableop_resource*'
_output_shapes
:?*
dtype02/
-model_15/conv_lst_m2d_30/split/ReadVariableOp?
model_15/conv_lst_m2d_30/splitSplit1model_15/conv_lst_m2d_30/split/split_dim:output:05model_15/conv_lst_m2d_30/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2 
model_15/conv_lst_m2d_30/split?
*model_15/conv_lst_m2d_30/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_15/conv_lst_m2d_30/split_1/split_dim?
/model_15/conv_lst_m2d_30/split_1/ReadVariableOpReadVariableOp8model_15_conv_lst_m2d_30_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype021
/model_15/conv_lst_m2d_30/split_1/ReadVariableOp?
 model_15/conv_lst_m2d_30/split_1Split3model_15/conv_lst_m2d_30/split_1/split_dim:output:07model_15/conv_lst_m2d_30/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2"
 model_15/conv_lst_m2d_30/split_1?
*model_15/conv_lst_m2d_30/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_15/conv_lst_m2d_30/split_2/split_dim?
/model_15/conv_lst_m2d_30/split_2/ReadVariableOpReadVariableOp8model_15_conv_lst_m2d_30_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_15/conv_lst_m2d_30/split_2/ReadVariableOp?
 model_15/conv_lst_m2d_30/split_2Split3model_15/conv_lst_m2d_30/split_2/split_dim:output:07model_15/conv_lst_m2d_30/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2"
 model_15/conv_lst_m2d_30/split_2?
&model_15/conv_lst_m2d_30/convolution_1Conv2D1model_15/conv_lst_m2d_30/strided_slice_1:output:0'model_15/conv_lst_m2d_30/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_30/convolution_1?
 model_15/conv_lst_m2d_30/BiasAddBiasAdd/model_15/conv_lst_m2d_30/convolution_1:output:0)model_15/conv_lst_m2d_30/split_2:output:0*
T0*/
_output_shapes
:?????????F2"
 model_15/conv_lst_m2d_30/BiasAdd?
&model_15/conv_lst_m2d_30/convolution_2Conv2D1model_15/conv_lst_m2d_30/strided_slice_1:output:0'model_15/conv_lst_m2d_30/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_30/convolution_2?
"model_15/conv_lst_m2d_30/BiasAdd_1BiasAdd/model_15/conv_lst_m2d_30/convolution_2:output:0)model_15/conv_lst_m2d_30/split_2:output:1*
T0*/
_output_shapes
:?????????F2$
"model_15/conv_lst_m2d_30/BiasAdd_1?
&model_15/conv_lst_m2d_30/convolution_3Conv2D1model_15/conv_lst_m2d_30/strided_slice_1:output:0'model_15/conv_lst_m2d_30/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_30/convolution_3?
"model_15/conv_lst_m2d_30/BiasAdd_2BiasAdd/model_15/conv_lst_m2d_30/convolution_3:output:0)model_15/conv_lst_m2d_30/split_2:output:2*
T0*/
_output_shapes
:?????????F2$
"model_15/conv_lst_m2d_30/BiasAdd_2?
&model_15/conv_lst_m2d_30/convolution_4Conv2D1model_15/conv_lst_m2d_30/strided_slice_1:output:0'model_15/conv_lst_m2d_30/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_30/convolution_4?
"model_15/conv_lst_m2d_30/BiasAdd_3BiasAdd/model_15/conv_lst_m2d_30/convolution_4:output:0)model_15/conv_lst_m2d_30/split_2:output:3*
T0*/
_output_shapes
:?????????F2$
"model_15/conv_lst_m2d_30/BiasAdd_3?
&model_15/conv_lst_m2d_30/convolution_5Conv2D-model_15/conv_lst_m2d_30/convolution:output:0)model_15/conv_lst_m2d_30/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_30/convolution_5?
&model_15/conv_lst_m2d_30/convolution_6Conv2D-model_15/conv_lst_m2d_30/convolution:output:0)model_15/conv_lst_m2d_30/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_30/convolution_6?
&model_15/conv_lst_m2d_30/convolution_7Conv2D-model_15/conv_lst_m2d_30/convolution:output:0)model_15/conv_lst_m2d_30/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_30/convolution_7?
&model_15/conv_lst_m2d_30/convolution_8Conv2D-model_15/conv_lst_m2d_30/convolution:output:0)model_15/conv_lst_m2d_30/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_30/convolution_8?
model_15/conv_lst_m2d_30/addAddV2)model_15/conv_lst_m2d_30/BiasAdd:output:0/model_15/conv_lst_m2d_30/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
model_15/conv_lst_m2d_30/add?
model_15/conv_lst_m2d_30/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_15/conv_lst_m2d_30/Const?
 model_15/conv_lst_m2d_30/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_30/Const_1?
model_15/conv_lst_m2d_30/MulMul model_15/conv_lst_m2d_30/add:z:0'model_15/conv_lst_m2d_30/Const:output:0*
T0*/
_output_shapes
:?????????F2
model_15/conv_lst_m2d_30/Mul?
model_15/conv_lst_m2d_30/Add_1AddV2 model_15/conv_lst_m2d_30/Mul:z:0)model_15/conv_lst_m2d_30/Const_1:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/Add_1?
0model_15/conv_lst_m2d_30/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_15/conv_lst_m2d_30/clip_by_value/Minimum/y?
.model_15/conv_lst_m2d_30/clip_by_value/MinimumMinimum"model_15/conv_lst_m2d_30/Add_1:z:09model_15/conv_lst_m2d_30/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_15/conv_lst_m2d_30/clip_by_value/Minimum?
(model_15/conv_lst_m2d_30/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_15/conv_lst_m2d_30/clip_by_value/y?
&model_15/conv_lst_m2d_30/clip_by_valueMaximum2model_15/conv_lst_m2d_30/clip_by_value/Minimum:z:01model_15/conv_lst_m2d_30/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2(
&model_15/conv_lst_m2d_30/clip_by_value?
model_15/conv_lst_m2d_30/add_2AddV2+model_15/conv_lst_m2d_30/BiasAdd_1:output:0/model_15/conv_lst_m2d_30/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/add_2?
 model_15/conv_lst_m2d_30/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_15/conv_lst_m2d_30/Const_2?
 model_15/conv_lst_m2d_30/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_30/Const_3?
model_15/conv_lst_m2d_30/Mul_1Mul"model_15/conv_lst_m2d_30/add_2:z:0)model_15/conv_lst_m2d_30/Const_2:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/Mul_1?
model_15/conv_lst_m2d_30/Add_3AddV2"model_15/conv_lst_m2d_30/Mul_1:z:0)model_15/conv_lst_m2d_30/Const_3:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/Add_3?
2model_15/conv_lst_m2d_30/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_15/conv_lst_m2d_30/clip_by_value_1/Minimum/y?
0model_15/conv_lst_m2d_30/clip_by_value_1/MinimumMinimum"model_15/conv_lst_m2d_30/Add_3:z:0;model_15/conv_lst_m2d_30/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_15/conv_lst_m2d_30/clip_by_value_1/Minimum?
*model_15/conv_lst_m2d_30/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_15/conv_lst_m2d_30/clip_by_value_1/y?
(model_15/conv_lst_m2d_30/clip_by_value_1Maximum4model_15/conv_lst_m2d_30/clip_by_value_1/Minimum:z:03model_15/conv_lst_m2d_30/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_15/conv_lst_m2d_30/clip_by_value_1?
model_15/conv_lst_m2d_30/mul_2Mul,model_15/conv_lst_m2d_30/clip_by_value_1:z:0-model_15/conv_lst_m2d_30/convolution:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/mul_2?
model_15/conv_lst_m2d_30/add_4AddV2+model_15/conv_lst_m2d_30/BiasAdd_2:output:0/model_15/conv_lst_m2d_30/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/add_4?
model_15/conv_lst_m2d_30/ReluRelu"model_15/conv_lst_m2d_30/add_4:z:0*
T0*/
_output_shapes
:?????????F2
model_15/conv_lst_m2d_30/Relu?
model_15/conv_lst_m2d_30/mul_3Mul*model_15/conv_lst_m2d_30/clip_by_value:z:0+model_15/conv_lst_m2d_30/Relu:activations:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/mul_3?
model_15/conv_lst_m2d_30/add_5AddV2"model_15/conv_lst_m2d_30/mul_2:z:0"model_15/conv_lst_m2d_30/mul_3:z:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/add_5?
model_15/conv_lst_m2d_30/add_6AddV2+model_15/conv_lst_m2d_30/BiasAdd_3:output:0/model_15/conv_lst_m2d_30/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/add_6?
 model_15/conv_lst_m2d_30/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_15/conv_lst_m2d_30/Const_4?
 model_15/conv_lst_m2d_30/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_30/Const_5?
model_15/conv_lst_m2d_30/Mul_4Mul"model_15/conv_lst_m2d_30/add_6:z:0)model_15/conv_lst_m2d_30/Const_4:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/Mul_4?
model_15/conv_lst_m2d_30/Add_7AddV2"model_15/conv_lst_m2d_30/Mul_4:z:0)model_15/conv_lst_m2d_30/Const_5:output:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/Add_7?
2model_15/conv_lst_m2d_30/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_15/conv_lst_m2d_30/clip_by_value_2/Minimum/y?
0model_15/conv_lst_m2d_30/clip_by_value_2/MinimumMinimum"model_15/conv_lst_m2d_30/Add_7:z:0;model_15/conv_lst_m2d_30/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_15/conv_lst_m2d_30/clip_by_value_2/Minimum?
*model_15/conv_lst_m2d_30/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_15/conv_lst_m2d_30/clip_by_value_2/y?
(model_15/conv_lst_m2d_30/clip_by_value_2Maximum4model_15/conv_lst_m2d_30/clip_by_value_2/Minimum:z:03model_15/conv_lst_m2d_30/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_15/conv_lst_m2d_30/clip_by_value_2?
model_15/conv_lst_m2d_30/Relu_1Relu"model_15/conv_lst_m2d_30/add_5:z:0*
T0*/
_output_shapes
:?????????F2!
model_15/conv_lst_m2d_30/Relu_1?
model_15/conv_lst_m2d_30/mul_5Mul,model_15/conv_lst_m2d_30/clip_by_value_2:z:0-model_15/conv_lst_m2d_30/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2 
model_15/conv_lst_m2d_30/mul_5?
6model_15/conv_lst_m2d_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   28
6model_15/conv_lst_m2d_30/TensorArrayV2_1/element_shape?
(model_15/conv_lst_m2d_30/TensorArrayV2_1TensorListReserve?model_15/conv_lst_m2d_30/TensorArrayV2_1/element_shape:output:0/model_15/conv_lst_m2d_30/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_15/conv_lst_m2d_30/TensorArrayV2_1?
model_15/conv_lst_m2d_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_15/conv_lst_m2d_30/time?
1model_15/conv_lst_m2d_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_15/conv_lst_m2d_30/while/maximum_iterations?
+model_15/conv_lst_m2d_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_15/conv_lst_m2d_30/while/loop_counter?	
model_15/conv_lst_m2d_30/whileWhile4model_15/conv_lst_m2d_30/while/loop_counter:output:0:model_15/conv_lst_m2d_30/while/maximum_iterations:output:0&model_15/conv_lst_m2d_30/time:output:01model_15/conv_lst_m2d_30/TensorArrayV2_1:handle:0-model_15/conv_lst_m2d_30/convolution:output:0-model_15/conv_lst_m2d_30/convolution:output:0/model_15/conv_lst_m2d_30/strided_slice:output:0Pmodel_15/conv_lst_m2d_30/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_15_conv_lst_m2d_30_split_readvariableop_resource8model_15_conv_lst_m2d_30_split_1_readvariableop_resource8model_15_conv_lst_m2d_30_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+model_15_conv_lst_m2d_30_while_body_2577552*7
cond/R-
+model_15_conv_lst_m2d_30_while_cond_2577551*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2 
model_15/conv_lst_m2d_30/while?
Imodel_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2K
Imodel_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape?
;model_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStackTensorListStack'model_15/conv_lst_m2d_30/while:output:3Rmodel_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02=
;model_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack?
.model_15/conv_lst_m2d_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_15/conv_lst_m2d_30/strided_slice_2/stack?
0model_15/conv_lst_m2d_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_15/conv_lst_m2d_30/strided_slice_2/stack_1?
0model_15/conv_lst_m2d_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_30/strided_slice_2/stack_2?
(model_15/conv_lst_m2d_30/strided_slice_2StridedSliceDmodel_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:07model_15/conv_lst_m2d_30/strided_slice_2/stack:output:09model_15/conv_lst_m2d_30/strided_slice_2/stack_1:output:09model_15/conv_lst_m2d_30/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_15/conv_lst_m2d_30/strided_slice_2?
)model_15/conv_lst_m2d_30/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_15/conv_lst_m2d_30/transpose_1/perm?
$model_15/conv_lst_m2d_30/transpose_1	TransposeDmodel_15/conv_lst_m2d_30/TensorArrayV2Stack/TensorListStack:tensor:02model_15/conv_lst_m2d_30/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2&
$model_15/conv_lst_m2d_30/transpose_1?
(model_15/conv2d_11/Conv2D/ReadVariableOpReadVariableOp1model_15_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02*
(model_15/conv2d_11/Conv2D/ReadVariableOp?
model_15/conv2d_11/Conv2DConv2D%model_15/conv2d_10/Relu:activations:00model_15/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
model_15/conv2d_11/Conv2D?
)model_15/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp2model_15_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02+
)model_15/conv2d_11/BiasAdd/ReadVariableOp?
model_15/conv2d_11/BiasAddBiasAdd"model_15/conv2d_11/Conv2D:output:01model_15/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
model_15/conv2d_11/BiasAdd?
model_15/conv2d_11/ReluRelu#model_15/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
model_15/conv2d_11/Relu?
#model_15/conv_lst_m2d_31/zeros_like	ZerosLike(model_15/conv_lst_m2d_30/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2%
#model_15/conv_lst_m2d_31/zeros_like?
.model_15/conv_lst_m2d_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_15/conv_lst_m2d_31/Sum/reduction_indices?
model_15/conv_lst_m2d_31/SumSum'model_15/conv_lst_m2d_31/zeros_like:y:07model_15/conv_lst_m2d_31/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
model_15/conv_lst_m2d_31/Sum?
.model_15/conv_lst_m2d_31/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   20
.model_15/conv_lst_m2d_31/zeros/shape_as_tensor?
$model_15/conv_lst_m2d_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_15/conv_lst_m2d_31/zeros/Const?
model_15/conv_lst_m2d_31/zerosFill7model_15/conv_lst_m2d_31/zeros/shape_as_tensor:output:0-model_15/conv_lst_m2d_31/zeros/Const:output:0*
T0*&
_output_shapes
:FK2 
model_15/conv_lst_m2d_31/zeros?
$model_15/conv_lst_m2d_31/convolutionConv2D%model_15/conv_lst_m2d_31/Sum:output:0'model_15/conv_lst_m2d_31/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2&
$model_15/conv_lst_m2d_31/convolution?
'model_15/conv_lst_m2d_31/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_15/conv_lst_m2d_31/transpose/perm?
"model_15/conv_lst_m2d_31/transpose	Transpose(model_15/conv_lst_m2d_30/transpose_1:y:00model_15/conv_lst_m2d_31/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2$
"model_15/conv_lst_m2d_31/transpose?
model_15/conv_lst_m2d_31/ShapeShape&model_15/conv_lst_m2d_31/transpose:y:0*
T0*
_output_shapes
:2 
model_15/conv_lst_m2d_31/Shape?
,model_15/conv_lst_m2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/conv_lst_m2d_31/strided_slice/stack?
.model_15/conv_lst_m2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_15/conv_lst_m2d_31/strided_slice/stack_1?
.model_15/conv_lst_m2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_15/conv_lst_m2d_31/strided_slice/stack_2?
&model_15/conv_lst_m2d_31/strided_sliceStridedSlice'model_15/conv_lst_m2d_31/Shape:output:05model_15/conv_lst_m2d_31/strided_slice/stack:output:07model_15/conv_lst_m2d_31/strided_slice/stack_1:output:07model_15/conv_lst_m2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_15/conv_lst_m2d_31/strided_slice?
4model_15/conv_lst_m2d_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_15/conv_lst_m2d_31/TensorArrayV2/element_shape?
&model_15/conv_lst_m2d_31/TensorArrayV2TensorListReserve=model_15/conv_lst_m2d_31/TensorArrayV2/element_shape:output:0/model_15/conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_15/conv_lst_m2d_31/TensorArrayV2?
Nmodel_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2P
Nmodel_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_15/conv_lst_m2d_31/transpose:y:0Wmodel_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor?
.model_15/conv_lst_m2d_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_15/conv_lst_m2d_31/strided_slice_1/stack?
0model_15/conv_lst_m2d_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_31/strided_slice_1/stack_1?
0model_15/conv_lst_m2d_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_31/strided_slice_1/stack_2?
(model_15/conv_lst_m2d_31/strided_slice_1StridedSlice&model_15/conv_lst_m2d_31/transpose:y:07model_15/conv_lst_m2d_31/strided_slice_1/stack:output:09model_15/conv_lst_m2d_31/strided_slice_1/stack_1:output:09model_15/conv_lst_m2d_31/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_15/conv_lst_m2d_31/strided_slice_1?
(model_15/conv_lst_m2d_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_15/conv_lst_m2d_31/split/split_dim?
-model_15/conv_lst_m2d_31/split/ReadVariableOpReadVariableOp6model_15_conv_lst_m2d_31_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02/
-model_15/conv_lst_m2d_31/split/ReadVariableOp?
model_15/conv_lst_m2d_31/splitSplit1model_15/conv_lst_m2d_31/split/split_dim:output:05model_15/conv_lst_m2d_31/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2 
model_15/conv_lst_m2d_31/split?
*model_15/conv_lst_m2d_31/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_15/conv_lst_m2d_31/split_1/split_dim?
/model_15/conv_lst_m2d_31/split_1/ReadVariableOpReadVariableOp8model_15_conv_lst_m2d_31_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype021
/model_15/conv_lst_m2d_31/split_1/ReadVariableOp?
 model_15/conv_lst_m2d_31/split_1Split3model_15/conv_lst_m2d_31/split_1/split_dim:output:07model_15/conv_lst_m2d_31/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2"
 model_15/conv_lst_m2d_31/split_1?
*model_15/conv_lst_m2d_31/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_15/conv_lst_m2d_31/split_2/split_dim?
/model_15/conv_lst_m2d_31/split_2/ReadVariableOpReadVariableOp8model_15_conv_lst_m2d_31_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_15/conv_lst_m2d_31/split_2/ReadVariableOp?
 model_15/conv_lst_m2d_31/split_2Split3model_15/conv_lst_m2d_31/split_2/split_dim:output:07model_15/conv_lst_m2d_31/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2"
 model_15/conv_lst_m2d_31/split_2?
&model_15/conv_lst_m2d_31/convolution_1Conv2D1model_15/conv_lst_m2d_31/strided_slice_1:output:0'model_15/conv_lst_m2d_31/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_31/convolution_1?
 model_15/conv_lst_m2d_31/BiasAddBiasAdd/model_15/conv_lst_m2d_31/convolution_1:output:0)model_15/conv_lst_m2d_31/split_2:output:0*
T0*/
_output_shapes
:?????????K2"
 model_15/conv_lst_m2d_31/BiasAdd?
&model_15/conv_lst_m2d_31/convolution_2Conv2D1model_15/conv_lst_m2d_31/strided_slice_1:output:0'model_15/conv_lst_m2d_31/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_31/convolution_2?
"model_15/conv_lst_m2d_31/BiasAdd_1BiasAdd/model_15/conv_lst_m2d_31/convolution_2:output:0)model_15/conv_lst_m2d_31/split_2:output:1*
T0*/
_output_shapes
:?????????K2$
"model_15/conv_lst_m2d_31/BiasAdd_1?
&model_15/conv_lst_m2d_31/convolution_3Conv2D1model_15/conv_lst_m2d_31/strided_slice_1:output:0'model_15/conv_lst_m2d_31/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_31/convolution_3?
"model_15/conv_lst_m2d_31/BiasAdd_2BiasAdd/model_15/conv_lst_m2d_31/convolution_3:output:0)model_15/conv_lst_m2d_31/split_2:output:2*
T0*/
_output_shapes
:?????????K2$
"model_15/conv_lst_m2d_31/BiasAdd_2?
&model_15/conv_lst_m2d_31/convolution_4Conv2D1model_15/conv_lst_m2d_31/strided_slice_1:output:0'model_15/conv_lst_m2d_31/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_15/conv_lst_m2d_31/convolution_4?
"model_15/conv_lst_m2d_31/BiasAdd_3BiasAdd/model_15/conv_lst_m2d_31/convolution_4:output:0)model_15/conv_lst_m2d_31/split_2:output:3*
T0*/
_output_shapes
:?????????K2$
"model_15/conv_lst_m2d_31/BiasAdd_3?
&model_15/conv_lst_m2d_31/convolution_5Conv2D-model_15/conv_lst_m2d_31/convolution:output:0)model_15/conv_lst_m2d_31/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_31/convolution_5?
&model_15/conv_lst_m2d_31/convolution_6Conv2D-model_15/conv_lst_m2d_31/convolution:output:0)model_15/conv_lst_m2d_31/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_31/convolution_6?
&model_15/conv_lst_m2d_31/convolution_7Conv2D-model_15/conv_lst_m2d_31/convolution:output:0)model_15/conv_lst_m2d_31/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_31/convolution_7?
&model_15/conv_lst_m2d_31/convolution_8Conv2D-model_15/conv_lst_m2d_31/convolution:output:0)model_15/conv_lst_m2d_31/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_15/conv_lst_m2d_31/convolution_8?
model_15/conv_lst_m2d_31/addAddV2)model_15/conv_lst_m2d_31/BiasAdd:output:0/model_15/conv_lst_m2d_31/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
model_15/conv_lst_m2d_31/add?
model_15/conv_lst_m2d_31/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_15/conv_lst_m2d_31/Const?
 model_15/conv_lst_m2d_31/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_31/Const_1?
model_15/conv_lst_m2d_31/MulMul model_15/conv_lst_m2d_31/add:z:0'model_15/conv_lst_m2d_31/Const:output:0*
T0*/
_output_shapes
:?????????K2
model_15/conv_lst_m2d_31/Mul?
model_15/conv_lst_m2d_31/Add_1AddV2 model_15/conv_lst_m2d_31/Mul:z:0)model_15/conv_lst_m2d_31/Const_1:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/Add_1?
0model_15/conv_lst_m2d_31/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_15/conv_lst_m2d_31/clip_by_value/Minimum/y?
.model_15/conv_lst_m2d_31/clip_by_value/MinimumMinimum"model_15/conv_lst_m2d_31/Add_1:z:09model_15/conv_lst_m2d_31/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_15/conv_lst_m2d_31/clip_by_value/Minimum?
(model_15/conv_lst_m2d_31/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_15/conv_lst_m2d_31/clip_by_value/y?
&model_15/conv_lst_m2d_31/clip_by_valueMaximum2model_15/conv_lst_m2d_31/clip_by_value/Minimum:z:01model_15/conv_lst_m2d_31/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2(
&model_15/conv_lst_m2d_31/clip_by_value?
model_15/conv_lst_m2d_31/add_2AddV2+model_15/conv_lst_m2d_31/BiasAdd_1:output:0/model_15/conv_lst_m2d_31/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/add_2?
 model_15/conv_lst_m2d_31/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_15/conv_lst_m2d_31/Const_2?
 model_15/conv_lst_m2d_31/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_31/Const_3?
model_15/conv_lst_m2d_31/Mul_1Mul"model_15/conv_lst_m2d_31/add_2:z:0)model_15/conv_lst_m2d_31/Const_2:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/Mul_1?
model_15/conv_lst_m2d_31/Add_3AddV2"model_15/conv_lst_m2d_31/Mul_1:z:0)model_15/conv_lst_m2d_31/Const_3:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/Add_3?
2model_15/conv_lst_m2d_31/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_15/conv_lst_m2d_31/clip_by_value_1/Minimum/y?
0model_15/conv_lst_m2d_31/clip_by_value_1/MinimumMinimum"model_15/conv_lst_m2d_31/Add_3:z:0;model_15/conv_lst_m2d_31/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_15/conv_lst_m2d_31/clip_by_value_1/Minimum?
*model_15/conv_lst_m2d_31/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_15/conv_lst_m2d_31/clip_by_value_1/y?
(model_15/conv_lst_m2d_31/clip_by_value_1Maximum4model_15/conv_lst_m2d_31/clip_by_value_1/Minimum:z:03model_15/conv_lst_m2d_31/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_15/conv_lst_m2d_31/clip_by_value_1?
model_15/conv_lst_m2d_31/mul_2Mul,model_15/conv_lst_m2d_31/clip_by_value_1:z:0-model_15/conv_lst_m2d_31/convolution:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/mul_2?
model_15/conv_lst_m2d_31/add_4AddV2+model_15/conv_lst_m2d_31/BiasAdd_2:output:0/model_15/conv_lst_m2d_31/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/add_4?
model_15/conv_lst_m2d_31/ReluRelu"model_15/conv_lst_m2d_31/add_4:z:0*
T0*/
_output_shapes
:?????????K2
model_15/conv_lst_m2d_31/Relu?
model_15/conv_lst_m2d_31/mul_3Mul*model_15/conv_lst_m2d_31/clip_by_value:z:0+model_15/conv_lst_m2d_31/Relu:activations:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/mul_3?
model_15/conv_lst_m2d_31/add_5AddV2"model_15/conv_lst_m2d_31/mul_2:z:0"model_15/conv_lst_m2d_31/mul_3:z:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/add_5?
model_15/conv_lst_m2d_31/add_6AddV2+model_15/conv_lst_m2d_31/BiasAdd_3:output:0/model_15/conv_lst_m2d_31/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/add_6?
 model_15/conv_lst_m2d_31/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_15/conv_lst_m2d_31/Const_4?
 model_15/conv_lst_m2d_31/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_15/conv_lst_m2d_31/Const_5?
model_15/conv_lst_m2d_31/Mul_4Mul"model_15/conv_lst_m2d_31/add_6:z:0)model_15/conv_lst_m2d_31/Const_4:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/Mul_4?
model_15/conv_lst_m2d_31/Add_7AddV2"model_15/conv_lst_m2d_31/Mul_4:z:0)model_15/conv_lst_m2d_31/Const_5:output:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/Add_7?
2model_15/conv_lst_m2d_31/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_15/conv_lst_m2d_31/clip_by_value_2/Minimum/y?
0model_15/conv_lst_m2d_31/clip_by_value_2/MinimumMinimum"model_15/conv_lst_m2d_31/Add_7:z:0;model_15/conv_lst_m2d_31/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_15/conv_lst_m2d_31/clip_by_value_2/Minimum?
*model_15/conv_lst_m2d_31/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_15/conv_lst_m2d_31/clip_by_value_2/y?
(model_15/conv_lst_m2d_31/clip_by_value_2Maximum4model_15/conv_lst_m2d_31/clip_by_value_2/Minimum:z:03model_15/conv_lst_m2d_31/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_15/conv_lst_m2d_31/clip_by_value_2?
model_15/conv_lst_m2d_31/Relu_1Relu"model_15/conv_lst_m2d_31/add_5:z:0*
T0*/
_output_shapes
:?????????K2!
model_15/conv_lst_m2d_31/Relu_1?
model_15/conv_lst_m2d_31/mul_5Mul,model_15/conv_lst_m2d_31/clip_by_value_2:z:0-model_15/conv_lst_m2d_31/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2 
model_15/conv_lst_m2d_31/mul_5?
6model_15/conv_lst_m2d_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   28
6model_15/conv_lst_m2d_31/TensorArrayV2_1/element_shape?
(model_15/conv_lst_m2d_31/TensorArrayV2_1TensorListReserve?model_15/conv_lst_m2d_31/TensorArrayV2_1/element_shape:output:0/model_15/conv_lst_m2d_31/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_15/conv_lst_m2d_31/TensorArrayV2_1?
model_15/conv_lst_m2d_31/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_15/conv_lst_m2d_31/time?
1model_15/conv_lst_m2d_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_15/conv_lst_m2d_31/while/maximum_iterations?
+model_15/conv_lst_m2d_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_15/conv_lst_m2d_31/while/loop_counter?	
model_15/conv_lst_m2d_31/whileWhile4model_15/conv_lst_m2d_31/while/loop_counter:output:0:model_15/conv_lst_m2d_31/while/maximum_iterations:output:0&model_15/conv_lst_m2d_31/time:output:01model_15/conv_lst_m2d_31/TensorArrayV2_1:handle:0-model_15/conv_lst_m2d_31/convolution:output:0-model_15/conv_lst_m2d_31/convolution:output:0/model_15/conv_lst_m2d_31/strided_slice:output:0Pmodel_15/conv_lst_m2d_31/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_15_conv_lst_m2d_31_split_readvariableop_resource8model_15_conv_lst_m2d_31_split_1_readvariableop_resource8model_15_conv_lst_m2d_31_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+model_15_conv_lst_m2d_31_while_body_2577777*7
cond/R-
+model_15_conv_lst_m2d_31_while_cond_2577776*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2 
model_15/conv_lst_m2d_31/while?
Imodel_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2K
Imodel_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape?
;model_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStackTensorListStack'model_15/conv_lst_m2d_31/while:output:3Rmodel_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02=
;model_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack?
.model_15/conv_lst_m2d_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_15/conv_lst_m2d_31/strided_slice_2/stack?
0model_15/conv_lst_m2d_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_15/conv_lst_m2d_31/strided_slice_2/stack_1?
0model_15/conv_lst_m2d_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_15/conv_lst_m2d_31/strided_slice_2/stack_2?
(model_15/conv_lst_m2d_31/strided_slice_2StridedSliceDmodel_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:07model_15/conv_lst_m2d_31/strided_slice_2/stack:output:09model_15/conv_lst_m2d_31/strided_slice_2/stack_1:output:09model_15/conv_lst_m2d_31/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2*
(model_15/conv_lst_m2d_31/strided_slice_2?
)model_15/conv_lst_m2d_31/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_15/conv_lst_m2d_31/transpose_1/perm?
$model_15/conv_lst_m2d_31/transpose_1	TransposeDmodel_15/conv_lst_m2d_31/TensorArrayV2Stack/TensorListStack:tensor:02model_15/conv_lst_m2d_31/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2&
$model_15/conv_lst_m2d_31/transpose_1?
model_15/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
model_15/flatten_21/Const?
model_15/flatten_21/ReshapeReshape%model_15/conv2d_11/Relu:activations:0"model_15/flatten_21/Const:output:0*
T0*'
_output_shapes
:?????????K2
model_15/flatten_21/Reshape?
model_15/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
model_15/flatten_20/Const?
model_15/flatten_20/ReshapeReshape(model_15/conv_lst_m2d_31/transpose_1:y:0"model_15/flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2
model_15/flatten_20/Reshape?
'model_15/dense_50/MatMul/ReadVariableOpReadVariableOp0model_15_dense_50_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02)
'model_15/dense_50/MatMul/ReadVariableOp?
model_15/dense_50/MatMulMatMul$model_15/flatten_20/Reshape:output:0/model_15/dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_50/MatMul?
(model_15/dense_50/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_50_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_15/dense_50/BiasAdd/ReadVariableOp?
model_15/dense_50/BiasAddBiasAdd"model_15/dense_50/MatMul:product:00model_15/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_50/BiasAdd?
'model_15/dense_51/MatMul/ReadVariableOpReadVariableOp0model_15_dense_51_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02)
'model_15/dense_51/MatMul/ReadVariableOp?
model_15/dense_51/MatMulMatMul$model_15/flatten_21/Reshape:output:0/model_15/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_51/MatMul?
(model_15/dense_51/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_51_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_15/dense_51/BiasAdd/ReadVariableOp?
model_15/dense_51/BiasAddBiasAdd"model_15/dense_51/MatMul:product:00model_15/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_51/BiasAdd?
model_15/add_15/addAddV2"model_15/dense_50/BiasAdd:output:0"model_15/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_15/add_15/add?
'model_15/dense_52/MatMul/ReadVariableOpReadVariableOp0model_15_dense_52_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02)
'model_15/dense_52/MatMul/ReadVariableOp?
model_15/dense_52/MatMulMatMulmodel_15/add_15/add:z:0/model_15/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_52/MatMul?
(model_15/dense_52/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_52_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_15/dense_52/BiasAdd/ReadVariableOp?
model_15/dense_52/BiasAddBiasAdd"model_15/dense_52/MatMul:product:00model_15/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_15/dense_52/BiasAdd?
model_15/dense_52/ReluRelu"model_15/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_15/dense_52/Relu?
'model_15/dense_53/MatMul/ReadVariableOpReadVariableOp0model_15_dense_53_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02)
'model_15/dense_53/MatMul/ReadVariableOp?
model_15/dense_53/MatMulMatMul$model_15/dense_52/Relu:activations:0/model_15/dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_15/dense_53/MatMul?
(model_15/dense_53/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_15/dense_53/BiasAdd/ReadVariableOp?
model_15/dense_53/BiasAddBiasAdd"model_15/dense_53/MatMul:product:00model_15/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_15/dense_53/BiasAdd?
model_15/dense_53/SoftmaxSoftmax"model_15/dense_53/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_15/dense_53/Softmax~
IdentityIdentity#model_15/dense_53/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp*^model_15/conv2d_10/BiasAdd/ReadVariableOp)^model_15/conv2d_10/Conv2D/ReadVariableOp*^model_15/conv2d_11/BiasAdd/ReadVariableOp)^model_15/conv2d_11/Conv2D/ReadVariableOp.^model_15/conv_lst_m2d_30/split/ReadVariableOp0^model_15/conv_lst_m2d_30/split_1/ReadVariableOp0^model_15/conv_lst_m2d_30/split_2/ReadVariableOp^model_15/conv_lst_m2d_30/while.^model_15/conv_lst_m2d_31/split/ReadVariableOp0^model_15/conv_lst_m2d_31/split_1/ReadVariableOp0^model_15/conv_lst_m2d_31/split_2/ReadVariableOp^model_15/conv_lst_m2d_31/while)^model_15/dense_50/BiasAdd/ReadVariableOp(^model_15/dense_50/MatMul/ReadVariableOp)^model_15/dense_51/BiasAdd/ReadVariableOp(^model_15/dense_51/MatMul/ReadVariableOp)^model_15/dense_52/BiasAdd/ReadVariableOp(^model_15/dense_52/MatMul/ReadVariableOp)^model_15/dense_53/BiasAdd/ReadVariableOp(^model_15/dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2V
)model_15/conv2d_10/BiasAdd/ReadVariableOp)model_15/conv2d_10/BiasAdd/ReadVariableOp2T
(model_15/conv2d_10/Conv2D/ReadVariableOp(model_15/conv2d_10/Conv2D/ReadVariableOp2V
)model_15/conv2d_11/BiasAdd/ReadVariableOp)model_15/conv2d_11/BiasAdd/ReadVariableOp2T
(model_15/conv2d_11/Conv2D/ReadVariableOp(model_15/conv2d_11/Conv2D/ReadVariableOp2^
-model_15/conv_lst_m2d_30/split/ReadVariableOp-model_15/conv_lst_m2d_30/split/ReadVariableOp2b
/model_15/conv_lst_m2d_30/split_1/ReadVariableOp/model_15/conv_lst_m2d_30/split_1/ReadVariableOp2b
/model_15/conv_lst_m2d_30/split_2/ReadVariableOp/model_15/conv_lst_m2d_30/split_2/ReadVariableOp2@
model_15/conv_lst_m2d_30/whilemodel_15/conv_lst_m2d_30/while2^
-model_15/conv_lst_m2d_31/split/ReadVariableOp-model_15/conv_lst_m2d_31/split/ReadVariableOp2b
/model_15/conv_lst_m2d_31/split_1/ReadVariableOp/model_15/conv_lst_m2d_31/split_1/ReadVariableOp2b
/model_15/conv_lst_m2d_31/split_2/ReadVariableOp/model_15/conv_lst_m2d_31/split_2/ReadVariableOp2@
model_15/conv_lst_m2d_31/whilemodel_15/conv_lst_m2d_31/while2T
(model_15/dense_50/BiasAdd/ReadVariableOp(model_15/dense_50/BiasAdd/ReadVariableOp2R
'model_15/dense_50/MatMul/ReadVariableOp'model_15/dense_50/MatMul/ReadVariableOp2T
(model_15/dense_51/BiasAdd/ReadVariableOp(model_15/dense_51/BiasAdd/ReadVariableOp2R
'model_15/dense_51/MatMul/ReadVariableOp'model_15/dense_51/MatMul/ReadVariableOp2T
(model_15/dense_52/BiasAdd/ReadVariableOp(model_15/dense_52/BiasAdd/ReadVariableOp2R
'model_15/dense_52/MatMul/ReadVariableOp'model_15/dense_52/MatMul/ReadVariableOp2T
(model_15/dense_53/BiasAdd/ReadVariableOp(model_15/dense_53/BiasAdd/ReadVariableOp2R
'model_15/dense_53/MatMul/ReadVariableOp'model_15/dense_53/MatMul/ReadVariableOp:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input
?D
?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2578224

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????F
 
_user_specified_namestates:WS
/
_output_shapes
:?????????F
 
_user_specified_namestates
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582740

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2582614*
condR
while_cond_2582613*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_21_layer_call_fn_2583728

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_25797432
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????K2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K:W S
/
_output_shapes
:?????????K
 
_user_specified_nameinputs
?
?
+__inference_conv2d_11_layer_call_fn_2583701

inputs!
unknown:FK
	unknown_0:K
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_25795022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????F: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs
??
?
+model_15_conv_lst_m2d_30_while_body_2577552N
Jmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_loop_counterT
Pmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_maximum_iterations.
*model_15_conv_lst_m2d_30_while_placeholder0
,model_15_conv_lst_m2d_30_while_placeholder_10
,model_15_conv_lst_m2d_30_while_placeholder_20
,model_15_conv_lst_m2d_30_while_placeholder_3K
Gmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_strided_slice_0?
?model_15_conv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0Y
>model_15_conv_lst_m2d_30_while_split_readvariableop_resource_0:?[
@model_15_conv_lst_m2d_30_while_split_1_readvariableop_resource_0:F?O
@model_15_conv_lst_m2d_30_while_split_2_readvariableop_resource_0:	?+
'model_15_conv_lst_m2d_30_while_identity-
)model_15_conv_lst_m2d_30_while_identity_1-
)model_15_conv_lst_m2d_30_while_identity_2-
)model_15_conv_lst_m2d_30_while_identity_3-
)model_15_conv_lst_m2d_30_while_identity_4-
)model_15_conv_lst_m2d_30_while_identity_5I
Emodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_strided_slice?
?model_15_conv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensorW
<model_15_conv_lst_m2d_30_while_split_readvariableop_resource:?Y
>model_15_conv_lst_m2d_30_while_split_1_readvariableop_resource:F?M
>model_15_conv_lst_m2d_30_while_split_2_readvariableop_resource:	???3model_15/conv_lst_m2d_30/while/split/ReadVariableOp?5model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp?5model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp?
Pmodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2R
Pmodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_15_conv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0*model_15_conv_lst_m2d_30_while_placeholderYmodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02D
Bmodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem?
.model_15/conv_lst_m2d_30/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_15/conv_lst_m2d_30/while/split/split_dim?
3model_15/conv_lst_m2d_30/while/split/ReadVariableOpReadVariableOp>model_15_conv_lst_m2d_30_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype025
3model_15/conv_lst_m2d_30/while/split/ReadVariableOp?
$model_15/conv_lst_m2d_30/while/splitSplit7model_15/conv_lst_m2d_30/while/split/split_dim:output:0;model_15/conv_lst_m2d_30/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2&
$model_15/conv_lst_m2d_30/while/split?
0model_15/conv_lst_m2d_30/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_15/conv_lst_m2d_30/while/split_1/split_dim?
5model_15/conv_lst_m2d_30/while/split_1/ReadVariableOpReadVariableOp@model_15_conv_lst_m2d_30_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype027
5model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp?
&model_15/conv_lst_m2d_30/while/split_1Split9model_15/conv_lst_m2d_30/while/split_1/split_dim:output:0=model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2(
&model_15/conv_lst_m2d_30/while/split_1?
0model_15/conv_lst_m2d_30/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/conv_lst_m2d_30/while/split_2/split_dim?
5model_15/conv_lst_m2d_30/while/split_2/ReadVariableOpReadVariableOp@model_15_conv_lst_m2d_30_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp?
&model_15/conv_lst_m2d_30/while/split_2Split9model_15/conv_lst_m2d_30/while/split_2/split_dim:output:0=model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2(
&model_15/conv_lst_m2d_30/while/split_2?
*model_15/conv_lst_m2d_30/while/convolutionConv2DImodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_30/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2,
*model_15/conv_lst_m2d_30/while/convolution?
&model_15/conv_lst_m2d_30/while/BiasAddBiasAdd3model_15/conv_lst_m2d_30/while/convolution:output:0/model_15/conv_lst_m2d_30/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2(
&model_15/conv_lst_m2d_30/while/BiasAdd?
,model_15/conv_lst_m2d_30/while/convolution_1Conv2DImodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_30/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_1?
(model_15/conv_lst_m2d_30/while/BiasAdd_1BiasAdd5model_15/conv_lst_m2d_30/while/convolution_1:output:0/model_15/conv_lst_m2d_30/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2*
(model_15/conv_lst_m2d_30/while/BiasAdd_1?
,model_15/conv_lst_m2d_30/while/convolution_2Conv2DImodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_30/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_2?
(model_15/conv_lst_m2d_30/while/BiasAdd_2BiasAdd5model_15/conv_lst_m2d_30/while/convolution_2:output:0/model_15/conv_lst_m2d_30/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2*
(model_15/conv_lst_m2d_30/while/BiasAdd_2?
,model_15/conv_lst_m2d_30/while/convolution_3Conv2DImodel_15/conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0-model_15/conv_lst_m2d_30/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_3?
(model_15/conv_lst_m2d_30/while/BiasAdd_3BiasAdd5model_15/conv_lst_m2d_30/while/convolution_3:output:0/model_15/conv_lst_m2d_30/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2*
(model_15/conv_lst_m2d_30/while/BiasAdd_3?
,model_15/conv_lst_m2d_30/while/convolution_4Conv2D,model_15_conv_lst_m2d_30_while_placeholder_2/model_15/conv_lst_m2d_30/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_4?
,model_15/conv_lst_m2d_30/while/convolution_5Conv2D,model_15_conv_lst_m2d_30_while_placeholder_2/model_15/conv_lst_m2d_30/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_5?
,model_15/conv_lst_m2d_30/while/convolution_6Conv2D,model_15_conv_lst_m2d_30_while_placeholder_2/model_15/conv_lst_m2d_30/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_6?
,model_15/conv_lst_m2d_30/while/convolution_7Conv2D,model_15_conv_lst_m2d_30_while_placeholder_2/model_15/conv_lst_m2d_30/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_15/conv_lst_m2d_30/while/convolution_7?
"model_15/conv_lst_m2d_30/while/addAddV2/model_15/conv_lst_m2d_30/while/BiasAdd:output:05model_15/conv_lst_m2d_30/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2$
"model_15/conv_lst_m2d_30/while/add?
$model_15/conv_lst_m2d_30/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_15/conv_lst_m2d_30/while/Const?
&model_15/conv_lst_m2d_30/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_30/while/Const_1?
"model_15/conv_lst_m2d_30/while/MulMul&model_15/conv_lst_m2d_30/while/add:z:0-model_15/conv_lst_m2d_30/while/Const:output:0*
T0*/
_output_shapes
:?????????F2$
"model_15/conv_lst_m2d_30/while/Mul?
$model_15/conv_lst_m2d_30/while/Add_1AddV2&model_15/conv_lst_m2d_30/while/Mul:z:0/model_15/conv_lst_m2d_30/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/Add_1?
6model_15/conv_lst_m2d_30/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_15/conv_lst_m2d_30/while/clip_by_value/Minimum/y?
4model_15/conv_lst_m2d_30/while/clip_by_value/MinimumMinimum(model_15/conv_lst_m2d_30/while/Add_1:z:0?model_15/conv_lst_m2d_30/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F26
4model_15/conv_lst_m2d_30/while/clip_by_value/Minimum?
.model_15/conv_lst_m2d_30/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_15/conv_lst_m2d_30/while/clip_by_value/y?
,model_15/conv_lst_m2d_30/while/clip_by_valueMaximum8model_15/conv_lst_m2d_30/while/clip_by_value/Minimum:z:07model_15/conv_lst_m2d_30/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2.
,model_15/conv_lst_m2d_30/while/clip_by_value?
$model_15/conv_lst_m2d_30/while/add_2AddV21model_15/conv_lst_m2d_30/while/BiasAdd_1:output:05model_15/conv_lst_m2d_30/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/add_2?
&model_15/conv_lst_m2d_30/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_15/conv_lst_m2d_30/while/Const_2?
&model_15/conv_lst_m2d_30/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_30/while/Const_3?
$model_15/conv_lst_m2d_30/while/Mul_1Mul(model_15/conv_lst_m2d_30/while/add_2:z:0/model_15/conv_lst_m2d_30/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/Mul_1?
$model_15/conv_lst_m2d_30/while/Add_3AddV2(model_15/conv_lst_m2d_30/while/Mul_1:z:0/model_15/conv_lst_m2d_30/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/Add_3?
8model_15/conv_lst_m2d_30/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_15/conv_lst_m2d_30/while/clip_by_value_1/Minimum/y?
6model_15/conv_lst_m2d_30/while/clip_by_value_1/MinimumMinimum(model_15/conv_lst_m2d_30/while/Add_3:z:0Amodel_15/conv_lst_m2d_30/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_15/conv_lst_m2d_30/while/clip_by_value_1/Minimum?
0model_15/conv_lst_m2d_30/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_15/conv_lst_m2d_30/while/clip_by_value_1/y?
.model_15/conv_lst_m2d_30/while/clip_by_value_1Maximum:model_15/conv_lst_m2d_30/while/clip_by_value_1/Minimum:z:09model_15/conv_lst_m2d_30/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_15/conv_lst_m2d_30/while/clip_by_value_1?
$model_15/conv_lst_m2d_30/while/mul_2Mul2model_15/conv_lst_m2d_30/while/clip_by_value_1:z:0,model_15_conv_lst_m2d_30_while_placeholder_3*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/mul_2?
$model_15/conv_lst_m2d_30/while/add_4AddV21model_15/conv_lst_m2d_30/while/BiasAdd_2:output:05model_15/conv_lst_m2d_30/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/add_4?
#model_15/conv_lst_m2d_30/while/ReluRelu(model_15/conv_lst_m2d_30/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2%
#model_15/conv_lst_m2d_30/while/Relu?
$model_15/conv_lst_m2d_30/while/mul_3Mul0model_15/conv_lst_m2d_30/while/clip_by_value:z:01model_15/conv_lst_m2d_30/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/mul_3?
$model_15/conv_lst_m2d_30/while/add_5AddV2(model_15/conv_lst_m2d_30/while/mul_2:z:0(model_15/conv_lst_m2d_30/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/add_5?
$model_15/conv_lst_m2d_30/while/add_6AddV21model_15/conv_lst_m2d_30/while/BiasAdd_3:output:05model_15/conv_lst_m2d_30/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/add_6?
&model_15/conv_lst_m2d_30/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_15/conv_lst_m2d_30/while/Const_4?
&model_15/conv_lst_m2d_30/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_15/conv_lst_m2d_30/while/Const_5?
$model_15/conv_lst_m2d_30/while/Mul_4Mul(model_15/conv_lst_m2d_30/while/add_6:z:0/model_15/conv_lst_m2d_30/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/Mul_4?
$model_15/conv_lst_m2d_30/while/Add_7AddV2(model_15/conv_lst_m2d_30/while/Mul_4:z:0/model_15/conv_lst_m2d_30/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/Add_7?
8model_15/conv_lst_m2d_30/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_15/conv_lst_m2d_30/while/clip_by_value_2/Minimum/y?
6model_15/conv_lst_m2d_30/while/clip_by_value_2/MinimumMinimum(model_15/conv_lst_m2d_30/while/Add_7:z:0Amodel_15/conv_lst_m2d_30/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_15/conv_lst_m2d_30/while/clip_by_value_2/Minimum?
0model_15/conv_lst_m2d_30/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_15/conv_lst_m2d_30/while/clip_by_value_2/y?
.model_15/conv_lst_m2d_30/while/clip_by_value_2Maximum:model_15/conv_lst_m2d_30/while/clip_by_value_2/Minimum:z:09model_15/conv_lst_m2d_30/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_15/conv_lst_m2d_30/while/clip_by_value_2?
%model_15/conv_lst_m2d_30/while/Relu_1Relu(model_15/conv_lst_m2d_30/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2'
%model_15/conv_lst_m2d_30/while/Relu_1?
$model_15/conv_lst_m2d_30/while/mul_5Mul2model_15/conv_lst_m2d_30/while/clip_by_value_2:z:03model_15/conv_lst_m2d_30/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_15/conv_lst_m2d_30/while/mul_5?
Cmodel_15/conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_15_conv_lst_m2d_30_while_placeholder_1*model_15_conv_lst_m2d_30_while_placeholder(model_15/conv_lst_m2d_30/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_15/conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem?
&model_15/conv_lst_m2d_30/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_15/conv_lst_m2d_30/while/add_8/y?
$model_15/conv_lst_m2d_30/while/add_8AddV2*model_15_conv_lst_m2d_30_while_placeholder/model_15/conv_lst_m2d_30/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_15/conv_lst_m2d_30/while/add_8?
&model_15/conv_lst_m2d_30/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_15/conv_lst_m2d_30/while/add_9/y?
$model_15/conv_lst_m2d_30/while/add_9AddV2Jmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_loop_counter/model_15/conv_lst_m2d_30/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_15/conv_lst_m2d_30/while/add_9?
'model_15/conv_lst_m2d_30/while/IdentityIdentity(model_15/conv_lst_m2d_30/while/add_9:z:0$^model_15/conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2)
'model_15/conv_lst_m2d_30/while/Identity?
)model_15/conv_lst_m2d_30/while/Identity_1IdentityPmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_while_maximum_iterations$^model_15/conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_30/while/Identity_1?
)model_15/conv_lst_m2d_30/while/Identity_2Identity(model_15/conv_lst_m2d_30/while/add_8:z:0$^model_15/conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_30/while/Identity_2?
)model_15/conv_lst_m2d_30/while/Identity_3IdentitySmodel_15/conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_15/conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2+
)model_15/conv_lst_m2d_30/while/Identity_3?
)model_15/conv_lst_m2d_30/while/Identity_4Identity(model_15/conv_lst_m2d_30/while/mul_5:z:0$^model_15/conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_15/conv_lst_m2d_30/while/Identity_4?
)model_15/conv_lst_m2d_30/while/Identity_5Identity(model_15/conv_lst_m2d_30/while/add_5:z:0$^model_15/conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_15/conv_lst_m2d_30/while/Identity_5?
#model_15/conv_lst_m2d_30/while/NoOpNoOp4^model_15/conv_lst_m2d_30/while/split/ReadVariableOp6^model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp6^model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_15/conv_lst_m2d_30/while/NoOp"[
'model_15_conv_lst_m2d_30_while_identity0model_15/conv_lst_m2d_30/while/Identity:output:0"_
)model_15_conv_lst_m2d_30_while_identity_12model_15/conv_lst_m2d_30/while/Identity_1:output:0"_
)model_15_conv_lst_m2d_30_while_identity_22model_15/conv_lst_m2d_30/while/Identity_2:output:0"_
)model_15_conv_lst_m2d_30_while_identity_32model_15/conv_lst_m2d_30/while/Identity_3:output:0"_
)model_15_conv_lst_m2d_30_while_identity_42model_15/conv_lst_m2d_30/while/Identity_4:output:0"_
)model_15_conv_lst_m2d_30_while_identity_52model_15/conv_lst_m2d_30/while/Identity_5:output:0"?
Emodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_strided_sliceGmodel_15_conv_lst_m2d_30_while_model_15_conv_lst_m2d_30_strided_slice_0"?
>model_15_conv_lst_m2d_30_while_split_1_readvariableop_resource@model_15_conv_lst_m2d_30_while_split_1_readvariableop_resource_0"?
>model_15_conv_lst_m2d_30_while_split_2_readvariableop_resource@model_15_conv_lst_m2d_30_while_split_2_readvariableop_resource_0"~
<model_15_conv_lst_m2d_30_while_split_readvariableop_resource>model_15_conv_lst_m2d_30_while_split_readvariableop_resource_0"?
?model_15_conv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor?model_15_conv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_model_15_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2j
3model_15/conv_lst_m2d_30/while/split/ReadVariableOp3model_15/conv_lst_m2d_30/while/split/ReadVariableOp2n
5model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp5model_15/conv_lst_m2d_30/while/split_1/ReadVariableOp2n
5model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp5model_15/conv_lst_m2d_30/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?$
?
while_body_2578050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_2578074_0:?*
while_2578076_0:F?
while_2578078_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_2578074:?(
while_2578076:F?
while_2578078:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_2578074_0while_2578076_0while_2578078_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25780362
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5z

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp" 
while_2578074while_2578074_0" 
while_2578076while_2578076_0" 
while_2578078while_2578078_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2580286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2580286___redundant_placeholder05
1while_while_cond_2580286___redundant_placeholder15
1while_while_cond_2580286___redundant_placeholder25
1while_while_cond_2580286___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
??
?
"conv_lst_m2d_30_while_body_2581434<
8conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counterB
>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations%
!conv_lst_m2d_30_while_placeholder'
#conv_lst_m2d_30_while_placeholder_1'
#conv_lst_m2d_30_while_placeholder_2'
#conv_lst_m2d_30_while_placeholder_39
5conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice_0w
sconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_30_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_30_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_30_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_30_while_identity$
 conv_lst_m2d_30_while_identity_1$
 conv_lst_m2d_30_while_identity_2$
 conv_lst_m2d_30_while_identity_3$
 conv_lst_m2d_30_while_identity_4$
 conv_lst_m2d_30_while_identity_57
3conv_lst_m2d_30_while_conv_lst_m2d_30_strided_sliceu
qconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_30_while_split_readvariableop_resource:?P
5conv_lst_m2d_30_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_30_while_split_2_readvariableop_resource:	???*conv_lst_m2d_30/while/split/ReadVariableOp?,conv_lst_m2d_30/while/split_1/ReadVariableOp?,conv_lst_m2d_30/while/split_2/ReadVariableOp?
Gconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_30_while_placeholderPconv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_30/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_30/while/split/split_dim?
*conv_lst_m2d_30/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_30_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_30/while/split/ReadVariableOp?
conv_lst_m2d_30/while/splitSplit.conv_lst_m2d_30/while/split/split_dim:output:02conv_lst_m2d_30/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_30/while/split?
'conv_lst_m2d_30/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_30/while/split_1/split_dim?
,conv_lst_m2d_30/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_30_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_30/while/split_1/ReadVariableOp?
conv_lst_m2d_30/while/split_1Split0conv_lst_m2d_30/while/split_1/split_dim:output:04conv_lst_m2d_30/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_30/while/split_1?
'conv_lst_m2d_30/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_30/while/split_2/split_dim?
,conv_lst_m2d_30/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_30_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_30/while/split_2/ReadVariableOp?
conv_lst_m2d_30/while/split_2Split0conv_lst_m2d_30/while/split_2/split_dim:output:04conv_lst_m2d_30/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_30/while/split_2?
!conv_lst_m2d_30/while/convolutionConv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_30/while/convolution?
conv_lst_m2d_30/while/BiasAddBiasAdd*conv_lst_m2d_30/while/convolution:output:0&conv_lst_m2d_30/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/BiasAdd?
#conv_lst_m2d_30/while/convolution_1Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_1?
conv_lst_m2d_30/while/BiasAdd_1BiasAdd,conv_lst_m2d_30/while/convolution_1:output:0&conv_lst_m2d_30/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_1?
#conv_lst_m2d_30/while/convolution_2Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_2?
conv_lst_m2d_30/while/BiasAdd_2BiasAdd,conv_lst_m2d_30/while/convolution_2:output:0&conv_lst_m2d_30/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_2?
#conv_lst_m2d_30/while/convolution_3Conv2D@conv_lst_m2d_30/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_30/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_30/while/convolution_3?
conv_lst_m2d_30/while/BiasAdd_3BiasAdd,conv_lst_m2d_30/while/convolution_3:output:0&conv_lst_m2d_30/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_30/while/BiasAdd_3?
#conv_lst_m2d_30/while/convolution_4Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_4?
#conv_lst_m2d_30/while/convolution_5Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_5?
#conv_lst_m2d_30/while/convolution_6Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_6?
#conv_lst_m2d_30/while/convolution_7Conv2D#conv_lst_m2d_30_while_placeholder_2&conv_lst_m2d_30/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_30/while/convolution_7?
conv_lst_m2d_30/while/addAddV2&conv_lst_m2d_30/while/BiasAdd:output:0,conv_lst_m2d_30/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add
conv_lst_m2d_30/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const?
conv_lst_m2d_30/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_1?
conv_lst_m2d_30/while/MulMulconv_lst_m2d_30/while/add:z:0$conv_lst_m2d_30/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul?
conv_lst_m2d_30/while/Add_1AddV2conv_lst_m2d_30/while/Mul:z:0&conv_lst_m2d_30/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_1?
-conv_lst_m2d_30/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_30/while/clip_by_value/Minimum/y?
+conv_lst_m2d_30/while/clip_by_value/MinimumMinimumconv_lst_m2d_30/while/Add_1:z:06conv_lst_m2d_30/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_30/while/clip_by_value/Minimum?
%conv_lst_m2d_30/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_30/while/clip_by_value/y?
#conv_lst_m2d_30/while/clip_by_valueMaximum/conv_lst_m2d_30/while/clip_by_value/Minimum:z:0.conv_lst_m2d_30/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_30/while/clip_by_value?
conv_lst_m2d_30/while/add_2AddV2(conv_lst_m2d_30/while/BiasAdd_1:output:0,conv_lst_m2d_30/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_2?
conv_lst_m2d_30/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const_2?
conv_lst_m2d_30/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_3?
conv_lst_m2d_30/while/Mul_1Mulconv_lst_m2d_30/while/add_2:z:0&conv_lst_m2d_30/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul_1?
conv_lst_m2d_30/while/Add_3AddV2conv_lst_m2d_30/while/Mul_1:z:0&conv_lst_m2d_30/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_3?
/conv_lst_m2d_30/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_30/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_30/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_30/while/Add_3:z:08conv_lst_m2d_30/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_30/while/clip_by_value_1/Minimum?
'conv_lst_m2d_30/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_30/while/clip_by_value_1/y?
%conv_lst_m2d_30/while/clip_by_value_1Maximum1conv_lst_m2d_30/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_30/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/while/clip_by_value_1?
conv_lst_m2d_30/while/mul_2Mul)conv_lst_m2d_30/while/clip_by_value_1:z:0#conv_lst_m2d_30_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_2?
conv_lst_m2d_30/while/add_4AddV2(conv_lst_m2d_30/while/BiasAdd_2:output:0,conv_lst_m2d_30/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_4?
conv_lst_m2d_30/while/ReluReluconv_lst_m2d_30/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Relu?
conv_lst_m2d_30/while/mul_3Mul'conv_lst_m2d_30/while/clip_by_value:z:0(conv_lst_m2d_30/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_3?
conv_lst_m2d_30/while/add_5AddV2conv_lst_m2d_30/while/mul_2:z:0conv_lst_m2d_30/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_5?
conv_lst_m2d_30/while/add_6AddV2(conv_lst_m2d_30/while/BiasAdd_3:output:0,conv_lst_m2d_30/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/add_6?
conv_lst_m2d_30/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_30/while/Const_4?
conv_lst_m2d_30/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_30/while/Const_5?
conv_lst_m2d_30/while/Mul_4Mulconv_lst_m2d_30/while/add_6:z:0&conv_lst_m2d_30/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Mul_4?
conv_lst_m2d_30/while/Add_7AddV2conv_lst_m2d_30/while/Mul_4:z:0&conv_lst_m2d_30/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Add_7?
/conv_lst_m2d_30/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_30/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_30/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_30/while/Add_7:z:08conv_lst_m2d_30/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_30/while/clip_by_value_2/Minimum?
'conv_lst_m2d_30/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_30/while/clip_by_value_2/y?
%conv_lst_m2d_30/while/clip_by_value_2Maximum1conv_lst_m2d_30/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_30/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_30/while/clip_by_value_2?
conv_lst_m2d_30/while/Relu_1Reluconv_lst_m2d_30/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/Relu_1?
conv_lst_m2d_30/while/mul_5Mul)conv_lst_m2d_30/while/clip_by_value_2:z:0*conv_lst_m2d_30/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_30/while/mul_5?
:conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_30_while_placeholder_1!conv_lst_m2d_30_while_placeholderconv_lst_m2d_30/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_30/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_30/while/add_8/y?
conv_lst_m2d_30/while/add_8AddV2!conv_lst_m2d_30_while_placeholder&conv_lst_m2d_30/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/add_8?
conv_lst_m2d_30/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_30/while/add_9/y?
conv_lst_m2d_30/while/add_9AddV28conv_lst_m2d_30_while_conv_lst_m2d_30_while_loop_counter&conv_lst_m2d_30/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_30/while/add_9?
conv_lst_m2d_30/while/IdentityIdentityconv_lst_m2d_30/while/add_9:z:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_30/while/Identity?
 conv_lst_m2d_30/while/Identity_1Identity>conv_lst_m2d_30_while_conv_lst_m2d_30_while_maximum_iterations^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_1?
 conv_lst_m2d_30/while/Identity_2Identityconv_lst_m2d_30/while/add_8:z:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_2?
 conv_lst_m2d_30/while/Identity_3IdentityJconv_lst_m2d_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_30/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_30/while/Identity_3?
 conv_lst_m2d_30/while/Identity_4Identityconv_lst_m2d_30/while/mul_5:z:0^conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_30/while/Identity_4?
 conv_lst_m2d_30/while/Identity_5Identityconv_lst_m2d_30/while/add_5:z:0^conv_lst_m2d_30/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_30/while/Identity_5?
conv_lst_m2d_30/while/NoOpNoOp+^conv_lst_m2d_30/while/split/ReadVariableOp-^conv_lst_m2d_30/while/split_1/ReadVariableOp-^conv_lst_m2d_30/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_30/while/NoOp"l
3conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice5conv_lst_m2d_30_while_conv_lst_m2d_30_strided_slice_0"I
conv_lst_m2d_30_while_identity'conv_lst_m2d_30/while/Identity:output:0"M
 conv_lst_m2d_30_while_identity_1)conv_lst_m2d_30/while/Identity_1:output:0"M
 conv_lst_m2d_30_while_identity_2)conv_lst_m2d_30/while/Identity_2:output:0"M
 conv_lst_m2d_30_while_identity_3)conv_lst_m2d_30/while/Identity_3:output:0"M
 conv_lst_m2d_30_while_identity_4)conv_lst_m2d_30/while/Identity_4:output:0"M
 conv_lst_m2d_30_while_identity_5)conv_lst_m2d_30/while/Identity_5:output:0"p
5conv_lst_m2d_30_while_split_1_readvariableop_resource7conv_lst_m2d_30_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_30_while_split_2_readvariableop_resource7conv_lst_m2d_30_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_30_while_split_readvariableop_resource5conv_lst_m2d_30_while_split_readvariableop_resource_0"?
qconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_30_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_30/while/split/ReadVariableOp*conv_lst_m2d_30/while/split/ReadVariableOp2\
,conv_lst_m2d_30/while/split_1/ReadVariableOp,conv_lst_m2d_30/while/split_1/ReadVariableOp2\
,conv_lst_m2d_30/while/split_2/ReadVariableOp,conv_lst_m2d_30/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?p
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583470

inputs8
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2583344*
condR
while_cond_2583343*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????K2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????F: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????F
 
_user_specified_nameinputs
?
?
3__inference_conv_lstm_cell_30_layer_call_fn_2583858

inputs
states_0
states_1"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_25782242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????F2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????F2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????F:?????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????F
"
_user_specified_name
states/1
?
H
,__inference_flatten_20_layer_call_fn_2583717

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_20_layer_call_and_return_conditional_losses_25797512
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????K:[ W
3
_output_shapes!
:?????????K
 
_user_specified_nameinputs
?
?
1__inference_conv_lst_m2d_30_layer_call_fn_2581860

inputs"
unknown:?$
	unknown_0:F?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_25804132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
"conv_lst_m2d_31_while_cond_2581658<
8conv_lst_m2d_31_while_conv_lst_m2d_31_while_loop_counterB
>conv_lst_m2d_31_while_conv_lst_m2d_31_while_maximum_iterations%
!conv_lst_m2d_31_while_placeholder'
#conv_lst_m2d_31_while_placeholder_1'
#conv_lst_m2d_31_while_placeholder_2'
#conv_lst_m2d_31_while_placeholder_3<
8conv_lst_m2d_31_while_less_conv_lst_m2d_31_strided_sliceU
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581658___redundant_placeholder0U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581658___redundant_placeholder1U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581658___redundant_placeholder2U
Qconv_lst_m2d_31_while_conv_lst_m2d_31_while_cond_2581658___redundant_placeholder3"
conv_lst_m2d_31_while_identity
?
conv_lst_m2d_31/while/LessLess!conv_lst_m2d_31_while_placeholder8conv_lst_m2d_31_while_less_conv_lst_m2d_31_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_31/while/Less?
conv_lst_m2d_31/while/IdentityIdentityconv_lst_m2d_31/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_31/while/Identity"I
conv_lst_m2d_31_while_identity'conv_lst_m2d_31/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2580413

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilek

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:?????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2580287*
condR
while_cond_2580286*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
transpose_1v
IdentityIdentitytranspose_1:y:0^NoOp*
T0*3
_output_shapes!
:?????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?9
?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2579006

inputs"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????F2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:FK2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????K:?????????K:?????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_25788742
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????K:?????????K: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2578938*
condR
while_cond_2578937*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????K*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????K2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identityp
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????F
 
_user_specified_nameinputs
?
?
while_cond_2578937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2578937___redundant_placeholder05
1while_while_cond_2578937___redundant_placeholder15
1while_while_cond_2578937___redundant_placeholder25
1while_while_cond_2578937___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_dense_53_layer_call_and_return_conditional_losses_2583824

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2578285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2578285___redundant_placeholder05
1while_while_cond_2578285___redundant_placeholder15
1while_while_cond_2578285___redundant_placeholder25
1while_while_cond_2578285___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?e
?
while_body_2581954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0:F?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource:F?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????F2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????F2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????F2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????F2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????F2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????F2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?o
?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582300
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource:F?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
Sums
zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????F2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????F2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????F2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????F2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????F2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????F2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????F2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????F2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????F2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????F2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????F2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????F2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????F2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????F2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????F2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2582174*
condR
while_cond_2582173*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????F2
transpose_1
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????F2

Identity?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2582173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2582173___redundant_placeholder05
1while_while_cond_2582173___redundant_placeholder15
1while_while_cond_2582173___redundant_placeholder25
1while_while_cond_2582173___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????F:51
/
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_dense_52_layer_call_and_return_conditional_losses_2583804

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?e
?
while_body_2579603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2583565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2583565___redundant_placeholder05
1while_while_cond_2583565___redundant_placeholder15
1while_while_cond_2583565___redundant_placeholder25
1while_while_cond_2583565___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????K:?????????K: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
:
??
?)
#__inference__traced_restore_2584604
file_prefix;
!assignvariableop_conv2d_10_kernel:F/
!assignvariableop_1_conv2d_10_bias:F=
#assignvariableop_2_conv2d_11_kernel:FK/
!assignvariableop_3_conv2d_11_bias:K5
"assignvariableop_4_dense_50_kernel:	?2.
 assignvariableop_5_dense_50_bias:24
"assignvariableop_6_dense_51_kernel:K2.
 assignvariableop_7_dense_51_bias:24
"assignvariableop_8_dense_52_kernel:22.
 assignvariableop_9_dense_52_bias:25
#assignvariableop_10_dense_53_kernel:2/
!assignvariableop_11_dense_53_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: E
*assignvariableop_17_conv_lst_m2d_30_kernel:?O
4assignvariableop_18_conv_lst_m2d_30_recurrent_kernel:F?7
(assignvariableop_19_conv_lst_m2d_30_bias:	?E
*assignvariableop_20_conv_lst_m2d_31_kernel:F?O
4assignvariableop_21_conv_lst_m2d_31_recurrent_kernel:K?7
(assignvariableop_22_conv_lst_m2d_31_bias:	?#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: E
+assignvariableop_27_adam_conv2d_10_kernel_m:F7
)assignvariableop_28_adam_conv2d_10_bias_m:FE
+assignvariableop_29_adam_conv2d_11_kernel_m:FK7
)assignvariableop_30_adam_conv2d_11_bias_m:K=
*assignvariableop_31_adam_dense_50_kernel_m:	?26
(assignvariableop_32_adam_dense_50_bias_m:2<
*assignvariableop_33_adam_dense_51_kernel_m:K26
(assignvariableop_34_adam_dense_51_bias_m:2<
*assignvariableop_35_adam_dense_52_kernel_m:226
(assignvariableop_36_adam_dense_52_bias_m:2<
*assignvariableop_37_adam_dense_53_kernel_m:26
(assignvariableop_38_adam_dense_53_bias_m:L
1assignvariableop_39_adam_conv_lst_m2d_30_kernel_m:?V
;assignvariableop_40_adam_conv_lst_m2d_30_recurrent_kernel_m:F?>
/assignvariableop_41_adam_conv_lst_m2d_30_bias_m:	?L
1assignvariableop_42_adam_conv_lst_m2d_31_kernel_m:F?V
;assignvariableop_43_adam_conv_lst_m2d_31_recurrent_kernel_m:K?>
/assignvariableop_44_adam_conv_lst_m2d_31_bias_m:	?E
+assignvariableop_45_adam_conv2d_10_kernel_v:F7
)assignvariableop_46_adam_conv2d_10_bias_v:FE
+assignvariableop_47_adam_conv2d_11_kernel_v:FK7
)assignvariableop_48_adam_conv2d_11_bias_v:K=
*assignvariableop_49_adam_dense_50_kernel_v:	?26
(assignvariableop_50_adam_dense_50_bias_v:2<
*assignvariableop_51_adam_dense_51_kernel_v:K26
(assignvariableop_52_adam_dense_51_bias_v:2<
*assignvariableop_53_adam_dense_52_kernel_v:226
(assignvariableop_54_adam_dense_52_bias_v:2<
*assignvariableop_55_adam_dense_53_kernel_v:26
(assignvariableop_56_adam_dense_53_bias_v:L
1assignvariableop_57_adam_conv_lst_m2d_30_kernel_v:?V
;assignvariableop_58_adam_conv_lst_m2d_30_recurrent_kernel_v:F?>
/assignvariableop_59_adam_conv_lst_m2d_30_bias_v:	?L
1assignvariableop_60_adam_conv_lst_m2d_31_kernel_v:F?V
;assignvariableop_61_adam_conv_lst_m2d_31_recurrent_kernel_v:K?>
/assignvariableop_62_adam_conv_lst_m2d_31_bias_v:	?
identity_64??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?"
value?"B?"@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_50_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_50_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_51_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_51_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_52_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_52_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_53_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_53_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_conv_lst_m2d_30_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_conv_lst_m2d_30_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_conv_lst_m2d_30_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_conv_lst_m2d_31_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_conv_lst_m2d_31_recurrent_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_conv_lst_m2d_31_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_10_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_50_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_50_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_51_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_51_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_52_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_52_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_53_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_53_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_conv_lst_m2d_30_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp;assignvariableop_40_adam_conv_lst_m2d_30_recurrent_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_adam_conv_lst_m2d_30_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_adam_conv_lst_m2d_31_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp;assignvariableop_43_adam_conv_lst_m2d_31_recurrent_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp/assignvariableop_44_adam_conv_lst_m2d_31_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_10_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_10_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_11_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_11_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_50_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_50_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_51_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_51_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_52_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_52_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_53_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_53_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp1assignvariableop_57_adam_conv_lst_m2d_30_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_adam_conv_lst_m2d_30_recurrent_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_adam_conv_lst_m2d_30_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp1assignvariableop_60_adam_conv_lst_m2d_31_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp;assignvariableop_61_adam_conv_lst_m2d_31_recurrent_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp/assignvariableop_62_adam_conv_lst_m2d_31_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_629
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_63f
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_64?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_64Identity_64:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?D
?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2578874

inputs

states
states_18
split_readvariableop_resource:F?:
split_1_readvariableop_resource:K?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:F?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????K2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????K2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????K2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????K2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????K2
Mull
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????K2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????K2
Mul_1n
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????K2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????K2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????K2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????K2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????K2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????K2
Mul_4n
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????K2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????K2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
mul_5l
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identityp

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_1p

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????K2

Identity_2?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????F:?????????K:?????????K: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????F
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????K
 
_user_specified_namestates:WS
/
_output_shapes
:?????????K
 
_user_specified_namestates
?
?
*__inference_model_15_layer_call_fn_2580610
conv_lst_m2d_30_input
conv2d_10_input!
unknown:F
	unknown_0:F$
	unknown_1:?$
	unknown_2:F?
	unknown_3:	?#
	unknown_4:FK
	unknown_5:K$
	unknown_6:F?$
	unknown_7:K?
	unknown_8:	?
	unknown_9:	?2

unknown_10:2

unknown_11:K2

unknown_12:2

unknown_13:22

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_30_inputconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_25805292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_30_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_10_input
?	
?
1__inference_conv_lst_m2d_31_layer_call_fn_2582771
inputs_0"
unknown:F?$
	unknown_0:K?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????K*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_25787682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????K2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????F: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????F
"
_user_specified_name
inputs/0
?e
?
while_body_2583344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:F?B
'while_split_1_readvariableop_resource_0:K?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:F?@
%while_split_1_readvariableop_resource:K?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????K2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????K2
	while/Mul?
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_1?
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????K2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????K2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
while/Mul_4?
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????K2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9k
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1o
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????K2
while/Identity_5?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????K:51
/
_output_shapes
:?????????K:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_10_input@
!serving_default_conv2d_10_input:0?????????
c
conv_lst_m2d_30_inputJ
'serving_default_conv_lst_m2d_30_input:0?????????<
dense_530
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 cell
!
state_spec
"trainable_variables
#regularization_losses
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,trainable_variables
-regularization_losses
.	variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0trainable_variables
1regularization_losses
2	variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Dkernel
Ebias
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?&m?'m?4m?5m?:m?;m?Dm?Em?Jm?Km?Um?Vm?Wm?Xm?Ym?Zm?v?v?&v?'v?4v?5v?:v?;v?Dv?Ev?Jv?Kv?Uv?Vv?Wv?Xv?Yv?Zv?"
	optimizer
?
U0
V1
W2
3
4
X5
Y6
Z7
&8
'9
410
511
:12
;13
D14
E15
J16
K17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
U0
V1
W2
3
4
X5
Y6
Z7
&8
'9
410
511
:12
;13
D14
E15
J16
K17"
trackable_list_wrapper
?
[layer_metrics
\metrics
]non_trainable_variables
trainable_variables

^layers
regularization_losses
_layer_regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

Ukernel
Vrecurrent_kernel
Wbias
`trainable_variables
aregularization_losses
b	variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
?
dlayer_metrics
emetrics
fnon_trainable_variables
trainable_variables

glayers
regularization_losses
hlayer_regularization_losses

istates
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(F2conv2d_10/kernel
:F2conv2d_10/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
jlayer_metrics
kmetrics
lnon_trainable_variables
trainable_variables

mlayers
regularization_losses
nlayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Xkernel
Yrecurrent_kernel
Zbias
otrainable_variables
pregularization_losses
q	variables
r	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
X0
Y1
Z2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
X0
Y1
Z2"
trackable_list_wrapper
?
slayer_metrics
tmetrics
unon_trainable_variables
"trainable_variables

vlayers
#regularization_losses
wlayer_regularization_losses

xstates
$	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(FK2conv2d_11/kernel
:K2conv2d_11/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
ylayer_metrics
zmetrics
{non_trainable_variables
(trainable_variables

|layers
)regularization_losses
}layer_regularization_losses
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~layer_metrics
metrics
?non_trainable_variables
,trainable_variables
?layers
-regularization_losses
 ?layer_regularization_losses
.	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
0trainable_variables
?layers
1regularization_losses
 ?layer_regularization_losses
2	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?22dense_50/kernel
:22dense_50/bias
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
6trainable_variables
?layers
7regularization_losses
 ?layer_regularization_losses
8	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:K22dense_51/kernel
:22dense_51/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
<trainable_variables
?layers
=regularization_losses
 ?layer_regularization_losses
>	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
@trainable_variables
?layers
Aregularization_losses
 ?layer_regularization_losses
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:222dense_52/kernel
:22dense_52/bias
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
Ftrainable_variables
?layers
Gregularization_losses
 ?layer_regularization_losses
H	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:22dense_53/kernel
:2dense_53/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
Ltrainable_variables
?layers
Mregularization_losses
 ?layer_regularization_losses
N	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
1:/?2conv_lst_m2d_30/kernel
;:9F?2 conv_lst_m2d_30/recurrent_kernel
#:!?2conv_lst_m2d_30/bias
1:/F?2conv_lst_m2d_31/kernel
;:9K?2 conv_lst_m2d_31/recurrent_kernel
#:!?2conv_lst_m2d_31/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
b	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
X0
Y1
Z2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
X0
Y1
Z2"
trackable_list_wrapper
?
?layer_metrics
?metrics
?non_trainable_variables
otrainable_variables
?layers
pregularization_losses
 ?layer_regularization_losses
q	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-F2Adam/conv2d_10/kernel/m
!:F2Adam/conv2d_10/bias/m
/:-FK2Adam/conv2d_11/kernel/m
!:K2Adam/conv2d_11/bias/m
':%	?22Adam/dense_50/kernel/m
 :22Adam/dense_50/bias/m
&:$K22Adam/dense_51/kernel/m
 :22Adam/dense_51/bias/m
&:$222Adam/dense_52/kernel/m
 :22Adam/dense_52/bias/m
&:$22Adam/dense_53/kernel/m
 :2Adam/dense_53/bias/m
6:4?2Adam/conv_lst_m2d_30/kernel/m
@:>F?2'Adam/conv_lst_m2d_30/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_30/bias/m
6:4F?2Adam/conv_lst_m2d_31/kernel/m
@:>K?2'Adam/conv_lst_m2d_31/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_31/bias/m
/:-F2Adam/conv2d_10/kernel/v
!:F2Adam/conv2d_10/bias/v
/:-FK2Adam/conv2d_11/kernel/v
!:K2Adam/conv2d_11/bias/v
':%	?22Adam/dense_50/kernel/v
 :22Adam/dense_50/bias/v
&:$K22Adam/dense_51/kernel/v
 :22Adam/dense_51/bias/v
&:$222Adam/dense_52/kernel/v
 :22Adam/dense_52/bias/v
&:$22Adam/dense_53/kernel/v
 :2Adam/dense_53/bias/v
6:4?2Adam/conv_lst_m2d_30/kernel/v
@:>F?2'Adam/conv_lst_m2d_30/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_30/bias/v
6:4F?2Adam/conv_lst_m2d_31/kernel/v
@:>K?2'Adam/conv_lst_m2d_31/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_31/bias/v
?B?
"__inference__wrapped_model_2577934conv_lst_m2d_30_inputconv2d_10_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_model_15_layer_call_fn_2579867
*__inference_model_15_layer_call_fn_2580806
*__inference_model_15_layer_call_fn_2580848
*__inference_model_15_layer_call_fn_2580610?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_15_layer_call_and_return_conditional_losses_2581332
E__inference_model_15_layer_call_and_return_conditional_losses_2581816
E__inference_model_15_layer_call_and_return_conditional_losses_2580662
E__inference_model_15_layer_call_and_return_conditional_losses_2580714?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_conv_lst_m2d_30_layer_call_fn_2581827
1__inference_conv_lst_m2d_30_layer_call_fn_2581838
1__inference_conv_lst_m2d_30_layer_call_fn_2581849
1__inference_conv_lst_m2d_30_layer_call_fn_2581860?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582080
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582300
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582520
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582740?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_10_layer_call_fn_2582749?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_2582760?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_conv_lst_m2d_31_layer_call_fn_2582771
1__inference_conv_lst_m2d_31_layer_call_fn_2582782
1__inference_conv_lst_m2d_31_layer_call_fn_2582793
1__inference_conv_lst_m2d_31_layer_call_fn_2582804?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583026
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583248
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583470
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583692?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_11_layer_call_fn_2583701?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_2583712?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_20_layer_call_fn_2583717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_20_layer_call_and_return_conditional_losses_2583723?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_21_layer_call_fn_2583728?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_21_layer_call_and_return_conditional_losses_2583734?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_50_layer_call_fn_2583743?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_50_layer_call_and_return_conditional_losses_2583753?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_51_layer_call_fn_2583762?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_51_layer_call_and_return_conditional_losses_2583772?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_add_15_layer_call_fn_2583778?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_add_15_layer_call_and_return_conditional_losses_2583784?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_52_layer_call_fn_2583793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_52_layer_call_and_return_conditional_losses_2583804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_53_layer_call_fn_2583813?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_53_layer_call_and_return_conditional_losses_2583824?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2580764conv2d_10_inputconv_lst_m2d_30_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv_lstm_cell_30_layer_call_fn_2583841
3__inference_conv_lstm_cell_30_layer_call_fn_2583858?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2583933
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2584008?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_conv_lstm_cell_31_layer_call_fn_2584025
3__inference_conv_lstm_cell_31_layer_call_fn_2584042?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584117
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584192?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_2577934?UVW&'XYZ45:;DEJK??
x?u
s?p
;?8
conv_lst_m2d_30_input?????????
1?.
conv2d_10_input?????????
? "3?0
.
dense_53"?
dense_53??????????
C__inference_add_15_layer_call_and_return_conditional_losses_2583784?Z?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "%?"
?
0?????????2
? ?
(__inference_add_15_layer_call_fn_2583778vZ?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "??????????2?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_2582760l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????F
? ?
+__inference_conv2d_10_layer_call_fn_2582749_7?4
-?*
(?%
inputs?????????
? " ??????????F?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_2583712l&'7?4
-?*
(?%
inputs?????????F
? "-?*
#? 
0?????????K
? ?
+__inference_conv2d_11_layer_call_fn_2583701_&'7?4
-?*
(?%
inputs?????????F
? " ??????????K?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582080?UVWW?T
M?J
<?9
7?4
inputs/0&??????????????????

 
p 

 
? ":?7
0?-
0&??????????????????F
? ?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582300?UVWW?T
M?J
<?9
7?4
inputs/0&??????????????????

 
p

 
? ":?7
0?-
0&??????????????????F
? ?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582520?UVWG?D
=?:
,?)
inputs?????????

 
p 

 
? "1?.
'?$
0?????????F
? ?
L__inference_conv_lst_m2d_30_layer_call_and_return_conditional_losses_2582740?UVWG?D
=?:
,?)
inputs?????????

 
p

 
? "1?.
'?$
0?????????F
? ?
1__inference_conv_lst_m2d_30_layer_call_fn_2581827?UVWW?T
M?J
<?9
7?4
inputs/0&??????????????????

 
p 

 
? "-?*&??????????????????F?
1__inference_conv_lst_m2d_30_layer_call_fn_2581838?UVWW?T
M?J
<?9
7?4
inputs/0&??????????????????

 
p

 
? "-?*&??????????????????F?
1__inference_conv_lst_m2d_30_layer_call_fn_2581849tUVWG?D
=?:
,?)
inputs?????????

 
p 

 
? "$?!?????????F?
1__inference_conv_lst_m2d_30_layer_call_fn_2581860tUVWG?D
=?:
,?)
inputs?????????

 
p

 
? "$?!?????????F?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583026?XYZW?T
M?J
<?9
7?4
inputs/0&??????????????????F

 
p 

 
? ":?7
0?-
0&??????????????????K
? ?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583248?XYZW?T
M?J
<?9
7?4
inputs/0&??????????????????F

 
p

 
? ":?7
0?-
0&??????????????????K
? ?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583470?XYZG?D
=?:
,?)
inputs?????????F

 
p 

 
? "1?.
'?$
0?????????K
? ?
L__inference_conv_lst_m2d_31_layer_call_and_return_conditional_losses_2583692?XYZG?D
=?:
,?)
inputs?????????F

 
p

 
? "1?.
'?$
0?????????K
? ?
1__inference_conv_lst_m2d_31_layer_call_fn_2582771?XYZW?T
M?J
<?9
7?4
inputs/0&??????????????????F

 
p 

 
? "-?*&??????????????????K?
1__inference_conv_lst_m2d_31_layer_call_fn_2582782?XYZW?T
M?J
<?9
7?4
inputs/0&??????????????????F

 
p

 
? "-?*&??????????????????K?
1__inference_conv_lst_m2d_31_layer_call_fn_2582793tXYZG?D
=?:
,?)
inputs?????????F

 
p 

 
? "$?!?????????K?
1__inference_conv_lst_m2d_31_layer_call_fn_2582804tXYZG?D
=?:
,?)
inputs?????????F

 
p

 
? "$?!?????????K?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2583933?UVW???
???
(?%
inputs?????????
[?X
*?'
states/0?????????F
*?'
states/1?????????F
p 
? "???
??~
%?"
0/0?????????F
U?R
'?$
0/1/0?????????F
'?$
0/1/1?????????F
? ?
N__inference_conv_lstm_cell_30_layer_call_and_return_conditional_losses_2584008?UVW???
???
(?%
inputs?????????
[?X
*?'
states/0?????????F
*?'
states/1?????????F
p
? "???
??~
%?"
0/0?????????F
U?R
'?$
0/1/0?????????F
'?$
0/1/1?????????F
? ?
3__inference_conv_lstm_cell_30_layer_call_fn_2583841?UVW???
???
(?%
inputs?????????
[?X
*?'
states/0?????????F
*?'
states/1?????????F
p 
? "{?x
#? 
0?????????F
Q?N
%?"
1/0?????????F
%?"
1/1?????????F?
3__inference_conv_lstm_cell_30_layer_call_fn_2583858?UVW???
???
(?%
inputs?????????
[?X
*?'
states/0?????????F
*?'
states/1?????????F
p
? "{?x
#? 
0?????????F
Q?N
%?"
1/0?????????F
%?"
1/1?????????F?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584117?XYZ???
???
(?%
inputs?????????F
[?X
*?'
states/0?????????K
*?'
states/1?????????K
p 
? "???
??~
%?"
0/0?????????K
U?R
'?$
0/1/0?????????K
'?$
0/1/1?????????K
? ?
N__inference_conv_lstm_cell_31_layer_call_and_return_conditional_losses_2584192?XYZ???
???
(?%
inputs?????????F
[?X
*?'
states/0?????????K
*?'
states/1?????????K
p
? "???
??~
%?"
0/0?????????K
U?R
'?$
0/1/0?????????K
'?$
0/1/1?????????K
? ?
3__inference_conv_lstm_cell_31_layer_call_fn_2584025?XYZ???
???
(?%
inputs?????????F
[?X
*?'
states/0?????????K
*?'
states/1?????????K
p 
? "{?x
#? 
0?????????K
Q?N
%?"
1/0?????????K
%?"
1/1?????????K?
3__inference_conv_lstm_cell_31_layer_call_fn_2584042?XYZ???
???
(?%
inputs?????????F
[?X
*?'
states/0?????????K
*?'
states/1?????????K
p
? "{?x
#? 
0?????????K
Q?N
%?"
1/0?????????K
%?"
1/1?????????K?
E__inference_dense_50_layer_call_and_return_conditional_losses_2583753]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????2
? ~
*__inference_dense_50_layer_call_fn_2583743P450?-
&?#
!?
inputs??????????
? "??????????2?
E__inference_dense_51_layer_call_and_return_conditional_losses_2583772\:;/?,
%?"
 ?
inputs?????????K
? "%?"
?
0?????????2
? }
*__inference_dense_51_layer_call_fn_2583762O:;/?,
%?"
 ?
inputs?????????K
? "??????????2?
E__inference_dense_52_layer_call_and_return_conditional_losses_2583804\DE/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_dense_52_layer_call_fn_2583793ODE/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_dense_53_layer_call_and_return_conditional_losses_2583824\JK/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_53_layer_call_fn_2583813OJK/?,
%?"
 ?
inputs?????????2
? "???????????
G__inference_flatten_20_layer_call_and_return_conditional_losses_2583723e;?8
1?.
,?)
inputs?????????K
? "&?#
?
0??????????
? ?
,__inference_flatten_20_layer_call_fn_2583717X;?8
1?.
,?)
inputs?????????K
? "????????????
G__inference_flatten_21_layer_call_and_return_conditional_losses_2583734`7?4
-?*
(?%
inputs?????????K
? "%?"
?
0?????????K
? ?
,__inference_flatten_21_layer_call_fn_2583728S7?4
-?*
(?%
inputs?????????K
? "??????????K?
E__inference_model_15_layer_call_and_return_conditional_losses_2580662?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_30_input?????????
1?.
conv2d_10_input?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_15_layer_call_and_return_conditional_losses_2580714?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_30_input?????????
1?.
conv2d_10_input?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_15_layer_call_and_return_conditional_losses_2581332?UVW&'XYZ45:;DEJKv?s
l?i
_?\
.?+
inputs/0?????????
*?'
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_15_layer_call_and_return_conditional_losses_2581816?UVW&'XYZ45:;DEJKv?s
l?i
_?\
.?+
inputs/0?????????
*?'
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_model_15_layer_call_fn_2579867?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_30_input?????????
1?.
conv2d_10_input?????????
p 

 
? "???????????
*__inference_model_15_layer_call_fn_2580610?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_30_input?????????
1?.
conv2d_10_input?????????
p

 
? "???????????
*__inference_model_15_layer_call_fn_2580806?UVW&'XYZ45:;DEJKv?s
l?i
_?\
.?+
inputs/0?????????
*?'
inputs/1?????????
p 

 
? "???????????
*__inference_model_15_layer_call_fn_2580848?UVW&'XYZ45:;DEJKv?s
l?i
_?\
.?+
inputs/0?????????
*?'
inputs/1?????????
p

 
? "???????????
%__inference_signature_wrapper_2580764?UVW&'XYZ45:;DEJK???
? 
???
D
conv2d_10_input1?.
conv2d_10_input?????????
T
conv_lst_m2d_30_input;?8
conv_lst_m2d_30_input?????????"3?0
.
dense_53"?
dense_53?????????