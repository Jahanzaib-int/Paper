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
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:F*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:F*
dtype0
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:FK*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:K*
dtype0
{
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2* 
shared_namedense_62/kernel
t
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes
:	?2*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:2*
dtype0
z
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2* 
shared_namedense_63/kernel
s
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes

:K2*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes
:2*
dtype0
z
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namedense_64/kernel
s
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes

:22*
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
:2*
dtype0
z
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_65/kernel
s
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes

:2*
dtype0
r
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_65/bias
k
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
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
conv_lst_m2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameconv_lst_m2d_36/kernel
?
*conv_lst_m2d_36/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_36/kernel*'
_output_shapes
:?*
dtype0
?
 conv_lst_m2d_36/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*1
shared_name" conv_lst_m2d_36/recurrent_kernel
?
4conv_lst_m2d_36/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_36/recurrent_kernel*'
_output_shapes
:F?*
dtype0
?
conv_lst_m2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_36/bias
z
(conv_lst_m2d_36/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_36/bias*
_output_shapes	
:?*
dtype0
?
conv_lst_m2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*'
shared_nameconv_lst_m2d_37/kernel
?
*conv_lst_m2d_37/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_37/kernel*'
_output_shapes
:F?*
dtype0
?
 conv_lst_m2d_37/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*1
shared_name" conv_lst_m2d_37/recurrent_kernel
?
4conv_lst_m2d_37/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_37/recurrent_kernel*'
_output_shapes
:K?*
dtype0
?
conv_lst_m2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_37/bias
z
(conv_lst_m2d_37/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_37/bias*
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
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_16/kernel/m
?
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
:F*
dtype0
?
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_17/kernel/m
?
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:K*
dtype0
?
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_62/kernel/m
?
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes
:	?2*
dtype0
?
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_63/kernel/m
?
*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes

:K2*
dtype0
?
Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_64/kernel/m
?
*Adam/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/m*
_output_shapes

:22*
dtype0
?
Adam/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_64/bias/m
y
(Adam/dense_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_65/kernel/m
?
*Adam/dense_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/m
y
(Adam/dense_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_36/kernel/m
?
1Adam/conv_lst_m2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_36/kernel/m*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_36/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_36/recurrent_kernel/m
?
;Adam/conv_lst_m2d_36/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_36/recurrent_kernel/m*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_36/bias/m
?
/Adam/conv_lst_m2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_36/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_37/kernel/m
?
1Adam/conv_lst_m2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_37/kernel/m*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_37/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_37/recurrent_kernel/m
?
;Adam/conv_lst_m2d_37/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_37/recurrent_kernel/m*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_37/bias/m
?
/Adam/conv_lst_m2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_37/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_16/kernel/v
?
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
:F*
dtype0
?
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_17/kernel/v
?
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:K*
dtype0
?
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_62/kernel/v
?
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes
:	?2*
dtype0
?
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_63/kernel/v
?
*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes

:K2*
dtype0
?
Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_64/kernel/v
?
*Adam/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/v*
_output_shapes

:22*
dtype0
?
Adam/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_64/bias/v
y
(Adam/dense_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_65/kernel/v
?
*Adam/dense_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/v
y
(Adam/dense_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_36/kernel/v
?
1Adam/conv_lst_m2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_36/kernel/v*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_36/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_36/recurrent_kernel/v
?
;Adam/conv_lst_m2d_36/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_36/recurrent_kernel/v*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_36/bias/v
?
/Adam/conv_lst_m2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_36/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_37/kernel/v
?
1Adam/conv_lst_m2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_37/kernel/v*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_37/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_37/recurrent_kernel/v
?
;Adam/conv_lst_m2d_37/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_37/recurrent_kernel/v*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_37/bias/v
?
/Adam/conv_lst_m2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_37/bias/v*
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
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_62/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_62/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_63/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_63/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_64/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_64/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_65/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv_lst_m2d_36/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_36/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_36/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEconv_lst_m2d_37/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_37/recurrent_kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_37/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_64/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_36/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_36/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_36/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_37/kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_37/recurrent_kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_37/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_64/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_36/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_36/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_36/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_37/kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_37/recurrent_kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_37/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_16_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
%serving_default_conv_lst_m2d_36_inputPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_16_input%serving_default_conv_lst_m2d_36_inputconv2d_16/kernelconv2d_16/biasconv_lst_m2d_36/kernel conv_lst_m2d_36/recurrent_kernelconv_lst_m2d_36/biasconv2d_17/kernelconv2d_17/biasconv_lst_m2d_37/kernel conv_lst_m2d_37/recurrent_kernelconv_lst_m2d_37/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/biasdense_65/kerneldense_65/bias*
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
%__inference_signature_wrapper_3074137
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOp#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOp#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*conv_lst_m2d_36/kernel/Read/ReadVariableOp4conv_lst_m2d_36/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_36/bias/Read/ReadVariableOp*conv_lst_m2d_37/kernel/Read/ReadVariableOp4conv_lst_m2d_37/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_37/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp*Adam/dense_64/kernel/m/Read/ReadVariableOp(Adam/dense_64/bias/m/Read/ReadVariableOp*Adam/dense_65/kernel/m/Read/ReadVariableOp(Adam/dense_65/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_36/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_36/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_36/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_37/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_37/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_37/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOp*Adam/dense_64/kernel/v/Read/ReadVariableOp(Adam/dense_64/bias/v/Read/ReadVariableOp*Adam/dense_65/kernel/v/Read/ReadVariableOp(Adam/dense_65/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_36/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_36/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_36/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_37/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_37/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_37/bias/v/Read/ReadVariableOpConst*L
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
 __inference__traced_save_3077778
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/biasdense_65/kerneldense_65/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv_lst_m2d_36/kernel conv_lst_m2d_36/recurrent_kernelconv_lst_m2d_36/biasconv_lst_m2d_37/kernel conv_lst_m2d_37/recurrent_kernelconv_lst_m2d_37/biastotalcounttotal_1count_1Adam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/dense_64/kernel/mAdam/dense_64/bias/mAdam/dense_65/kernel/mAdam/dense_65/bias/mAdam/conv_lst_m2d_36/kernel/m'Adam/conv_lst_m2d_36/recurrent_kernel/mAdam/conv_lst_m2d_36/bias/mAdam/conv_lst_m2d_37/kernel/m'Adam/conv_lst_m2d_37/recurrent_kernel/mAdam/conv_lst_m2d_37/bias/mAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/vAdam/dense_64/kernel/vAdam/dense_64/bias/vAdam/dense_65/kernel/vAdam/dense_65/bias/vAdam/conv_lst_m2d_36/kernel/v'Adam/conv_lst_m2d_36/recurrent_kernel/vAdam/conv_lst_m2d_36/bias/vAdam/conv_lst_m2d_37/kernel/v'Adam/conv_lst_m2d_37/recurrent_kernel/vAdam/conv_lst_m2d_37/bias/v*K
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
#__inference__traced_restore_3077977??5
?
?
E__inference_dense_64_layer_call_and_return_conditional_losses_3077177

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
?
?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3077085

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
?p
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3073102

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
while_body_3072976*
condR
while_cond_3072975*[
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
?o
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075673
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
while_body_3075547*
condR
while_cond_3075546*[
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
?o
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3073786

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
while_body_3073660*
condR
while_cond_3073659*[
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
?:
?
E__inference_model_18_layer_call_and_return_conditional_losses_3074087
conv_lst_m2d_36_input
conv2d_16_input+
conv2d_16_3074039:F
conv2d_16_3074041:F2
conv_lst_m2d_36_3074044:?2
conv_lst_m2d_36_3074046:F?&
conv_lst_m2d_36_3074048:	?+
conv2d_17_3074051:FK
conv2d_17_3074053:K2
conv_lst_m2d_37_3074056:F?2
conv_lst_m2d_37_3074058:K?&
conv_lst_m2d_37_3074060:	?#
dense_62_3074065:	?2
dense_62_3074067:2"
dense_63_3074070:K2
dense_63_3074072:2"
dense_64_3074076:22
dense_64_3074078:2"
dense_65_3074081:2
dense_65_3074083:
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?'conv_lst_m2d_36/StatefulPartitionedCall?'conv_lst_m2d_37/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_3074039conv2d_16_3074041*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_30726312#
!conv2d_16/StatefulPartitionedCall?
'conv_lst_m2d_36/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_36_inputconv_lst_m2d_36_3074044conv_lst_m2d_36_3074046conv_lst_m2d_36_3074048*
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30737862)
'conv_lst_m2d_36/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_3074051conv2d_17_3074053*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_30728752#
!conv2d_17/StatefulPartitionedCall?
'conv_lst_m2d_37/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_36/StatefulPartitionedCall:output:0conv_lst_m2d_37_3074056conv_lst_m2d_37_3074058conv_lst_m2d_37_3074060*
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30735342)
'conv_lst_m2d_37/StatefulPartitionedCall?
flatten_27/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
G__inference_flatten_27_layer_call_and_return_conditional_losses_30731162
flatten_27/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall0conv_lst_m2d_37/StatefulPartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_30731242
flatten_26/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_62_3074065dense_62_3074067*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_30731362"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_63_3074070dense_63_3074072*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_30731522"
 dense_63/StatefulPartitionedCall?
add_18/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0)dense_63/StatefulPartitionedCall:output:0*
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
C__inference_add_18_layer_call_and_return_conditional_losses_30731642
add_18/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalladd_18/PartitionedCall:output:0dense_64_3074076dense_64_3074078*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_30731772"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_3074081dense_65_3074083*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_30731942"
 dense_65/StatefulPartitionedCall?
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall(^conv_lst_m2d_36/StatefulPartitionedCall(^conv_lst_m2d_37/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2R
'conv_lst_m2d_36/StatefulPartitionedCall'conv_lst_m2d_36/StatefulPartitionedCall2R
'conv_lst_m2d_37/StatefulPartitionedCall'conv_lst_m2d_37/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_36_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_16_input
?7
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3071727

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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30715972
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
while_body_3071659*
condR
while_cond_3071658*[
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
?
?
while_cond_3075986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3075986___redundant_placeholder05
1while_while_cond_3075986___redundant_placeholder15
1while_while_cond_3075986___redundant_placeholder25
1while_while_cond_3075986___redundant_placeholder3
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3076133

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
while_body_3072976
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
+__inference_conv2d_17_layer_call_fn_3077074

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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_30728752
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
?:
?
E__inference_model_18_layer_call_and_return_conditional_losses_3073201

inputs
inputs_1+
conv2d_16_3072632:F
conv2d_16_3072634:F2
conv_lst_m2d_36_3072857:?2
conv_lst_m2d_36_3072859:F?&
conv_lst_m2d_36_3072861:	?+
conv2d_17_3072876:FK
conv2d_17_3072878:K2
conv_lst_m2d_37_3073103:F?2
conv_lst_m2d_37_3073105:K?&
conv_lst_m2d_37_3073107:	?#
dense_62_3073137:	?2
dense_62_3073139:2"
dense_63_3073153:K2
dense_63_3073155:2"
dense_64_3073178:22
dense_64_3073180:2"
dense_65_3073195:2
dense_65_3073197:
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?'conv_lst_m2d_36/StatefulPartitionedCall?'conv_lst_m2d_37/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_16_3072632conv2d_16_3072634*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_30726312#
!conv2d_16/StatefulPartitionedCall?
'conv_lst_m2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_36_3072857conv_lst_m2d_36_3072859conv_lst_m2d_36_3072861*
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30728562)
'conv_lst_m2d_36/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_3072876conv2d_17_3072878*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_30728752#
!conv2d_17/StatefulPartitionedCall?
'conv_lst_m2d_37/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_36/StatefulPartitionedCall:output:0conv_lst_m2d_37_3073103conv_lst_m2d_37_3073105conv_lst_m2d_37_3073107*
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30731022)
'conv_lst_m2d_37/StatefulPartitionedCall?
flatten_27/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
G__inference_flatten_27_layer_call_and_return_conditional_losses_30731162
flatten_27/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall0conv_lst_m2d_37/StatefulPartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_30731242
flatten_26/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_62_3073137dense_62_3073139*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_30731362"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_63_3073153dense_63_3073155*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_30731522"
 dense_63/StatefulPartitionedCall?
add_18/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0)dense_63/StatefulPartitionedCall:output:0*
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
C__inference_add_18_layer_call_and_return_conditional_losses_30731642
add_18/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalladd_18/PartitionedCall:output:0dense_64_3073178dense_64_3073180*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_30731772"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_3073195dense_65_3073197*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_30731942"
 dense_65/StatefulPartitionedCall?
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall(^conv_lst_m2d_36/StatefulPartitionedCall(^conv_lst_m2d_37/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2R
'conv_lst_m2d_36/StatefulPartitionedCall'conv_lst_m2d_36/StatefulPartitionedCall2R
'conv_lst_m2d_37/StatefulPartitionedCall'conv_lst_m2d_37/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075453
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
while_body_3075327*
condR
while_cond_3075326*[
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
?p
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076843

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
while_body_3076717*
condR
while_cond_3076716*[
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
??
?)
#__inference__traced_restore_3077977
file_prefix;
!assignvariableop_conv2d_16_kernel:F/
!assignvariableop_1_conv2d_16_bias:F=
#assignvariableop_2_conv2d_17_kernel:FK/
!assignvariableop_3_conv2d_17_bias:K5
"assignvariableop_4_dense_62_kernel:	?2.
 assignvariableop_5_dense_62_bias:24
"assignvariableop_6_dense_63_kernel:K2.
 assignvariableop_7_dense_63_bias:24
"assignvariableop_8_dense_64_kernel:22.
 assignvariableop_9_dense_64_bias:25
#assignvariableop_10_dense_65_kernel:2/
!assignvariableop_11_dense_65_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: E
*assignvariableop_17_conv_lst_m2d_36_kernel:?O
4assignvariableop_18_conv_lst_m2d_36_recurrent_kernel:F?7
(assignvariableop_19_conv_lst_m2d_36_bias:	?E
*assignvariableop_20_conv_lst_m2d_37_kernel:F?O
4assignvariableop_21_conv_lst_m2d_37_recurrent_kernel:K?7
(assignvariableop_22_conv_lst_m2d_37_bias:	?#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: E
+assignvariableop_27_adam_conv2d_16_kernel_m:F7
)assignvariableop_28_adam_conv2d_16_bias_m:FE
+assignvariableop_29_adam_conv2d_17_kernel_m:FK7
)assignvariableop_30_adam_conv2d_17_bias_m:K=
*assignvariableop_31_adam_dense_62_kernel_m:	?26
(assignvariableop_32_adam_dense_62_bias_m:2<
*assignvariableop_33_adam_dense_63_kernel_m:K26
(assignvariableop_34_adam_dense_63_bias_m:2<
*assignvariableop_35_adam_dense_64_kernel_m:226
(assignvariableop_36_adam_dense_64_bias_m:2<
*assignvariableop_37_adam_dense_65_kernel_m:26
(assignvariableop_38_adam_dense_65_bias_m:L
1assignvariableop_39_adam_conv_lst_m2d_36_kernel_m:?V
;assignvariableop_40_adam_conv_lst_m2d_36_recurrent_kernel_m:F?>
/assignvariableop_41_adam_conv_lst_m2d_36_bias_m:	?L
1assignvariableop_42_adam_conv_lst_m2d_37_kernel_m:F?V
;assignvariableop_43_adam_conv_lst_m2d_37_recurrent_kernel_m:K?>
/assignvariableop_44_adam_conv_lst_m2d_37_bias_m:	?E
+assignvariableop_45_adam_conv2d_16_kernel_v:F7
)assignvariableop_46_adam_conv2d_16_bias_v:FE
+assignvariableop_47_adam_conv2d_17_kernel_v:FK7
)assignvariableop_48_adam_conv2d_17_bias_v:K=
*assignvariableop_49_adam_dense_62_kernel_v:	?26
(assignvariableop_50_adam_dense_62_bias_v:2<
*assignvariableop_51_adam_dense_63_kernel_v:K26
(assignvariableop_52_adam_dense_63_bias_v:2<
*assignvariableop_53_adam_dense_64_kernel_v:226
(assignvariableop_54_adam_dense_64_bias_v:2<
*assignvariableop_55_adam_dense_65_kernel_v:26
(assignvariableop_56_adam_dense_65_bias_v:L
1assignvariableop_57_adam_conv_lst_m2d_36_kernel_v:?V
;assignvariableop_58_adam_conv_lst_m2d_36_recurrent_kernel_v:F?>
/assignvariableop_59_adam_conv_lst_m2d_36_bias_v:	?L
1assignvariableop_60_adam_conv_lst_m2d_37_kernel_v:F?V
;assignvariableop_61_adam_conv_lst_m2d_37_recurrent_kernel_v:K?>
/assignvariableop_62_adam_conv_lst_m2d_37_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_64_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_64_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_65_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_65_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp*assignvariableop_17_conv_lst_m2d_36_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_conv_lst_m2d_36_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_conv_lst_m2d_36_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_conv_lst_m2d_37_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_conv_lst_m2d_37_recurrent_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_conv_lst_m2d_37_biasIdentity_22:output:0"/device:CPU:0*
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
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_16_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_17_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_17_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_62_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_62_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_63_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_63_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_64_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_64_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_65_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_65_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_conv_lst_m2d_36_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp;assignvariableop_40_adam_conv_lst_m2d_36_recurrent_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_adam_conv_lst_m2d_36_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_adam_conv_lst_m2d_37_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp;assignvariableop_43_adam_conv_lst_m2d_37_recurrent_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp/assignvariableop_44_adam_conv_lst_m2d_37_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_16_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_16_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_17_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_17_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_62_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_62_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_63_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_63_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_64_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_64_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_65_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_65_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp1assignvariableop_57_adam_conv_lst_m2d_36_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_adam_conv_lst_m2d_36_recurrent_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_adam_conv_lst_m2d_36_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp1assignvariableop_60_adam_conv_lst_m2d_37_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp;assignvariableop_61_adam_conv_lst_m2d_37_recurrent_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp/assignvariableop_62_adam_conv_lst_m2d_37_bias_vIdentity_62:output:0"/device:CPU:0*
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
?
?
*__inference_model_18_layer_call_fn_3074179
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
E__inference_model_18_layer_call_and_return_conditional_losses_30732012
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
o
C__inference_add_18_layer_call_and_return_conditional_losses_3077157
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
?
?
while_cond_3076716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3076716___redundant_placeholder05
1while_while_cond_3076716___redundant_placeholder15
1while_while_cond_3076716___redundant_placeholder25
1while_while_cond_3076716___redundant_placeholder3
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
?D
?
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077306

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
?
?
while_cond_3073659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3073659___redundant_placeholder05
1while_while_cond_3073659___redundant_placeholder15
1while_while_cond_3073659___redundant_placeholder25
1while_while_cond_3073659___redundant_placeholder3
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_3077096

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
?
?
*__inference_dense_63_layer_call_fn_3077135

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
E__inference_dense_63_layer_call_and_return_conditional_losses_30731522
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
?e
?
while_body_3073660
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
"conv_lst_m2d_37_while_cond_3074547<
8conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counterB
>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations%
!conv_lst_m2d_37_while_placeholder'
#conv_lst_m2d_37_while_placeholder_1'
#conv_lst_m2d_37_while_placeholder_2'
#conv_lst_m2d_37_while_placeholder_3<
8conv_lst_m2d_37_while_less_conv_lst_m2d_37_strided_sliceU
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3074547___redundant_placeholder0U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3074547___redundant_placeholder1U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3074547___redundant_placeholder2U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3074547___redundant_placeholder3"
conv_lst_m2d_37_while_identity
?
conv_lst_m2d_37/while/LessLess!conv_lst_m2d_37_while_placeholder8conv_lst_m2d_37_while_less_conv_lst_m2d_37_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/Less?
conv_lst_m2d_37/while/IdentityIdentityconv_lst_m2d_37/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_37/while/Identity"I
conv_lst_m2d_37_while_identity'conv_lst_m2d_37/while/Identity:output:0*(
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
?e
?
while_body_3076717
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
?D
?
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077490

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
??
?
"__inference__wrapped_model_3071307
conv_lst_m2d_36_input
conv2d_16_inputK
1model_18_conv2d_16_conv2d_readvariableop_resource:F@
2model_18_conv2d_16_biasadd_readvariableop_resource:FQ
6model_18_conv_lst_m2d_36_split_readvariableop_resource:?S
8model_18_conv_lst_m2d_36_split_1_readvariableop_resource:F?G
8model_18_conv_lst_m2d_36_split_2_readvariableop_resource:	?K
1model_18_conv2d_17_conv2d_readvariableop_resource:FK@
2model_18_conv2d_17_biasadd_readvariableop_resource:KQ
6model_18_conv_lst_m2d_37_split_readvariableop_resource:F?S
8model_18_conv_lst_m2d_37_split_1_readvariableop_resource:K?G
8model_18_conv_lst_m2d_37_split_2_readvariableop_resource:	?C
0model_18_dense_62_matmul_readvariableop_resource:	?2?
1model_18_dense_62_biasadd_readvariableop_resource:2B
0model_18_dense_63_matmul_readvariableop_resource:K2?
1model_18_dense_63_biasadd_readvariableop_resource:2B
0model_18_dense_64_matmul_readvariableop_resource:22?
1model_18_dense_64_biasadd_readvariableop_resource:2B
0model_18_dense_65_matmul_readvariableop_resource:2?
1model_18_dense_65_biasadd_readvariableop_resource:
identity??)model_18/conv2d_16/BiasAdd/ReadVariableOp?(model_18/conv2d_16/Conv2D/ReadVariableOp?)model_18/conv2d_17/BiasAdd/ReadVariableOp?(model_18/conv2d_17/Conv2D/ReadVariableOp?-model_18/conv_lst_m2d_36/split/ReadVariableOp?/model_18/conv_lst_m2d_36/split_1/ReadVariableOp?/model_18/conv_lst_m2d_36/split_2/ReadVariableOp?model_18/conv_lst_m2d_36/while?-model_18/conv_lst_m2d_37/split/ReadVariableOp?/model_18/conv_lst_m2d_37/split_1/ReadVariableOp?/model_18/conv_lst_m2d_37/split_2/ReadVariableOp?model_18/conv_lst_m2d_37/while?(model_18/dense_62/BiasAdd/ReadVariableOp?'model_18/dense_62/MatMul/ReadVariableOp?(model_18/dense_63/BiasAdd/ReadVariableOp?'model_18/dense_63/MatMul/ReadVariableOp?(model_18/dense_64/BiasAdd/ReadVariableOp?'model_18/dense_64/MatMul/ReadVariableOp?(model_18/dense_65/BiasAdd/ReadVariableOp?'model_18/dense_65/MatMul/ReadVariableOp?
(model_18/conv2d_16/Conv2D/ReadVariableOpReadVariableOp1model_18_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02*
(model_18/conv2d_16/Conv2D/ReadVariableOp?
model_18/conv2d_16/Conv2DConv2Dconv2d_16_input0model_18/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
model_18/conv2d_16/Conv2D?
)model_18/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp2model_18_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02+
)model_18/conv2d_16/BiasAdd/ReadVariableOp?
model_18/conv2d_16/BiasAddBiasAdd"model_18/conv2d_16/Conv2D:output:01model_18/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
model_18/conv2d_16/BiasAdd?
model_18/conv2d_16/ReluRelu#model_18/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
model_18/conv2d_16/Relu?
#model_18/conv_lst_m2d_36/zeros_like	ZerosLikeconv_lst_m2d_36_input*
T0*3
_output_shapes!
:?????????2%
#model_18/conv_lst_m2d_36/zeros_like?
.model_18/conv_lst_m2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_18/conv_lst_m2d_36/Sum/reduction_indices?
model_18/conv_lst_m2d_36/SumSum'model_18/conv_lst_m2d_36/zeros_like:y:07model_18/conv_lst_m2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
model_18/conv_lst_m2d_36/Sum?
model_18/conv_lst_m2d_36/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2 
model_18/conv_lst_m2d_36/zeros?
$model_18/conv_lst_m2d_36/convolutionConv2D%model_18/conv_lst_m2d_36/Sum:output:0'model_18/conv_lst_m2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2&
$model_18/conv_lst_m2d_36/convolution?
'model_18/conv_lst_m2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_18/conv_lst_m2d_36/transpose/perm?
"model_18/conv_lst_m2d_36/transpose	Transposeconv_lst_m2d_36_input0model_18/conv_lst_m2d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2$
"model_18/conv_lst_m2d_36/transpose?
model_18/conv_lst_m2d_36/ShapeShape&model_18/conv_lst_m2d_36/transpose:y:0*
T0*
_output_shapes
:2 
model_18/conv_lst_m2d_36/Shape?
,model_18/conv_lst_m2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_18/conv_lst_m2d_36/strided_slice/stack?
.model_18/conv_lst_m2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_18/conv_lst_m2d_36/strided_slice/stack_1?
.model_18/conv_lst_m2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_18/conv_lst_m2d_36/strided_slice/stack_2?
&model_18/conv_lst_m2d_36/strided_sliceStridedSlice'model_18/conv_lst_m2d_36/Shape:output:05model_18/conv_lst_m2d_36/strided_slice/stack:output:07model_18/conv_lst_m2d_36/strided_slice/stack_1:output:07model_18/conv_lst_m2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_18/conv_lst_m2d_36/strided_slice?
4model_18/conv_lst_m2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_18/conv_lst_m2d_36/TensorArrayV2/element_shape?
&model_18/conv_lst_m2d_36/TensorArrayV2TensorListReserve=model_18/conv_lst_m2d_36/TensorArrayV2/element_shape:output:0/model_18/conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_18/conv_lst_m2d_36/TensorArrayV2?
Nmodel_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2P
Nmodel_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_18/conv_lst_m2d_36/transpose:y:0Wmodel_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor?
.model_18/conv_lst_m2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_18/conv_lst_m2d_36/strided_slice_1/stack?
0model_18/conv_lst_m2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_36/strided_slice_1/stack_1?
0model_18/conv_lst_m2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_36/strided_slice_1/stack_2?
(model_18/conv_lst_m2d_36/strided_slice_1StridedSlice&model_18/conv_lst_m2d_36/transpose:y:07model_18/conv_lst_m2d_36/strided_slice_1/stack:output:09model_18/conv_lst_m2d_36/strided_slice_1/stack_1:output:09model_18/conv_lst_m2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2*
(model_18/conv_lst_m2d_36/strided_slice_1?
(model_18/conv_lst_m2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_18/conv_lst_m2d_36/split/split_dim?
-model_18/conv_lst_m2d_36/split/ReadVariableOpReadVariableOp6model_18_conv_lst_m2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype02/
-model_18/conv_lst_m2d_36/split/ReadVariableOp?
model_18/conv_lst_m2d_36/splitSplit1model_18/conv_lst_m2d_36/split/split_dim:output:05model_18/conv_lst_m2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2 
model_18/conv_lst_m2d_36/split?
*model_18/conv_lst_m2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_18/conv_lst_m2d_36/split_1/split_dim?
/model_18/conv_lst_m2d_36/split_1/ReadVariableOpReadVariableOp8model_18_conv_lst_m2d_36_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype021
/model_18/conv_lst_m2d_36/split_1/ReadVariableOp?
 model_18/conv_lst_m2d_36/split_1Split3model_18/conv_lst_m2d_36/split_1/split_dim:output:07model_18/conv_lst_m2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2"
 model_18/conv_lst_m2d_36/split_1?
*model_18/conv_lst_m2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_18/conv_lst_m2d_36/split_2/split_dim?
/model_18/conv_lst_m2d_36/split_2/ReadVariableOpReadVariableOp8model_18_conv_lst_m2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_18/conv_lst_m2d_36/split_2/ReadVariableOp?
 model_18/conv_lst_m2d_36/split_2Split3model_18/conv_lst_m2d_36/split_2/split_dim:output:07model_18/conv_lst_m2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2"
 model_18/conv_lst_m2d_36/split_2?
&model_18/conv_lst_m2d_36/convolution_1Conv2D1model_18/conv_lst_m2d_36/strided_slice_1:output:0'model_18/conv_lst_m2d_36/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_36/convolution_1?
 model_18/conv_lst_m2d_36/BiasAddBiasAdd/model_18/conv_lst_m2d_36/convolution_1:output:0)model_18/conv_lst_m2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????F2"
 model_18/conv_lst_m2d_36/BiasAdd?
&model_18/conv_lst_m2d_36/convolution_2Conv2D1model_18/conv_lst_m2d_36/strided_slice_1:output:0'model_18/conv_lst_m2d_36/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_36/convolution_2?
"model_18/conv_lst_m2d_36/BiasAdd_1BiasAdd/model_18/conv_lst_m2d_36/convolution_2:output:0)model_18/conv_lst_m2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????F2$
"model_18/conv_lst_m2d_36/BiasAdd_1?
&model_18/conv_lst_m2d_36/convolution_3Conv2D1model_18/conv_lst_m2d_36/strided_slice_1:output:0'model_18/conv_lst_m2d_36/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_36/convolution_3?
"model_18/conv_lst_m2d_36/BiasAdd_2BiasAdd/model_18/conv_lst_m2d_36/convolution_3:output:0)model_18/conv_lst_m2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????F2$
"model_18/conv_lst_m2d_36/BiasAdd_2?
&model_18/conv_lst_m2d_36/convolution_4Conv2D1model_18/conv_lst_m2d_36/strided_slice_1:output:0'model_18/conv_lst_m2d_36/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_36/convolution_4?
"model_18/conv_lst_m2d_36/BiasAdd_3BiasAdd/model_18/conv_lst_m2d_36/convolution_4:output:0)model_18/conv_lst_m2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????F2$
"model_18/conv_lst_m2d_36/BiasAdd_3?
&model_18/conv_lst_m2d_36/convolution_5Conv2D-model_18/conv_lst_m2d_36/convolution:output:0)model_18/conv_lst_m2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_36/convolution_5?
&model_18/conv_lst_m2d_36/convolution_6Conv2D-model_18/conv_lst_m2d_36/convolution:output:0)model_18/conv_lst_m2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_36/convolution_6?
&model_18/conv_lst_m2d_36/convolution_7Conv2D-model_18/conv_lst_m2d_36/convolution:output:0)model_18/conv_lst_m2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_36/convolution_7?
&model_18/conv_lst_m2d_36/convolution_8Conv2D-model_18/conv_lst_m2d_36/convolution:output:0)model_18/conv_lst_m2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_36/convolution_8?
model_18/conv_lst_m2d_36/addAddV2)model_18/conv_lst_m2d_36/BiasAdd:output:0/model_18/conv_lst_m2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
model_18/conv_lst_m2d_36/add?
model_18/conv_lst_m2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_18/conv_lst_m2d_36/Const?
 model_18/conv_lst_m2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_36/Const_1?
model_18/conv_lst_m2d_36/MulMul model_18/conv_lst_m2d_36/add:z:0'model_18/conv_lst_m2d_36/Const:output:0*
T0*/
_output_shapes
:?????????F2
model_18/conv_lst_m2d_36/Mul?
model_18/conv_lst_m2d_36/Add_1AddV2 model_18/conv_lst_m2d_36/Mul:z:0)model_18/conv_lst_m2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/Add_1?
0model_18/conv_lst_m2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_18/conv_lst_m2d_36/clip_by_value/Minimum/y?
.model_18/conv_lst_m2d_36/clip_by_value/MinimumMinimum"model_18/conv_lst_m2d_36/Add_1:z:09model_18/conv_lst_m2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_18/conv_lst_m2d_36/clip_by_value/Minimum?
(model_18/conv_lst_m2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_18/conv_lst_m2d_36/clip_by_value/y?
&model_18/conv_lst_m2d_36/clip_by_valueMaximum2model_18/conv_lst_m2d_36/clip_by_value/Minimum:z:01model_18/conv_lst_m2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2(
&model_18/conv_lst_m2d_36/clip_by_value?
model_18/conv_lst_m2d_36/add_2AddV2+model_18/conv_lst_m2d_36/BiasAdd_1:output:0/model_18/conv_lst_m2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/add_2?
 model_18/conv_lst_m2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_18/conv_lst_m2d_36/Const_2?
 model_18/conv_lst_m2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_36/Const_3?
model_18/conv_lst_m2d_36/Mul_1Mul"model_18/conv_lst_m2d_36/add_2:z:0)model_18/conv_lst_m2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/Mul_1?
model_18/conv_lst_m2d_36/Add_3AddV2"model_18/conv_lst_m2d_36/Mul_1:z:0)model_18/conv_lst_m2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/Add_3?
2model_18/conv_lst_m2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_18/conv_lst_m2d_36/clip_by_value_1/Minimum/y?
0model_18/conv_lst_m2d_36/clip_by_value_1/MinimumMinimum"model_18/conv_lst_m2d_36/Add_3:z:0;model_18/conv_lst_m2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_18/conv_lst_m2d_36/clip_by_value_1/Minimum?
*model_18/conv_lst_m2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_18/conv_lst_m2d_36/clip_by_value_1/y?
(model_18/conv_lst_m2d_36/clip_by_value_1Maximum4model_18/conv_lst_m2d_36/clip_by_value_1/Minimum:z:03model_18/conv_lst_m2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_18/conv_lst_m2d_36/clip_by_value_1?
model_18/conv_lst_m2d_36/mul_2Mul,model_18/conv_lst_m2d_36/clip_by_value_1:z:0-model_18/conv_lst_m2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/mul_2?
model_18/conv_lst_m2d_36/add_4AddV2+model_18/conv_lst_m2d_36/BiasAdd_2:output:0/model_18/conv_lst_m2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/add_4?
model_18/conv_lst_m2d_36/ReluRelu"model_18/conv_lst_m2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????F2
model_18/conv_lst_m2d_36/Relu?
model_18/conv_lst_m2d_36/mul_3Mul*model_18/conv_lst_m2d_36/clip_by_value:z:0+model_18/conv_lst_m2d_36/Relu:activations:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/mul_3?
model_18/conv_lst_m2d_36/add_5AddV2"model_18/conv_lst_m2d_36/mul_2:z:0"model_18/conv_lst_m2d_36/mul_3:z:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/add_5?
model_18/conv_lst_m2d_36/add_6AddV2+model_18/conv_lst_m2d_36/BiasAdd_3:output:0/model_18/conv_lst_m2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/add_6?
 model_18/conv_lst_m2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_18/conv_lst_m2d_36/Const_4?
 model_18/conv_lst_m2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_36/Const_5?
model_18/conv_lst_m2d_36/Mul_4Mul"model_18/conv_lst_m2d_36/add_6:z:0)model_18/conv_lst_m2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/Mul_4?
model_18/conv_lst_m2d_36/Add_7AddV2"model_18/conv_lst_m2d_36/Mul_4:z:0)model_18/conv_lst_m2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/Add_7?
2model_18/conv_lst_m2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_18/conv_lst_m2d_36/clip_by_value_2/Minimum/y?
0model_18/conv_lst_m2d_36/clip_by_value_2/MinimumMinimum"model_18/conv_lst_m2d_36/Add_7:z:0;model_18/conv_lst_m2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_18/conv_lst_m2d_36/clip_by_value_2/Minimum?
*model_18/conv_lst_m2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_18/conv_lst_m2d_36/clip_by_value_2/y?
(model_18/conv_lst_m2d_36/clip_by_value_2Maximum4model_18/conv_lst_m2d_36/clip_by_value_2/Minimum:z:03model_18/conv_lst_m2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_18/conv_lst_m2d_36/clip_by_value_2?
model_18/conv_lst_m2d_36/Relu_1Relu"model_18/conv_lst_m2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????F2!
model_18/conv_lst_m2d_36/Relu_1?
model_18/conv_lst_m2d_36/mul_5Mul,model_18/conv_lst_m2d_36/clip_by_value_2:z:0-model_18/conv_lst_m2d_36/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2 
model_18/conv_lst_m2d_36/mul_5?
6model_18/conv_lst_m2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   28
6model_18/conv_lst_m2d_36/TensorArrayV2_1/element_shape?
(model_18/conv_lst_m2d_36/TensorArrayV2_1TensorListReserve?model_18/conv_lst_m2d_36/TensorArrayV2_1/element_shape:output:0/model_18/conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_18/conv_lst_m2d_36/TensorArrayV2_1?
model_18/conv_lst_m2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_18/conv_lst_m2d_36/time?
1model_18/conv_lst_m2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_18/conv_lst_m2d_36/while/maximum_iterations?
+model_18/conv_lst_m2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_18/conv_lst_m2d_36/while/loop_counter?	
model_18/conv_lst_m2d_36/whileWhile4model_18/conv_lst_m2d_36/while/loop_counter:output:0:model_18/conv_lst_m2d_36/while/maximum_iterations:output:0&model_18/conv_lst_m2d_36/time:output:01model_18/conv_lst_m2d_36/TensorArrayV2_1:handle:0-model_18/conv_lst_m2d_36/convolution:output:0-model_18/conv_lst_m2d_36/convolution:output:0/model_18/conv_lst_m2d_36/strided_slice:output:0Pmodel_18/conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_18_conv_lst_m2d_36_split_readvariableop_resource8model_18_conv_lst_m2d_36_split_1_readvariableop_resource8model_18_conv_lst_m2d_36_split_2_readvariableop_resource*
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
+model_18_conv_lst_m2d_36_while_body_3070925*7
cond/R-
+model_18_conv_lst_m2d_36_while_cond_3070924*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2 
model_18/conv_lst_m2d_36/while?
Imodel_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2K
Imodel_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape?
;model_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStackTensorListStack'model_18/conv_lst_m2d_36/while:output:3Rmodel_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02=
;model_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack?
.model_18/conv_lst_m2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_18/conv_lst_m2d_36/strided_slice_2/stack?
0model_18/conv_lst_m2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_18/conv_lst_m2d_36/strided_slice_2/stack_1?
0model_18/conv_lst_m2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_36/strided_slice_2/stack_2?
(model_18/conv_lst_m2d_36/strided_slice_2StridedSliceDmodel_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:07model_18/conv_lst_m2d_36/strided_slice_2/stack:output:09model_18/conv_lst_m2d_36/strided_slice_2/stack_1:output:09model_18/conv_lst_m2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_18/conv_lst_m2d_36/strided_slice_2?
)model_18/conv_lst_m2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_18/conv_lst_m2d_36/transpose_1/perm?
$model_18/conv_lst_m2d_36/transpose_1	TransposeDmodel_18/conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:02model_18/conv_lst_m2d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2&
$model_18/conv_lst_m2d_36/transpose_1?
(model_18/conv2d_17/Conv2D/ReadVariableOpReadVariableOp1model_18_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02*
(model_18/conv2d_17/Conv2D/ReadVariableOp?
model_18/conv2d_17/Conv2DConv2D%model_18/conv2d_16/Relu:activations:00model_18/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
model_18/conv2d_17/Conv2D?
)model_18/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp2model_18_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02+
)model_18/conv2d_17/BiasAdd/ReadVariableOp?
model_18/conv2d_17/BiasAddBiasAdd"model_18/conv2d_17/Conv2D:output:01model_18/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
model_18/conv2d_17/BiasAdd?
model_18/conv2d_17/ReluRelu#model_18/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
model_18/conv2d_17/Relu?
#model_18/conv_lst_m2d_37/zeros_like	ZerosLike(model_18/conv_lst_m2d_36/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2%
#model_18/conv_lst_m2d_37/zeros_like?
.model_18/conv_lst_m2d_37/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_18/conv_lst_m2d_37/Sum/reduction_indices?
model_18/conv_lst_m2d_37/SumSum'model_18/conv_lst_m2d_37/zeros_like:y:07model_18/conv_lst_m2d_37/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
model_18/conv_lst_m2d_37/Sum?
.model_18/conv_lst_m2d_37/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   20
.model_18/conv_lst_m2d_37/zeros/shape_as_tensor?
$model_18/conv_lst_m2d_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_18/conv_lst_m2d_37/zeros/Const?
model_18/conv_lst_m2d_37/zerosFill7model_18/conv_lst_m2d_37/zeros/shape_as_tensor:output:0-model_18/conv_lst_m2d_37/zeros/Const:output:0*
T0*&
_output_shapes
:FK2 
model_18/conv_lst_m2d_37/zeros?
$model_18/conv_lst_m2d_37/convolutionConv2D%model_18/conv_lst_m2d_37/Sum:output:0'model_18/conv_lst_m2d_37/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2&
$model_18/conv_lst_m2d_37/convolution?
'model_18/conv_lst_m2d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_18/conv_lst_m2d_37/transpose/perm?
"model_18/conv_lst_m2d_37/transpose	Transpose(model_18/conv_lst_m2d_36/transpose_1:y:00model_18/conv_lst_m2d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2$
"model_18/conv_lst_m2d_37/transpose?
model_18/conv_lst_m2d_37/ShapeShape&model_18/conv_lst_m2d_37/transpose:y:0*
T0*
_output_shapes
:2 
model_18/conv_lst_m2d_37/Shape?
,model_18/conv_lst_m2d_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_18/conv_lst_m2d_37/strided_slice/stack?
.model_18/conv_lst_m2d_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_18/conv_lst_m2d_37/strided_slice/stack_1?
.model_18/conv_lst_m2d_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_18/conv_lst_m2d_37/strided_slice/stack_2?
&model_18/conv_lst_m2d_37/strided_sliceStridedSlice'model_18/conv_lst_m2d_37/Shape:output:05model_18/conv_lst_m2d_37/strided_slice/stack:output:07model_18/conv_lst_m2d_37/strided_slice/stack_1:output:07model_18/conv_lst_m2d_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_18/conv_lst_m2d_37/strided_slice?
4model_18/conv_lst_m2d_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_18/conv_lst_m2d_37/TensorArrayV2/element_shape?
&model_18/conv_lst_m2d_37/TensorArrayV2TensorListReserve=model_18/conv_lst_m2d_37/TensorArrayV2/element_shape:output:0/model_18/conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_18/conv_lst_m2d_37/TensorArrayV2?
Nmodel_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2P
Nmodel_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_18/conv_lst_m2d_37/transpose:y:0Wmodel_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor?
.model_18/conv_lst_m2d_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_18/conv_lst_m2d_37/strided_slice_1/stack?
0model_18/conv_lst_m2d_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_37/strided_slice_1/stack_1?
0model_18/conv_lst_m2d_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_37/strided_slice_1/stack_2?
(model_18/conv_lst_m2d_37/strided_slice_1StridedSlice&model_18/conv_lst_m2d_37/transpose:y:07model_18/conv_lst_m2d_37/strided_slice_1/stack:output:09model_18/conv_lst_m2d_37/strided_slice_1/stack_1:output:09model_18/conv_lst_m2d_37/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_18/conv_lst_m2d_37/strided_slice_1?
(model_18/conv_lst_m2d_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_18/conv_lst_m2d_37/split/split_dim?
-model_18/conv_lst_m2d_37/split/ReadVariableOpReadVariableOp6model_18_conv_lst_m2d_37_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02/
-model_18/conv_lst_m2d_37/split/ReadVariableOp?
model_18/conv_lst_m2d_37/splitSplit1model_18/conv_lst_m2d_37/split/split_dim:output:05model_18/conv_lst_m2d_37/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2 
model_18/conv_lst_m2d_37/split?
*model_18/conv_lst_m2d_37/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_18/conv_lst_m2d_37/split_1/split_dim?
/model_18/conv_lst_m2d_37/split_1/ReadVariableOpReadVariableOp8model_18_conv_lst_m2d_37_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype021
/model_18/conv_lst_m2d_37/split_1/ReadVariableOp?
 model_18/conv_lst_m2d_37/split_1Split3model_18/conv_lst_m2d_37/split_1/split_dim:output:07model_18/conv_lst_m2d_37/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2"
 model_18/conv_lst_m2d_37/split_1?
*model_18/conv_lst_m2d_37/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_18/conv_lst_m2d_37/split_2/split_dim?
/model_18/conv_lst_m2d_37/split_2/ReadVariableOpReadVariableOp8model_18_conv_lst_m2d_37_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_18/conv_lst_m2d_37/split_2/ReadVariableOp?
 model_18/conv_lst_m2d_37/split_2Split3model_18/conv_lst_m2d_37/split_2/split_dim:output:07model_18/conv_lst_m2d_37/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2"
 model_18/conv_lst_m2d_37/split_2?
&model_18/conv_lst_m2d_37/convolution_1Conv2D1model_18/conv_lst_m2d_37/strided_slice_1:output:0'model_18/conv_lst_m2d_37/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_37/convolution_1?
 model_18/conv_lst_m2d_37/BiasAddBiasAdd/model_18/conv_lst_m2d_37/convolution_1:output:0)model_18/conv_lst_m2d_37/split_2:output:0*
T0*/
_output_shapes
:?????????K2"
 model_18/conv_lst_m2d_37/BiasAdd?
&model_18/conv_lst_m2d_37/convolution_2Conv2D1model_18/conv_lst_m2d_37/strided_slice_1:output:0'model_18/conv_lst_m2d_37/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_37/convolution_2?
"model_18/conv_lst_m2d_37/BiasAdd_1BiasAdd/model_18/conv_lst_m2d_37/convolution_2:output:0)model_18/conv_lst_m2d_37/split_2:output:1*
T0*/
_output_shapes
:?????????K2$
"model_18/conv_lst_m2d_37/BiasAdd_1?
&model_18/conv_lst_m2d_37/convolution_3Conv2D1model_18/conv_lst_m2d_37/strided_slice_1:output:0'model_18/conv_lst_m2d_37/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_37/convolution_3?
"model_18/conv_lst_m2d_37/BiasAdd_2BiasAdd/model_18/conv_lst_m2d_37/convolution_3:output:0)model_18/conv_lst_m2d_37/split_2:output:2*
T0*/
_output_shapes
:?????????K2$
"model_18/conv_lst_m2d_37/BiasAdd_2?
&model_18/conv_lst_m2d_37/convolution_4Conv2D1model_18/conv_lst_m2d_37/strided_slice_1:output:0'model_18/conv_lst_m2d_37/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_18/conv_lst_m2d_37/convolution_4?
"model_18/conv_lst_m2d_37/BiasAdd_3BiasAdd/model_18/conv_lst_m2d_37/convolution_4:output:0)model_18/conv_lst_m2d_37/split_2:output:3*
T0*/
_output_shapes
:?????????K2$
"model_18/conv_lst_m2d_37/BiasAdd_3?
&model_18/conv_lst_m2d_37/convolution_5Conv2D-model_18/conv_lst_m2d_37/convolution:output:0)model_18/conv_lst_m2d_37/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_37/convolution_5?
&model_18/conv_lst_m2d_37/convolution_6Conv2D-model_18/conv_lst_m2d_37/convolution:output:0)model_18/conv_lst_m2d_37/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_37/convolution_6?
&model_18/conv_lst_m2d_37/convolution_7Conv2D-model_18/conv_lst_m2d_37/convolution:output:0)model_18/conv_lst_m2d_37/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_37/convolution_7?
&model_18/conv_lst_m2d_37/convolution_8Conv2D-model_18/conv_lst_m2d_37/convolution:output:0)model_18/conv_lst_m2d_37/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_18/conv_lst_m2d_37/convolution_8?
model_18/conv_lst_m2d_37/addAddV2)model_18/conv_lst_m2d_37/BiasAdd:output:0/model_18/conv_lst_m2d_37/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
model_18/conv_lst_m2d_37/add?
model_18/conv_lst_m2d_37/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_18/conv_lst_m2d_37/Const?
 model_18/conv_lst_m2d_37/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_37/Const_1?
model_18/conv_lst_m2d_37/MulMul model_18/conv_lst_m2d_37/add:z:0'model_18/conv_lst_m2d_37/Const:output:0*
T0*/
_output_shapes
:?????????K2
model_18/conv_lst_m2d_37/Mul?
model_18/conv_lst_m2d_37/Add_1AddV2 model_18/conv_lst_m2d_37/Mul:z:0)model_18/conv_lst_m2d_37/Const_1:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/Add_1?
0model_18/conv_lst_m2d_37/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_18/conv_lst_m2d_37/clip_by_value/Minimum/y?
.model_18/conv_lst_m2d_37/clip_by_value/MinimumMinimum"model_18/conv_lst_m2d_37/Add_1:z:09model_18/conv_lst_m2d_37/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_18/conv_lst_m2d_37/clip_by_value/Minimum?
(model_18/conv_lst_m2d_37/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_18/conv_lst_m2d_37/clip_by_value/y?
&model_18/conv_lst_m2d_37/clip_by_valueMaximum2model_18/conv_lst_m2d_37/clip_by_value/Minimum:z:01model_18/conv_lst_m2d_37/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2(
&model_18/conv_lst_m2d_37/clip_by_value?
model_18/conv_lst_m2d_37/add_2AddV2+model_18/conv_lst_m2d_37/BiasAdd_1:output:0/model_18/conv_lst_m2d_37/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/add_2?
 model_18/conv_lst_m2d_37/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_18/conv_lst_m2d_37/Const_2?
 model_18/conv_lst_m2d_37/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_37/Const_3?
model_18/conv_lst_m2d_37/Mul_1Mul"model_18/conv_lst_m2d_37/add_2:z:0)model_18/conv_lst_m2d_37/Const_2:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/Mul_1?
model_18/conv_lst_m2d_37/Add_3AddV2"model_18/conv_lst_m2d_37/Mul_1:z:0)model_18/conv_lst_m2d_37/Const_3:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/Add_3?
2model_18/conv_lst_m2d_37/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_18/conv_lst_m2d_37/clip_by_value_1/Minimum/y?
0model_18/conv_lst_m2d_37/clip_by_value_1/MinimumMinimum"model_18/conv_lst_m2d_37/Add_3:z:0;model_18/conv_lst_m2d_37/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_18/conv_lst_m2d_37/clip_by_value_1/Minimum?
*model_18/conv_lst_m2d_37/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_18/conv_lst_m2d_37/clip_by_value_1/y?
(model_18/conv_lst_m2d_37/clip_by_value_1Maximum4model_18/conv_lst_m2d_37/clip_by_value_1/Minimum:z:03model_18/conv_lst_m2d_37/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_18/conv_lst_m2d_37/clip_by_value_1?
model_18/conv_lst_m2d_37/mul_2Mul,model_18/conv_lst_m2d_37/clip_by_value_1:z:0-model_18/conv_lst_m2d_37/convolution:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/mul_2?
model_18/conv_lst_m2d_37/add_4AddV2+model_18/conv_lst_m2d_37/BiasAdd_2:output:0/model_18/conv_lst_m2d_37/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/add_4?
model_18/conv_lst_m2d_37/ReluRelu"model_18/conv_lst_m2d_37/add_4:z:0*
T0*/
_output_shapes
:?????????K2
model_18/conv_lst_m2d_37/Relu?
model_18/conv_lst_m2d_37/mul_3Mul*model_18/conv_lst_m2d_37/clip_by_value:z:0+model_18/conv_lst_m2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/mul_3?
model_18/conv_lst_m2d_37/add_5AddV2"model_18/conv_lst_m2d_37/mul_2:z:0"model_18/conv_lst_m2d_37/mul_3:z:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/add_5?
model_18/conv_lst_m2d_37/add_6AddV2+model_18/conv_lst_m2d_37/BiasAdd_3:output:0/model_18/conv_lst_m2d_37/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/add_6?
 model_18/conv_lst_m2d_37/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_18/conv_lst_m2d_37/Const_4?
 model_18/conv_lst_m2d_37/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_18/conv_lst_m2d_37/Const_5?
model_18/conv_lst_m2d_37/Mul_4Mul"model_18/conv_lst_m2d_37/add_6:z:0)model_18/conv_lst_m2d_37/Const_4:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/Mul_4?
model_18/conv_lst_m2d_37/Add_7AddV2"model_18/conv_lst_m2d_37/Mul_4:z:0)model_18/conv_lst_m2d_37/Const_5:output:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/Add_7?
2model_18/conv_lst_m2d_37/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_18/conv_lst_m2d_37/clip_by_value_2/Minimum/y?
0model_18/conv_lst_m2d_37/clip_by_value_2/MinimumMinimum"model_18/conv_lst_m2d_37/Add_7:z:0;model_18/conv_lst_m2d_37/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_18/conv_lst_m2d_37/clip_by_value_2/Minimum?
*model_18/conv_lst_m2d_37/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_18/conv_lst_m2d_37/clip_by_value_2/y?
(model_18/conv_lst_m2d_37/clip_by_value_2Maximum4model_18/conv_lst_m2d_37/clip_by_value_2/Minimum:z:03model_18/conv_lst_m2d_37/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_18/conv_lst_m2d_37/clip_by_value_2?
model_18/conv_lst_m2d_37/Relu_1Relu"model_18/conv_lst_m2d_37/add_5:z:0*
T0*/
_output_shapes
:?????????K2!
model_18/conv_lst_m2d_37/Relu_1?
model_18/conv_lst_m2d_37/mul_5Mul,model_18/conv_lst_m2d_37/clip_by_value_2:z:0-model_18/conv_lst_m2d_37/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2 
model_18/conv_lst_m2d_37/mul_5?
6model_18/conv_lst_m2d_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   28
6model_18/conv_lst_m2d_37/TensorArrayV2_1/element_shape?
(model_18/conv_lst_m2d_37/TensorArrayV2_1TensorListReserve?model_18/conv_lst_m2d_37/TensorArrayV2_1/element_shape:output:0/model_18/conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_18/conv_lst_m2d_37/TensorArrayV2_1?
model_18/conv_lst_m2d_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_18/conv_lst_m2d_37/time?
1model_18/conv_lst_m2d_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_18/conv_lst_m2d_37/while/maximum_iterations?
+model_18/conv_lst_m2d_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_18/conv_lst_m2d_37/while/loop_counter?	
model_18/conv_lst_m2d_37/whileWhile4model_18/conv_lst_m2d_37/while/loop_counter:output:0:model_18/conv_lst_m2d_37/while/maximum_iterations:output:0&model_18/conv_lst_m2d_37/time:output:01model_18/conv_lst_m2d_37/TensorArrayV2_1:handle:0-model_18/conv_lst_m2d_37/convolution:output:0-model_18/conv_lst_m2d_37/convolution:output:0/model_18/conv_lst_m2d_37/strided_slice:output:0Pmodel_18/conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_18_conv_lst_m2d_37_split_readvariableop_resource8model_18_conv_lst_m2d_37_split_1_readvariableop_resource8model_18_conv_lst_m2d_37_split_2_readvariableop_resource*
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
+model_18_conv_lst_m2d_37_while_body_3071150*7
cond/R-
+model_18_conv_lst_m2d_37_while_cond_3071149*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2 
model_18/conv_lst_m2d_37/while?
Imodel_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2K
Imodel_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape?
;model_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStackTensorListStack'model_18/conv_lst_m2d_37/while:output:3Rmodel_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02=
;model_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack?
.model_18/conv_lst_m2d_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_18/conv_lst_m2d_37/strided_slice_2/stack?
0model_18/conv_lst_m2d_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_18/conv_lst_m2d_37/strided_slice_2/stack_1?
0model_18/conv_lst_m2d_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_18/conv_lst_m2d_37/strided_slice_2/stack_2?
(model_18/conv_lst_m2d_37/strided_slice_2StridedSliceDmodel_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:07model_18/conv_lst_m2d_37/strided_slice_2/stack:output:09model_18/conv_lst_m2d_37/strided_slice_2/stack_1:output:09model_18/conv_lst_m2d_37/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2*
(model_18/conv_lst_m2d_37/strided_slice_2?
)model_18/conv_lst_m2d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_18/conv_lst_m2d_37/transpose_1/perm?
$model_18/conv_lst_m2d_37/transpose_1	TransposeDmodel_18/conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:02model_18/conv_lst_m2d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2&
$model_18/conv_lst_m2d_37/transpose_1?
model_18/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
model_18/flatten_27/Const?
model_18/flatten_27/ReshapeReshape%model_18/conv2d_17/Relu:activations:0"model_18/flatten_27/Const:output:0*
T0*'
_output_shapes
:?????????K2
model_18/flatten_27/Reshape?
model_18/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
model_18/flatten_26/Const?
model_18/flatten_26/ReshapeReshape(model_18/conv_lst_m2d_37/transpose_1:y:0"model_18/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????2
model_18/flatten_26/Reshape?
'model_18/dense_62/MatMul/ReadVariableOpReadVariableOp0model_18_dense_62_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02)
'model_18/dense_62/MatMul/ReadVariableOp?
model_18/dense_62/MatMulMatMul$model_18/flatten_26/Reshape:output:0/model_18/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_62/MatMul?
(model_18/dense_62/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_62_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_18/dense_62/BiasAdd/ReadVariableOp?
model_18/dense_62/BiasAddBiasAdd"model_18/dense_62/MatMul:product:00model_18/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_62/BiasAdd?
'model_18/dense_63/MatMul/ReadVariableOpReadVariableOp0model_18_dense_63_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02)
'model_18/dense_63/MatMul/ReadVariableOp?
model_18/dense_63/MatMulMatMul$model_18/flatten_27/Reshape:output:0/model_18/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_63/MatMul?
(model_18/dense_63/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_63_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_18/dense_63/BiasAdd/ReadVariableOp?
model_18/dense_63/BiasAddBiasAdd"model_18/dense_63/MatMul:product:00model_18/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_63/BiasAdd?
model_18/add_18/addAddV2"model_18/dense_62/BiasAdd:output:0"model_18/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_18/add_18/add?
'model_18/dense_64/MatMul/ReadVariableOpReadVariableOp0model_18_dense_64_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02)
'model_18/dense_64/MatMul/ReadVariableOp?
model_18/dense_64/MatMulMatMulmodel_18/add_18/add:z:0/model_18/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_64/MatMul?
(model_18/dense_64/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_64_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_18/dense_64/BiasAdd/ReadVariableOp?
model_18/dense_64/BiasAddBiasAdd"model_18/dense_64/MatMul:product:00model_18/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_18/dense_64/BiasAdd?
model_18/dense_64/ReluRelu"model_18/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_18/dense_64/Relu?
'model_18/dense_65/MatMul/ReadVariableOpReadVariableOp0model_18_dense_65_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02)
'model_18/dense_65/MatMul/ReadVariableOp?
model_18/dense_65/MatMulMatMul$model_18/dense_64/Relu:activations:0/model_18/dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_18/dense_65/MatMul?
(model_18/dense_65/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_18/dense_65/BiasAdd/ReadVariableOp?
model_18/dense_65/BiasAddBiasAdd"model_18/dense_65/MatMul:product:00model_18/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_18/dense_65/BiasAdd?
model_18/dense_65/SoftmaxSoftmax"model_18/dense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_18/dense_65/Softmax~
IdentityIdentity#model_18/dense_65/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp*^model_18/conv2d_16/BiasAdd/ReadVariableOp)^model_18/conv2d_16/Conv2D/ReadVariableOp*^model_18/conv2d_17/BiasAdd/ReadVariableOp)^model_18/conv2d_17/Conv2D/ReadVariableOp.^model_18/conv_lst_m2d_36/split/ReadVariableOp0^model_18/conv_lst_m2d_36/split_1/ReadVariableOp0^model_18/conv_lst_m2d_36/split_2/ReadVariableOp^model_18/conv_lst_m2d_36/while.^model_18/conv_lst_m2d_37/split/ReadVariableOp0^model_18/conv_lst_m2d_37/split_1/ReadVariableOp0^model_18/conv_lst_m2d_37/split_2/ReadVariableOp^model_18/conv_lst_m2d_37/while)^model_18/dense_62/BiasAdd/ReadVariableOp(^model_18/dense_62/MatMul/ReadVariableOp)^model_18/dense_63/BiasAdd/ReadVariableOp(^model_18/dense_63/MatMul/ReadVariableOp)^model_18/dense_64/BiasAdd/ReadVariableOp(^model_18/dense_64/MatMul/ReadVariableOp)^model_18/dense_65/BiasAdd/ReadVariableOp(^model_18/dense_65/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2V
)model_18/conv2d_16/BiasAdd/ReadVariableOp)model_18/conv2d_16/BiasAdd/ReadVariableOp2T
(model_18/conv2d_16/Conv2D/ReadVariableOp(model_18/conv2d_16/Conv2D/ReadVariableOp2V
)model_18/conv2d_17/BiasAdd/ReadVariableOp)model_18/conv2d_17/BiasAdd/ReadVariableOp2T
(model_18/conv2d_17/Conv2D/ReadVariableOp(model_18/conv2d_17/Conv2D/ReadVariableOp2^
-model_18/conv_lst_m2d_36/split/ReadVariableOp-model_18/conv_lst_m2d_36/split/ReadVariableOp2b
/model_18/conv_lst_m2d_36/split_1/ReadVariableOp/model_18/conv_lst_m2d_36/split_1/ReadVariableOp2b
/model_18/conv_lst_m2d_36/split_2/ReadVariableOp/model_18/conv_lst_m2d_36/split_2/ReadVariableOp2@
model_18/conv_lst_m2d_36/whilemodel_18/conv_lst_m2d_36/while2^
-model_18/conv_lst_m2d_37/split/ReadVariableOp-model_18/conv_lst_m2d_37/split/ReadVariableOp2b
/model_18/conv_lst_m2d_37/split_1/ReadVariableOp/model_18/conv_lst_m2d_37/split_1/ReadVariableOp2b
/model_18/conv_lst_m2d_37/split_2/ReadVariableOp/model_18/conv_lst_m2d_37/split_2/ReadVariableOp2@
model_18/conv_lst_m2d_37/whilemodel_18/conv_lst_m2d_37/while2T
(model_18/dense_62/BiasAdd/ReadVariableOp(model_18/dense_62/BiasAdd/ReadVariableOp2R
'model_18/dense_62/MatMul/ReadVariableOp'model_18/dense_62/MatMul/ReadVariableOp2T
(model_18/dense_63/BiasAdd/ReadVariableOp(model_18/dense_63/BiasAdd/ReadVariableOp2R
'model_18/dense_63/MatMul/ReadVariableOp'model_18/dense_63/MatMul/ReadVariableOp2T
(model_18/dense_64/BiasAdd/ReadVariableOp(model_18/dense_64/BiasAdd/ReadVariableOp2R
'model_18/dense_64/MatMul/ReadVariableOp'model_18/dense_64/MatMul/ReadVariableOp2T
(model_18/dense_65/BiasAdd/ReadVariableOp(model_18/dense_65/BiasAdd/ReadVariableOp2R
'model_18/dense_65/MatMul/ReadVariableOp'model_18/dense_65/MatMul/ReadVariableOp:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_36_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_16_input
?
?
1__inference_conv_lst_m2d_37_layer_call_fn_3076177

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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30735342
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
?
?
while_cond_3071422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3071422___redundant_placeholder05
1while_while_cond_3071422___redundant_placeholder15
1while_while_cond_3071422___redundant_placeholder25
1while_while_cond_3071422___redundant_placeholder3
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
?
?
1__inference_conv_lst_m2d_37_layer_call_fn_3076166

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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30731022
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
?$
?
while_body_3072311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3072335_0:F?*
while_3072337_0:K?
while_3072339_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3072335:F?(
while_3072337:K?
while_3072339:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3072335_0while_3072337_0while_3072339_0*
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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30722472
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
while_3072335while_3072335_0" 
while_3072337while_3072337_0" 
while_3072339while_3072339_0")
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
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_3077197

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
?:
?
E__inference_model_18_layer_call_and_return_conditional_losses_3074035
conv_lst_m2d_36_input
conv2d_16_input+
conv2d_16_3073987:F
conv2d_16_3073989:F2
conv_lst_m2d_36_3073992:?2
conv_lst_m2d_36_3073994:F?&
conv_lst_m2d_36_3073996:	?+
conv2d_17_3073999:FK
conv2d_17_3074001:K2
conv_lst_m2d_37_3074004:F?2
conv_lst_m2d_37_3074006:K?&
conv_lst_m2d_37_3074008:	?#
dense_62_3074013:	?2
dense_62_3074015:2"
dense_63_3074018:K2
dense_63_3074020:2"
dense_64_3074024:22
dense_64_3074026:2"
dense_65_3074029:2
dense_65_3074031:
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?'conv_lst_m2d_36/StatefulPartitionedCall?'conv_lst_m2d_37/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_3073987conv2d_16_3073989*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_30726312#
!conv2d_16/StatefulPartitionedCall?
'conv_lst_m2d_36/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_36_inputconv_lst_m2d_36_3073992conv_lst_m2d_36_3073994conv_lst_m2d_36_3073996*
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30728562)
'conv_lst_m2d_36/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_3073999conv2d_17_3074001*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_30728752#
!conv2d_17/StatefulPartitionedCall?
'conv_lst_m2d_37/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_36/StatefulPartitionedCall:output:0conv_lst_m2d_37_3074004conv_lst_m2d_37_3074006conv_lst_m2d_37_3074008*
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30731022)
'conv_lst_m2d_37/StatefulPartitionedCall?
flatten_27/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
G__inference_flatten_27_layer_call_and_return_conditional_losses_30731162
flatten_27/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall0conv_lst_m2d_37/StatefulPartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_30731242
flatten_26/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_62_3074013dense_62_3074015*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_30731362"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_63_3074018dense_63_3074020*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_30731522"
 dense_63/StatefulPartitionedCall?
add_18/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0)dense_63/StatefulPartitionedCall:output:0*
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
C__inference_add_18_layer_call_and_return_conditional_losses_30731642
add_18/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalladd_18/PartitionedCall:output:0dense_64_3074024dense_64_3074026*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_30731772"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_3074029dense_65_3074031*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_30731942"
 dense_65/StatefulPartitionedCall?
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall(^conv_lst_m2d_36/StatefulPartitionedCall(^conv_lst_m2d_37/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2R
'conv_lst_m2d_36/StatefulPartitionedCall'conv_lst_m2d_36/StatefulPartitionedCall2R
'conv_lst_m2d_37/StatefulPartitionedCall'conv_lst_m2d_37/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_36_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_16_input
?
?
while_cond_3073407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3073407___redundant_placeholder05
1while_while_cond_3073407___redundant_placeholder15
1while_while_cond_3073407___redundant_placeholder25
1while_while_cond_3073407___redundant_placeholder3
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
?e
?
while_body_3076939
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
?o
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075893

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
while_body_3075767*
condR
while_cond_3075766*[
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
?e
?
while_body_3075327
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
1__inference_conv_lst_m2d_36_layer_call_fn_3075211
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30717272
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
?
?
while_cond_3072975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3072975___redundant_placeholder05
1while_while_cond_3072975___redundant_placeholder15
1while_while_cond_3072975___redundant_placeholder25
1while_while_cond_3072975___redundant_placeholder3
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
?
?
*__inference_model_18_layer_call_fn_3073240
conv_lst_m2d_36_input
conv2d_16_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_36_inputconv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
E__inference_model_18_layer_call_and_return_conditional_losses_30732012
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
_user_specified_nameconv_lst_m2d_36_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_16_input
?
H
,__inference_flatten_26_layer_call_fn_3077090

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
G__inference_flatten_26_layer_call_and_return_conditional_losses_30731242
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
?
?
*__inference_dense_62_layer_call_fn_3077116

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
E__inference_dense_62_layer_call_and_return_conditional_losses_30731362
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
?
?
1__inference_conv_lst_m2d_36_layer_call_fn_3075222

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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30728562
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
?
?
3__inference_conv_lstm_cell_36_layer_call_fn_3077231

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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30715972
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
?
?
while_cond_3072729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3072729___redundant_placeholder05
1while_while_cond_3072729___redundant_placeholder15
1while_while_cond_3072729___redundant_placeholder25
1while_while_cond_3072729___redundant_placeholder3
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
?
 __inference__traced_save_3077778
file_prefix/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_conv_lst_m2d_36_kernel_read_readvariableop?
;savev2_conv_lst_m2d_36_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_36_bias_read_readvariableop5
1savev2_conv_lst_m2d_37_kernel_read_readvariableop?
;savev2_conv_lst_m2d_37_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_37_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop5
1savev2_adam_dense_64_kernel_m_read_readvariableop3
/savev2_adam_dense_64_bias_m_read_readvariableop5
1savev2_adam_dense_65_kernel_m_read_readvariableop3
/savev2_adam_dense_65_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_36_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_36_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_36_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_37_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_37_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop5
1savev2_adam_dense_64_kernel_v_read_readvariableop3
/savev2_adam_dense_64_bias_v_read_readvariableop5
1savev2_adam_dense_65_kernel_v_read_readvariableop3
/savev2_adam_dense_65_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_36_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_36_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_36_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_37_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_37_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_37_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_conv_lst_m2d_36_kernel_read_readvariableop;savev2_conv_lst_m2d_36_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_36_bias_read_readvariableop1savev2_conv_lst_m2d_37_kernel_read_readvariableop;savev2_conv_lst_m2d_37_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_37_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop1savev2_adam_dense_64_kernel_m_read_readvariableop/savev2_adam_dense_64_bias_m_read_readvariableop1savev2_adam_dense_65_kernel_m_read_readvariableop/savev2_adam_dense_65_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_36_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_36_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_36_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_37_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_37_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_37_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableop1savev2_adam_dense_64_kernel_v_read_readvariableop/savev2_adam_dense_64_bias_v_read_readvariableop1savev2_adam_dense_65_kernel_v_read_readvariableop/savev2_adam_dense_65_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_36_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_36_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_36_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_37_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_37_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_37_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??
?
"conv_lst_m2d_36_while_body_3074807<
8conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counterB
>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations%
!conv_lst_m2d_36_while_placeholder'
#conv_lst_m2d_36_while_placeholder_1'
#conv_lst_m2d_36_while_placeholder_2'
#conv_lst_m2d_36_while_placeholder_39
5conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice_0w
sconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_36_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_36_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_36_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_36_while_identity$
 conv_lst_m2d_36_while_identity_1$
 conv_lst_m2d_36_while_identity_2$
 conv_lst_m2d_36_while_identity_3$
 conv_lst_m2d_36_while_identity_4$
 conv_lst_m2d_36_while_identity_57
3conv_lst_m2d_36_while_conv_lst_m2d_36_strided_sliceu
qconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_36_while_split_readvariableop_resource:?P
5conv_lst_m2d_36_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_36_while_split_2_readvariableop_resource:	???*conv_lst_m2d_36/while/split/ReadVariableOp?,conv_lst_m2d_36/while/split_1/ReadVariableOp?,conv_lst_m2d_36/while/split_2/ReadVariableOp?
Gconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_36_while_placeholderPconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_36/while/split/split_dim?
*conv_lst_m2d_36/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_36/while/split/ReadVariableOp?
conv_lst_m2d_36/while/splitSplit.conv_lst_m2d_36/while/split/split_dim:output:02conv_lst_m2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_36/while/split?
'conv_lst_m2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_36/while/split_1/split_dim?
,conv_lst_m2d_36/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_36/while/split_1/ReadVariableOp?
conv_lst_m2d_36/while/split_1Split0conv_lst_m2d_36/while/split_1/split_dim:output:04conv_lst_m2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_36/while/split_1?
'conv_lst_m2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_36/while/split_2/split_dim?
,conv_lst_m2d_36/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_36/while/split_2/ReadVariableOp?
conv_lst_m2d_36/while/split_2Split0conv_lst_m2d_36/while/split_2/split_dim:output:04conv_lst_m2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_36/while/split_2?
!conv_lst_m2d_36/while/convolutionConv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_36/while/convolution?
conv_lst_m2d_36/while/BiasAddBiasAdd*conv_lst_m2d_36/while/convolution:output:0&conv_lst_m2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/BiasAdd?
#conv_lst_m2d_36/while/convolution_1Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_1?
conv_lst_m2d_36/while/BiasAdd_1BiasAdd,conv_lst_m2d_36/while/convolution_1:output:0&conv_lst_m2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_1?
#conv_lst_m2d_36/while/convolution_2Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_2?
conv_lst_m2d_36/while/BiasAdd_2BiasAdd,conv_lst_m2d_36/while/convolution_2:output:0&conv_lst_m2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_2?
#conv_lst_m2d_36/while/convolution_3Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_3?
conv_lst_m2d_36/while/BiasAdd_3BiasAdd,conv_lst_m2d_36/while/convolution_3:output:0&conv_lst_m2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_3?
#conv_lst_m2d_36/while/convolution_4Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_4?
#conv_lst_m2d_36/while/convolution_5Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_5?
#conv_lst_m2d_36/while/convolution_6Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_6?
#conv_lst_m2d_36/while/convolution_7Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_7?
conv_lst_m2d_36/while/addAddV2&conv_lst_m2d_36/while/BiasAdd:output:0,conv_lst_m2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add
conv_lst_m2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const?
conv_lst_m2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_1?
conv_lst_m2d_36/while/MulMulconv_lst_m2d_36/while/add:z:0$conv_lst_m2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul?
conv_lst_m2d_36/while/Add_1AddV2conv_lst_m2d_36/while/Mul:z:0&conv_lst_m2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_1?
-conv_lst_m2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_36/while/clip_by_value/Minimum/y?
+conv_lst_m2d_36/while/clip_by_value/MinimumMinimumconv_lst_m2d_36/while/Add_1:z:06conv_lst_m2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_36/while/clip_by_value/Minimum?
%conv_lst_m2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_36/while/clip_by_value/y?
#conv_lst_m2d_36/while/clip_by_valueMaximum/conv_lst_m2d_36/while/clip_by_value/Minimum:z:0.conv_lst_m2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_36/while/clip_by_value?
conv_lst_m2d_36/while/add_2AddV2(conv_lst_m2d_36/while/BiasAdd_1:output:0,conv_lst_m2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_2?
conv_lst_m2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const_2?
conv_lst_m2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_3?
conv_lst_m2d_36/while/Mul_1Mulconv_lst_m2d_36/while/add_2:z:0&conv_lst_m2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul_1?
conv_lst_m2d_36/while/Add_3AddV2conv_lst_m2d_36/while/Mul_1:z:0&conv_lst_m2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_3?
/conv_lst_m2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_36/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_36/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_36/while/Add_3:z:08conv_lst_m2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_36/while/clip_by_value_1/Minimum?
'conv_lst_m2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_36/while/clip_by_value_1/y?
%conv_lst_m2d_36/while/clip_by_value_1Maximum1conv_lst_m2d_36/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/while/clip_by_value_1?
conv_lst_m2d_36/while/mul_2Mul)conv_lst_m2d_36/while/clip_by_value_1:z:0#conv_lst_m2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_2?
conv_lst_m2d_36/while/add_4AddV2(conv_lst_m2d_36/while/BiasAdd_2:output:0,conv_lst_m2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_4?
conv_lst_m2d_36/while/ReluReluconv_lst_m2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Relu?
conv_lst_m2d_36/while/mul_3Mul'conv_lst_m2d_36/while/clip_by_value:z:0(conv_lst_m2d_36/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_3?
conv_lst_m2d_36/while/add_5AddV2conv_lst_m2d_36/while/mul_2:z:0conv_lst_m2d_36/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_5?
conv_lst_m2d_36/while/add_6AddV2(conv_lst_m2d_36/while/BiasAdd_3:output:0,conv_lst_m2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_6?
conv_lst_m2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const_4?
conv_lst_m2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_5?
conv_lst_m2d_36/while/Mul_4Mulconv_lst_m2d_36/while/add_6:z:0&conv_lst_m2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul_4?
conv_lst_m2d_36/while/Add_7AddV2conv_lst_m2d_36/while/Mul_4:z:0&conv_lst_m2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_7?
/conv_lst_m2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_36/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_36/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_36/while/Add_7:z:08conv_lst_m2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_36/while/clip_by_value_2/Minimum?
'conv_lst_m2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_36/while/clip_by_value_2/y?
%conv_lst_m2d_36/while/clip_by_value_2Maximum1conv_lst_m2d_36/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/while/clip_by_value_2?
conv_lst_m2d_36/while/Relu_1Reluconv_lst_m2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Relu_1?
conv_lst_m2d_36/while/mul_5Mul)conv_lst_m2d_36/while/clip_by_value_2:z:0*conv_lst_m2d_36/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_5?
:conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_36_while_placeholder_1!conv_lst_m2d_36_while_placeholderconv_lst_m2d_36/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_36/while/add_8/y?
conv_lst_m2d_36/while/add_8AddV2!conv_lst_m2d_36_while_placeholder&conv_lst_m2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/add_8?
conv_lst_m2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_36/while/add_9/y?
conv_lst_m2d_36/while/add_9AddV28conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counter&conv_lst_m2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/add_9?
conv_lst_m2d_36/while/IdentityIdentityconv_lst_m2d_36/while/add_9:z:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_36/while/Identity?
 conv_lst_m2d_36/while/Identity_1Identity>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_1?
 conv_lst_m2d_36/while/Identity_2Identityconv_lst_m2d_36/while/add_8:z:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_2?
 conv_lst_m2d_36/while/Identity_3IdentityJconv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_3?
 conv_lst_m2d_36/while/Identity_4Identityconv_lst_m2d_36/while/mul_5:z:0^conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_36/while/Identity_4?
 conv_lst_m2d_36/while/Identity_5Identityconv_lst_m2d_36/while/add_5:z:0^conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_36/while/Identity_5?
conv_lst_m2d_36/while/NoOpNoOp+^conv_lst_m2d_36/while/split/ReadVariableOp-^conv_lst_m2d_36/while/split_1/ReadVariableOp-^conv_lst_m2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_36/while/NoOp"l
3conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice5conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice_0"I
conv_lst_m2d_36_while_identity'conv_lst_m2d_36/while/Identity:output:0"M
 conv_lst_m2d_36_while_identity_1)conv_lst_m2d_36/while/Identity_1:output:0"M
 conv_lst_m2d_36_while_identity_2)conv_lst_m2d_36/while/Identity_2:output:0"M
 conv_lst_m2d_36_while_identity_3)conv_lst_m2d_36/while/Identity_3:output:0"M
 conv_lst_m2d_36_while_identity_4)conv_lst_m2d_36/while/Identity_4:output:0"M
 conv_lst_m2d_36_while_identity_5)conv_lst_m2d_36/while/Identity_5:output:0"p
5conv_lst_m2d_36_while_split_1_readvariableop_resource7conv_lst_m2d_36_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_36_while_split_2_readvariableop_resource7conv_lst_m2d_36_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_36_while_split_readvariableop_resource5conv_lst_m2d_36_while_split_readvariableop_resource_0"?
qconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_36/while/split/ReadVariableOp*conv_lst_m2d_36/while/split/ReadVariableOp2\
,conv_lst_m2d_36/while/split_1/ReadVariableOp,conv_lst_m2d_36/while/split_1/ReadVariableOp2\
,conv_lst_m2d_36/while/split_2/ReadVariableOp,conv_lst_m2d_36/while/split_2/ReadVariableOp: 
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
3__inference_conv_lstm_cell_37_layer_call_fn_3077415

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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30722472
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
?

?
E__inference_dense_62_layer_call_and_return_conditional_losses_3077126

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
?e
?
while_body_3075547
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
?9
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3072141

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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30720592
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
while_body_3072073*
condR
while_cond_3072072*[
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
?
+__inference_conv2d_16_layer_call_fn_3076122

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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_30726312
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
?
?
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3072631

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
?D
?
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3072059

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
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_3073194

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
?
?
"conv_lst_m2d_37_while_cond_3075031<
8conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counterB
>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations%
!conv_lst_m2d_37_while_placeholder'
#conv_lst_m2d_37_while_placeholder_1'
#conv_lst_m2d_37_while_placeholder_2'
#conv_lst_m2d_37_while_placeholder_3<
8conv_lst_m2d_37_while_less_conv_lst_m2d_37_strided_sliceU
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3075031___redundant_placeholder0U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3075031___redundant_placeholder1U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3075031___redundant_placeholder2U
Qconv_lst_m2d_37_while_conv_lst_m2d_37_while_cond_3075031___redundant_placeholder3"
conv_lst_m2d_37_while_identity
?
conv_lst_m2d_37/while/LessLess!conv_lst_m2d_37_while_placeholder8conv_lst_m2d_37_while_less_conv_lst_m2d_37_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/Less?
conv_lst_m2d_37/while/IdentityIdentityconv_lst_m2d_37/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_37/while/Identity"I
conv_lst_m2d_37_while_identity'conv_lst_m2d_37/while/Identity:output:0*(
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
?e
?
while_body_3075767
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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3071597

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
?9
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3072379

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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30722472
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
while_body_3072311*
condR
while_cond_3072310*[
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
?

?
E__inference_dense_63_layer_call_and_return_conditional_losses_3073152

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
?e
?
while_body_3075987
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
?
?
while_cond_3075766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3075766___redundant_placeholder05
1while_while_cond_3075766___redundant_placeholder15
1while_while_cond_3075766___redundant_placeholder25
1while_while_cond_3075766___redundant_placeholder3
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
?
?
%__inference_signature_wrapper_3074137
conv2d_16_input
conv_lst_m2d_36_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_36_inputconv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_30713072
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
_user_specified_nameconv2d_16_input:jf
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_36_input
?
?
while_cond_3072310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3072310___redundant_placeholder05
1while_while_cond_3072310___redundant_placeholder15
1while_while_cond_3072310___redundant_placeholder25
1while_while_cond_3072310___redundant_placeholder3
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
??
?
"conv_lst_m2d_37_while_body_3075032<
8conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counterB
>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations%
!conv_lst_m2d_37_while_placeholder'
#conv_lst_m2d_37_while_placeholder_1'
#conv_lst_m2d_37_while_placeholder_2'
#conv_lst_m2d_37_while_placeholder_39
5conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice_0w
sconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_37_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_37_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_37_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_37_while_identity$
 conv_lst_m2d_37_while_identity_1$
 conv_lst_m2d_37_while_identity_2$
 conv_lst_m2d_37_while_identity_3$
 conv_lst_m2d_37_while_identity_4$
 conv_lst_m2d_37_while_identity_57
3conv_lst_m2d_37_while_conv_lst_m2d_37_strided_sliceu
qconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_37_while_split_readvariableop_resource:F?P
5conv_lst_m2d_37_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_37_while_split_2_readvariableop_resource:	???*conv_lst_m2d_37/while/split/ReadVariableOp?,conv_lst_m2d_37/while/split_1/ReadVariableOp?,conv_lst_m2d_37/while/split_2/ReadVariableOp?
Gconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_37_while_placeholderPconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_37/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_37/while/split/split_dim?
*conv_lst_m2d_37/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_37_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_37/while/split/ReadVariableOp?
conv_lst_m2d_37/while/splitSplit.conv_lst_m2d_37/while/split/split_dim:output:02conv_lst_m2d_37/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_37/while/split?
'conv_lst_m2d_37/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_37/while/split_1/split_dim?
,conv_lst_m2d_37/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_37_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_37/while/split_1/ReadVariableOp?
conv_lst_m2d_37/while/split_1Split0conv_lst_m2d_37/while/split_1/split_dim:output:04conv_lst_m2d_37/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_37/while/split_1?
'conv_lst_m2d_37/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_37/while/split_2/split_dim?
,conv_lst_m2d_37/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_37_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_37/while/split_2/ReadVariableOp?
conv_lst_m2d_37/while/split_2Split0conv_lst_m2d_37/while/split_2/split_dim:output:04conv_lst_m2d_37/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_37/while/split_2?
!conv_lst_m2d_37/while/convolutionConv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_37/while/convolution?
conv_lst_m2d_37/while/BiasAddBiasAdd*conv_lst_m2d_37/while/convolution:output:0&conv_lst_m2d_37/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/BiasAdd?
#conv_lst_m2d_37/while/convolution_1Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_1?
conv_lst_m2d_37/while/BiasAdd_1BiasAdd,conv_lst_m2d_37/while/convolution_1:output:0&conv_lst_m2d_37/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_1?
#conv_lst_m2d_37/while/convolution_2Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_2?
conv_lst_m2d_37/while/BiasAdd_2BiasAdd,conv_lst_m2d_37/while/convolution_2:output:0&conv_lst_m2d_37/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_2?
#conv_lst_m2d_37/while/convolution_3Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_3?
conv_lst_m2d_37/while/BiasAdd_3BiasAdd,conv_lst_m2d_37/while/convolution_3:output:0&conv_lst_m2d_37/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_3?
#conv_lst_m2d_37/while/convolution_4Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_4?
#conv_lst_m2d_37/while/convolution_5Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_5?
#conv_lst_m2d_37/while/convolution_6Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_6?
#conv_lst_m2d_37/while/convolution_7Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_7?
conv_lst_m2d_37/while/addAddV2&conv_lst_m2d_37/while/BiasAdd:output:0,conv_lst_m2d_37/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add
conv_lst_m2d_37/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const?
conv_lst_m2d_37/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_1?
conv_lst_m2d_37/while/MulMulconv_lst_m2d_37/while/add:z:0$conv_lst_m2d_37/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul?
conv_lst_m2d_37/while/Add_1AddV2conv_lst_m2d_37/while/Mul:z:0&conv_lst_m2d_37/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_1?
-conv_lst_m2d_37/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_37/while/clip_by_value/Minimum/y?
+conv_lst_m2d_37/while/clip_by_value/MinimumMinimumconv_lst_m2d_37/while/Add_1:z:06conv_lst_m2d_37/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_37/while/clip_by_value/Minimum?
%conv_lst_m2d_37/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_37/while/clip_by_value/y?
#conv_lst_m2d_37/while/clip_by_valueMaximum/conv_lst_m2d_37/while/clip_by_value/Minimum:z:0.conv_lst_m2d_37/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_37/while/clip_by_value?
conv_lst_m2d_37/while/add_2AddV2(conv_lst_m2d_37/while/BiasAdd_1:output:0,conv_lst_m2d_37/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_2?
conv_lst_m2d_37/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const_2?
conv_lst_m2d_37/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_3?
conv_lst_m2d_37/while/Mul_1Mulconv_lst_m2d_37/while/add_2:z:0&conv_lst_m2d_37/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul_1?
conv_lst_m2d_37/while/Add_3AddV2conv_lst_m2d_37/while/Mul_1:z:0&conv_lst_m2d_37/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_3?
/conv_lst_m2d_37/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_37/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_37/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_37/while/Add_3:z:08conv_lst_m2d_37/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_37/while/clip_by_value_1/Minimum?
'conv_lst_m2d_37/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_37/while/clip_by_value_1/y?
%conv_lst_m2d_37/while/clip_by_value_1Maximum1conv_lst_m2d_37/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_37/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/while/clip_by_value_1?
conv_lst_m2d_37/while/mul_2Mul)conv_lst_m2d_37/while/clip_by_value_1:z:0#conv_lst_m2d_37_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_2?
conv_lst_m2d_37/while/add_4AddV2(conv_lst_m2d_37/while/BiasAdd_2:output:0,conv_lst_m2d_37/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_4?
conv_lst_m2d_37/while/ReluReluconv_lst_m2d_37/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Relu?
conv_lst_m2d_37/while/mul_3Mul'conv_lst_m2d_37/while/clip_by_value:z:0(conv_lst_m2d_37/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_3?
conv_lst_m2d_37/while/add_5AddV2conv_lst_m2d_37/while/mul_2:z:0conv_lst_m2d_37/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_5?
conv_lst_m2d_37/while/add_6AddV2(conv_lst_m2d_37/while/BiasAdd_3:output:0,conv_lst_m2d_37/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_6?
conv_lst_m2d_37/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const_4?
conv_lst_m2d_37/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_5?
conv_lst_m2d_37/while/Mul_4Mulconv_lst_m2d_37/while/add_6:z:0&conv_lst_m2d_37/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul_4?
conv_lst_m2d_37/while/Add_7AddV2conv_lst_m2d_37/while/Mul_4:z:0&conv_lst_m2d_37/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_7?
/conv_lst_m2d_37/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_37/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_37/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_37/while/Add_7:z:08conv_lst_m2d_37/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_37/while/clip_by_value_2/Minimum?
'conv_lst_m2d_37/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_37/while/clip_by_value_2/y?
%conv_lst_m2d_37/while/clip_by_value_2Maximum1conv_lst_m2d_37/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_37/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/while/clip_by_value_2?
conv_lst_m2d_37/while/Relu_1Reluconv_lst_m2d_37/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Relu_1?
conv_lst_m2d_37/while/mul_5Mul)conv_lst_m2d_37/while/clip_by_value_2:z:0*conv_lst_m2d_37/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_5?
:conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_37_while_placeholder_1!conv_lst_m2d_37_while_placeholderconv_lst_m2d_37/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_37/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_37/while/add_8/y?
conv_lst_m2d_37/while/add_8AddV2!conv_lst_m2d_37_while_placeholder&conv_lst_m2d_37/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/add_8?
conv_lst_m2d_37/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_37/while/add_9/y?
conv_lst_m2d_37/while/add_9AddV28conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counter&conv_lst_m2d_37/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/add_9?
conv_lst_m2d_37/while/IdentityIdentityconv_lst_m2d_37/while/add_9:z:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_37/while/Identity?
 conv_lst_m2d_37/while/Identity_1Identity>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_1?
 conv_lst_m2d_37/while/Identity_2Identityconv_lst_m2d_37/while/add_8:z:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_2?
 conv_lst_m2d_37/while/Identity_3IdentityJconv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_3?
 conv_lst_m2d_37/while/Identity_4Identityconv_lst_m2d_37/while/mul_5:z:0^conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_37/while/Identity_4?
 conv_lst_m2d_37/while/Identity_5Identityconv_lst_m2d_37/while/add_5:z:0^conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_37/while/Identity_5?
conv_lst_m2d_37/while/NoOpNoOp+^conv_lst_m2d_37/while/split/ReadVariableOp-^conv_lst_m2d_37/while/split_1/ReadVariableOp-^conv_lst_m2d_37/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_37/while/NoOp"l
3conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice5conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice_0"I
conv_lst_m2d_37_while_identity'conv_lst_m2d_37/while/Identity:output:0"M
 conv_lst_m2d_37_while_identity_1)conv_lst_m2d_37/while/Identity_1:output:0"M
 conv_lst_m2d_37_while_identity_2)conv_lst_m2d_37/while/Identity_2:output:0"M
 conv_lst_m2d_37_while_identity_3)conv_lst_m2d_37/while/Identity_3:output:0"M
 conv_lst_m2d_37_while_identity_4)conv_lst_m2d_37/while/Identity_4:output:0"M
 conv_lst_m2d_37_while_identity_5)conv_lst_m2d_37/while/Identity_5:output:0"p
5conv_lst_m2d_37_while_split_1_readvariableop_resource7conv_lst_m2d_37_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_37_while_split_2_readvariableop_resource7conv_lst_m2d_37_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_37_while_split_readvariableop_resource5conv_lst_m2d_37_while_split_readvariableop_resource_0"?
qconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_37/while/split/ReadVariableOp*conv_lst_m2d_37/while/split/ReadVariableOp2\
,conv_lst_m2d_37/while/split_1/ReadVariableOp,conv_lst_m2d_37/while/split_1/ReadVariableOp2\
,conv_lst_m2d_37/while/split_2/ReadVariableOp,conv_lst_m2d_37/while/split_2/ReadVariableOp: 
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
?
?
*__inference_model_18_layer_call_fn_3073983
conv_lst_m2d_36_input
conv2d_16_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_36_inputconv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
E__inference_model_18_layer_call_and_return_conditional_losses_30739022
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
_user_specified_nameconv_lst_m2d_36_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_16_input
?
?
"conv_lst_m2d_36_while_cond_3074806<
8conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counterB
>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations%
!conv_lst_m2d_36_while_placeholder'
#conv_lst_m2d_36_while_placeholder_1'
#conv_lst_m2d_36_while_placeholder_2'
#conv_lst_m2d_36_while_placeholder_3<
8conv_lst_m2d_36_while_less_conv_lst_m2d_36_strided_sliceU
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074806___redundant_placeholder0U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074806___redundant_placeholder1U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074806___redundant_placeholder2U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074806___redundant_placeholder3"
conv_lst_m2d_36_while_identity
?
conv_lst_m2d_36/while/LessLess!conv_lst_m2d_36_while_placeholder8conv_lst_m2d_36_while_less_conv_lst_m2d_36_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/Less?
conv_lst_m2d_36/while/IdentityIdentityconv_lst_m2d_36/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_36/while/Identity"I
conv_lst_m2d_36_while_identity'conv_lst_m2d_36/while/Identity:output:0*(
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3076113

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
while_body_3075987*
condR
while_cond_3075986*[
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
?
?
+model_18_conv_lst_m2d_36_while_cond_3070924N
Jmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_loop_counterT
Pmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_maximum_iterations.
*model_18_conv_lst_m2d_36_while_placeholder0
,model_18_conv_lst_m2d_36_while_placeholder_10
,model_18_conv_lst_m2d_36_while_placeholder_20
,model_18_conv_lst_m2d_36_while_placeholder_3N
Jmodel_18_conv_lst_m2d_36_while_less_model_18_conv_lst_m2d_36_strided_sliceg
cmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_cond_3070924___redundant_placeholder0g
cmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_cond_3070924___redundant_placeholder1g
cmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_cond_3070924___redundant_placeholder2g
cmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_cond_3070924___redundant_placeholder3+
'model_18_conv_lst_m2d_36_while_identity
?
#model_18/conv_lst_m2d_36/while/LessLess*model_18_conv_lst_m2d_36_while_placeholderJmodel_18_conv_lst_m2d_36_while_less_model_18_conv_lst_m2d_36_strided_slice*
T0*
_output_shapes
: 2%
#model_18/conv_lst_m2d_36/while/Less?
'model_18/conv_lst_m2d_36/while/IdentityIdentity'model_18/conv_lst_m2d_36/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_18/conv_lst_m2d_36/while/Identity"[
'model_18_conv_lst_m2d_36_while_identity0model_18/conv_lst_m2d_36/while/Identity:output:0*(
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
?
?
*__inference_dense_65_layer_call_fn_3077186

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
E__inference_dense_65_layer_call_and_return_conditional_losses_30731942
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
?7
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3071491

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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30714092
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
while_body_3071423*
condR
while_cond_3071422*[
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
?D
?
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077565

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
1__inference_conv_lst_m2d_37_layer_call_fn_3076155
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30723792
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
??
?
E__inference_model_18_layer_call_and_return_conditional_losses_3074705
inputs_0
inputs_1B
(conv2d_16_conv2d_readvariableop_resource:F7
)conv2d_16_biasadd_readvariableop_resource:FH
-conv_lst_m2d_36_split_readvariableop_resource:?J
/conv_lst_m2d_36_split_1_readvariableop_resource:F?>
/conv_lst_m2d_36_split_2_readvariableop_resource:	?B
(conv2d_17_conv2d_readvariableop_resource:FK7
)conv2d_17_biasadd_readvariableop_resource:KH
-conv_lst_m2d_37_split_readvariableop_resource:F?J
/conv_lst_m2d_37_split_1_readvariableop_resource:K?>
/conv_lst_m2d_37_split_2_readvariableop_resource:	?:
'dense_62_matmul_readvariableop_resource:	?26
(dense_62_biasadd_readvariableop_resource:29
'dense_63_matmul_readvariableop_resource:K26
(dense_63_biasadd_readvariableop_resource:29
'dense_64_matmul_readvariableop_resource:226
(dense_64_biasadd_readvariableop_resource:29
'dense_65_matmul_readvariableop_resource:26
(dense_65_biasadd_readvariableop_resource:
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?$conv_lst_m2d_36/split/ReadVariableOp?&conv_lst_m2d_36/split_1/ReadVariableOp?&conv_lst_m2d_36/split_2/ReadVariableOp?conv_lst_m2d_36/while?$conv_lst_m2d_37/split/ReadVariableOp?&conv_lst_m2d_37/split_1/ReadVariableOp?&conv_lst_m2d_37/split_2/ReadVariableOp?conv_lst_m2d_37/while?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2Dinputs_1'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_16/Relu?
conv_lst_m2d_36/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_36/zeros_like?
%conv_lst_m2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_36/Sum/reduction_indices?
conv_lst_m2d_36/SumSumconv_lst_m2d_36/zeros_like:y:0.conv_lst_m2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_36/Sum?
conv_lst_m2d_36/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_36/zeros?
conv_lst_m2d_36/convolutionConv2Dconv_lst_m2d_36/Sum:output:0conv_lst_m2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution?
conv_lst_m2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_36/transpose/perm?
conv_lst_m2d_36/transpose	Transposeinputs_0'conv_lst_m2d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_36/transpose{
conv_lst_m2d_36/ShapeShapeconv_lst_m2d_36/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_36/Shape?
#conv_lst_m2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_36/strided_slice/stack?
%conv_lst_m2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_36/strided_slice/stack_1?
%conv_lst_m2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_36/strided_slice/stack_2?
conv_lst_m2d_36/strided_sliceStridedSliceconv_lst_m2d_36/Shape:output:0,conv_lst_m2d_36/strided_slice/stack:output:0.conv_lst_m2d_36/strided_slice/stack_1:output:0.conv_lst_m2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_36/strided_slice?
+conv_lst_m2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_36/TensorArrayV2/element_shape?
conv_lst_m2d_36/TensorArrayV2TensorListReserve4conv_lst_m2d_36/TensorArrayV2/element_shape:output:0&conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_36/TensorArrayV2?
Econv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_36/transpose:y:0Nconv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_36/strided_slice_1/stack?
'conv_lst_m2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_1/stack_1?
'conv_lst_m2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_1/stack_2?
conv_lst_m2d_36/strided_slice_1StridedSliceconv_lst_m2d_36/transpose:y:0.conv_lst_m2d_36/strided_slice_1/stack:output:00conv_lst_m2d_36/strided_slice_1/stack_1:output:00conv_lst_m2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_36/strided_slice_1?
conv_lst_m2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_36/split/split_dim?
$conv_lst_m2d_36/split/ReadVariableOpReadVariableOp-conv_lst_m2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_36/split/ReadVariableOp?
conv_lst_m2d_36/splitSplit(conv_lst_m2d_36/split/split_dim:output:0,conv_lst_m2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_36/split?
!conv_lst_m2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_36/split_1/split_dim?
&conv_lst_m2d_36/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_36_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_36/split_1/ReadVariableOp?
conv_lst_m2d_36/split_1Split*conv_lst_m2d_36/split_1/split_dim:output:0.conv_lst_m2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_36/split_1?
!conv_lst_m2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_36/split_2/split_dim?
&conv_lst_m2d_36/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_36/split_2/ReadVariableOp?
conv_lst_m2d_36/split_2Split*conv_lst_m2d_36/split_2/split_dim:output:0.conv_lst_m2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_36/split_2?
conv_lst_m2d_36/convolution_1Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_1?
conv_lst_m2d_36/BiasAddBiasAdd&conv_lst_m2d_36/convolution_1:output:0 conv_lst_m2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd?
conv_lst_m2d_36/convolution_2Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_2?
conv_lst_m2d_36/BiasAdd_1BiasAdd&conv_lst_m2d_36/convolution_2:output:0 conv_lst_m2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_1?
conv_lst_m2d_36/convolution_3Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_3?
conv_lst_m2d_36/BiasAdd_2BiasAdd&conv_lst_m2d_36/convolution_3:output:0 conv_lst_m2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_2?
conv_lst_m2d_36/convolution_4Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_4?
conv_lst_m2d_36/BiasAdd_3BiasAdd&conv_lst_m2d_36/convolution_4:output:0 conv_lst_m2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_3?
conv_lst_m2d_36/convolution_5Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_5?
conv_lst_m2d_36/convolution_6Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_6?
conv_lst_m2d_36/convolution_7Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_7?
conv_lst_m2d_36/convolution_8Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_8?
conv_lst_m2d_36/addAddV2 conv_lst_m2d_36/BiasAdd:output:0&conv_lst_m2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/adds
conv_lst_m2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Constw
conv_lst_m2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_1?
conv_lst_m2d_36/MulMulconv_lst_m2d_36/add:z:0conv_lst_m2d_36/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul?
conv_lst_m2d_36/Add_1AddV2conv_lst_m2d_36/Mul:z:0 conv_lst_m2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_1?
'conv_lst_m2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_36/clip_by_value/Minimum/y?
%conv_lst_m2d_36/clip_by_value/MinimumMinimumconv_lst_m2d_36/Add_1:z:00conv_lst_m2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/clip_by_value/Minimum?
conv_lst_m2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_36/clip_by_value/y?
conv_lst_m2d_36/clip_by_valueMaximum)conv_lst_m2d_36/clip_by_value/Minimum:z:0(conv_lst_m2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/clip_by_value?
conv_lst_m2d_36/add_2AddV2"conv_lst_m2d_36/BiasAdd_1:output:0&conv_lst_m2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_2w
conv_lst_m2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Const_2w
conv_lst_m2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_3?
conv_lst_m2d_36/Mul_1Mulconv_lst_m2d_36/add_2:z:0 conv_lst_m2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul_1?
conv_lst_m2d_36/Add_3AddV2conv_lst_m2d_36/Mul_1:z:0 conv_lst_m2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_3?
)conv_lst_m2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_36/clip_by_value_1/Minimum/y?
'conv_lst_m2d_36/clip_by_value_1/MinimumMinimumconv_lst_m2d_36/Add_3:z:02conv_lst_m2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_36/clip_by_value_1/Minimum?
!conv_lst_m2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_36/clip_by_value_1/y?
conv_lst_m2d_36/clip_by_value_1Maximum+conv_lst_m2d_36/clip_by_value_1/Minimum:z:0*conv_lst_m2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/clip_by_value_1?
conv_lst_m2d_36/mul_2Mul#conv_lst_m2d_36/clip_by_value_1:z:0$conv_lst_m2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_2?
conv_lst_m2d_36/add_4AddV2"conv_lst_m2d_36/BiasAdd_2:output:0&conv_lst_m2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_4?
conv_lst_m2d_36/ReluReluconv_lst_m2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Relu?
conv_lst_m2d_36/mul_3Mul!conv_lst_m2d_36/clip_by_value:z:0"conv_lst_m2d_36/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_3?
conv_lst_m2d_36/add_5AddV2conv_lst_m2d_36/mul_2:z:0conv_lst_m2d_36/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_5?
conv_lst_m2d_36/add_6AddV2"conv_lst_m2d_36/BiasAdd_3:output:0&conv_lst_m2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_6w
conv_lst_m2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Const_4w
conv_lst_m2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_5?
conv_lst_m2d_36/Mul_4Mulconv_lst_m2d_36/add_6:z:0 conv_lst_m2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul_4?
conv_lst_m2d_36/Add_7AddV2conv_lst_m2d_36/Mul_4:z:0 conv_lst_m2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_7?
)conv_lst_m2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_36/clip_by_value_2/Minimum/y?
'conv_lst_m2d_36/clip_by_value_2/MinimumMinimumconv_lst_m2d_36/Add_7:z:02conv_lst_m2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_36/clip_by_value_2/Minimum?
!conv_lst_m2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_36/clip_by_value_2/y?
conv_lst_m2d_36/clip_by_value_2Maximum+conv_lst_m2d_36/clip_by_value_2/Minimum:z:0*conv_lst_m2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/clip_by_value_2?
conv_lst_m2d_36/Relu_1Reluconv_lst_m2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Relu_1?
conv_lst_m2d_36/mul_5Mul#conv_lst_m2d_36/clip_by_value_2:z:0$conv_lst_m2d_36/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_5?
-conv_lst_m2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_36/TensorArrayV2_1/element_shape?
conv_lst_m2d_36/TensorArrayV2_1TensorListReserve6conv_lst_m2d_36/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_36/TensorArrayV2_1n
conv_lst_m2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_36/time?
(conv_lst_m2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_36/while/maximum_iterations?
"conv_lst_m2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_36/while/loop_counter?
conv_lst_m2d_36/whileWhile+conv_lst_m2d_36/while/loop_counter:output:01conv_lst_m2d_36/while/maximum_iterations:output:0conv_lst_m2d_36/time:output:0(conv_lst_m2d_36/TensorArrayV2_1:handle:0$conv_lst_m2d_36/convolution:output:0$conv_lst_m2d_36/convolution:output:0&conv_lst_m2d_36/strided_slice:output:0Gconv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_36_split_readvariableop_resource/conv_lst_m2d_36_split_1_readvariableop_resource/conv_lst_m2d_36_split_2_readvariableop_resource*
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
"conv_lst_m2d_36_while_body_3074323*.
cond&R$
"conv_lst_m2d_36_while_cond_3074322*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_36/while?
@conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_36/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_36/while:output:3Iconv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_36/strided_slice_2/stack?
'conv_lst_m2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_36/strided_slice_2/stack_1?
'conv_lst_m2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_2/stack_2?
conv_lst_m2d_36/strided_slice_2StridedSlice;conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_36/strided_slice_2/stack:output:00conv_lst_m2d_36/strided_slice_2/stack_1:output:00conv_lst_m2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_36/strided_slice_2?
 conv_lst_m2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_36/transpose_1/perm?
conv_lst_m2d_36/transpose_1	Transpose;conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_36/transpose_1?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_17/Relu?
conv_lst_m2d_37/zeros_like	ZerosLikeconv_lst_m2d_36/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_37/zeros_like?
%conv_lst_m2d_37/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_37/Sum/reduction_indices?
conv_lst_m2d_37/SumSumconv_lst_m2d_37/zeros_like:y:0.conv_lst_m2d_37/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_37/Sum?
%conv_lst_m2d_37/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_37/zeros/shape_as_tensor
conv_lst_m2d_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_37/zeros/Const?
conv_lst_m2d_37/zerosFill.conv_lst_m2d_37/zeros/shape_as_tensor:output:0$conv_lst_m2d_37/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_37/zeros?
conv_lst_m2d_37/convolutionConv2Dconv_lst_m2d_37/Sum:output:0conv_lst_m2d_37/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution?
conv_lst_m2d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_37/transpose/perm?
conv_lst_m2d_37/transpose	Transposeconv_lst_m2d_36/transpose_1:y:0'conv_lst_m2d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_37/transpose{
conv_lst_m2d_37/ShapeShapeconv_lst_m2d_37/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_37/Shape?
#conv_lst_m2d_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_37/strided_slice/stack?
%conv_lst_m2d_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_37/strided_slice/stack_1?
%conv_lst_m2d_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_37/strided_slice/stack_2?
conv_lst_m2d_37/strided_sliceStridedSliceconv_lst_m2d_37/Shape:output:0,conv_lst_m2d_37/strided_slice/stack:output:0.conv_lst_m2d_37/strided_slice/stack_1:output:0.conv_lst_m2d_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_37/strided_slice?
+conv_lst_m2d_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_37/TensorArrayV2/element_shape?
conv_lst_m2d_37/TensorArrayV2TensorListReserve4conv_lst_m2d_37/TensorArrayV2/element_shape:output:0&conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_37/TensorArrayV2?
Econv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_37/transpose:y:0Nconv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_37/strided_slice_1/stack?
'conv_lst_m2d_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_1/stack_1?
'conv_lst_m2d_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_1/stack_2?
conv_lst_m2d_37/strided_slice_1StridedSliceconv_lst_m2d_37/transpose:y:0.conv_lst_m2d_37/strided_slice_1/stack:output:00conv_lst_m2d_37/strided_slice_1/stack_1:output:00conv_lst_m2d_37/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_37/strided_slice_1?
conv_lst_m2d_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_37/split/split_dim?
$conv_lst_m2d_37/split/ReadVariableOpReadVariableOp-conv_lst_m2d_37_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_37/split/ReadVariableOp?
conv_lst_m2d_37/splitSplit(conv_lst_m2d_37/split/split_dim:output:0,conv_lst_m2d_37/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_37/split?
!conv_lst_m2d_37/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_37/split_1/split_dim?
&conv_lst_m2d_37/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_37_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_37/split_1/ReadVariableOp?
conv_lst_m2d_37/split_1Split*conv_lst_m2d_37/split_1/split_dim:output:0.conv_lst_m2d_37/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_37/split_1?
!conv_lst_m2d_37/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_37/split_2/split_dim?
&conv_lst_m2d_37/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_37_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_37/split_2/ReadVariableOp?
conv_lst_m2d_37/split_2Split*conv_lst_m2d_37/split_2/split_dim:output:0.conv_lst_m2d_37/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_37/split_2?
conv_lst_m2d_37/convolution_1Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_1?
conv_lst_m2d_37/BiasAddBiasAdd&conv_lst_m2d_37/convolution_1:output:0 conv_lst_m2d_37/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd?
conv_lst_m2d_37/convolution_2Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_2?
conv_lst_m2d_37/BiasAdd_1BiasAdd&conv_lst_m2d_37/convolution_2:output:0 conv_lst_m2d_37/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_1?
conv_lst_m2d_37/convolution_3Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_3?
conv_lst_m2d_37/BiasAdd_2BiasAdd&conv_lst_m2d_37/convolution_3:output:0 conv_lst_m2d_37/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_2?
conv_lst_m2d_37/convolution_4Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_4?
conv_lst_m2d_37/BiasAdd_3BiasAdd&conv_lst_m2d_37/convolution_4:output:0 conv_lst_m2d_37/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_3?
conv_lst_m2d_37/convolution_5Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_5?
conv_lst_m2d_37/convolution_6Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_6?
conv_lst_m2d_37/convolution_7Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_7?
conv_lst_m2d_37/convolution_8Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_8?
conv_lst_m2d_37/addAddV2 conv_lst_m2d_37/BiasAdd:output:0&conv_lst_m2d_37/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/adds
conv_lst_m2d_37/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Constw
conv_lst_m2d_37/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_1?
conv_lst_m2d_37/MulMulconv_lst_m2d_37/add:z:0conv_lst_m2d_37/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul?
conv_lst_m2d_37/Add_1AddV2conv_lst_m2d_37/Mul:z:0 conv_lst_m2d_37/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_1?
'conv_lst_m2d_37/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_37/clip_by_value/Minimum/y?
%conv_lst_m2d_37/clip_by_value/MinimumMinimumconv_lst_m2d_37/Add_1:z:00conv_lst_m2d_37/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/clip_by_value/Minimum?
conv_lst_m2d_37/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_37/clip_by_value/y?
conv_lst_m2d_37/clip_by_valueMaximum)conv_lst_m2d_37/clip_by_value/Minimum:z:0(conv_lst_m2d_37/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/clip_by_value?
conv_lst_m2d_37/add_2AddV2"conv_lst_m2d_37/BiasAdd_1:output:0&conv_lst_m2d_37/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_2w
conv_lst_m2d_37/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Const_2w
conv_lst_m2d_37/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_3?
conv_lst_m2d_37/Mul_1Mulconv_lst_m2d_37/add_2:z:0 conv_lst_m2d_37/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul_1?
conv_lst_m2d_37/Add_3AddV2conv_lst_m2d_37/Mul_1:z:0 conv_lst_m2d_37/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_3?
)conv_lst_m2d_37/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_37/clip_by_value_1/Minimum/y?
'conv_lst_m2d_37/clip_by_value_1/MinimumMinimumconv_lst_m2d_37/Add_3:z:02conv_lst_m2d_37/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_37/clip_by_value_1/Minimum?
!conv_lst_m2d_37/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_37/clip_by_value_1/y?
conv_lst_m2d_37/clip_by_value_1Maximum+conv_lst_m2d_37/clip_by_value_1/Minimum:z:0*conv_lst_m2d_37/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/clip_by_value_1?
conv_lst_m2d_37/mul_2Mul#conv_lst_m2d_37/clip_by_value_1:z:0$conv_lst_m2d_37/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_2?
conv_lst_m2d_37/add_4AddV2"conv_lst_m2d_37/BiasAdd_2:output:0&conv_lst_m2d_37/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_4?
conv_lst_m2d_37/ReluReluconv_lst_m2d_37/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Relu?
conv_lst_m2d_37/mul_3Mul!conv_lst_m2d_37/clip_by_value:z:0"conv_lst_m2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_3?
conv_lst_m2d_37/add_5AddV2conv_lst_m2d_37/mul_2:z:0conv_lst_m2d_37/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_5?
conv_lst_m2d_37/add_6AddV2"conv_lst_m2d_37/BiasAdd_3:output:0&conv_lst_m2d_37/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_6w
conv_lst_m2d_37/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Const_4w
conv_lst_m2d_37/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_5?
conv_lst_m2d_37/Mul_4Mulconv_lst_m2d_37/add_6:z:0 conv_lst_m2d_37/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul_4?
conv_lst_m2d_37/Add_7AddV2conv_lst_m2d_37/Mul_4:z:0 conv_lst_m2d_37/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_7?
)conv_lst_m2d_37/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_37/clip_by_value_2/Minimum/y?
'conv_lst_m2d_37/clip_by_value_2/MinimumMinimumconv_lst_m2d_37/Add_7:z:02conv_lst_m2d_37/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_37/clip_by_value_2/Minimum?
!conv_lst_m2d_37/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_37/clip_by_value_2/y?
conv_lst_m2d_37/clip_by_value_2Maximum+conv_lst_m2d_37/clip_by_value_2/Minimum:z:0*conv_lst_m2d_37/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/clip_by_value_2?
conv_lst_m2d_37/Relu_1Reluconv_lst_m2d_37/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Relu_1?
conv_lst_m2d_37/mul_5Mul#conv_lst_m2d_37/clip_by_value_2:z:0$conv_lst_m2d_37/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_5?
-conv_lst_m2d_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_37/TensorArrayV2_1/element_shape?
conv_lst_m2d_37/TensorArrayV2_1TensorListReserve6conv_lst_m2d_37/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_37/TensorArrayV2_1n
conv_lst_m2d_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_37/time?
(conv_lst_m2d_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_37/while/maximum_iterations?
"conv_lst_m2d_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_37/while/loop_counter?
conv_lst_m2d_37/whileWhile+conv_lst_m2d_37/while/loop_counter:output:01conv_lst_m2d_37/while/maximum_iterations:output:0conv_lst_m2d_37/time:output:0(conv_lst_m2d_37/TensorArrayV2_1:handle:0$conv_lst_m2d_37/convolution:output:0$conv_lst_m2d_37/convolution:output:0&conv_lst_m2d_37/strided_slice:output:0Gconv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_37_split_readvariableop_resource/conv_lst_m2d_37_split_1_readvariableop_resource/conv_lst_m2d_37_split_2_readvariableop_resource*
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
"conv_lst_m2d_37_while_body_3074548*.
cond&R$
"conv_lst_m2d_37_while_cond_3074547*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_37/while?
@conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_37/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_37/while:output:3Iconv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_37/strided_slice_2/stack?
'conv_lst_m2d_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_37/strided_slice_2/stack_1?
'conv_lst_m2d_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_2/stack_2?
conv_lst_m2d_37/strided_slice_2StridedSlice;conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_37/strided_slice_2/stack:output:00conv_lst_m2d_37/strided_slice_2/stack_1:output:00conv_lst_m2d_37/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_37/strided_slice_2?
 conv_lst_m2d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_37/transpose_1/perm?
conv_lst_m2d_37/transpose_1	Transpose;conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_37/transpose_1u
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_27/Const?
flatten_27/ReshapeReshapeconv2d_17/Relu:activations:0flatten_27/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_27/Reshapeu
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_26/Const?
flatten_26/ReshapeReshapeconv_lst_m2d_37/transpose_1:y:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_26/Reshape?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMulflatten_26/Reshape:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_62/BiasAdd?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMulflatten_27/Reshape:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_63/BiasAdd?

add_18/addAddV2dense_62/BiasAdd:output:0dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_18/add?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMuladd_18/add:z:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_64/BiasAdds
dense_64/ReluReludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_64/Relu?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMuldense_64/Relu:activations:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_65/BiasAdd|
dense_65/SoftmaxSoftmaxdense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_65/Softmaxu
IdentityIdentitydense_65/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp%^conv_lst_m2d_36/split/ReadVariableOp'^conv_lst_m2d_36/split_1/ReadVariableOp'^conv_lst_m2d_36/split_2/ReadVariableOp^conv_lst_m2d_36/while%^conv_lst_m2d_37/split/ReadVariableOp'^conv_lst_m2d_37/split_1/ReadVariableOp'^conv_lst_m2d_37/split_2/ReadVariableOp^conv_lst_m2d_37/while ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2L
$conv_lst_m2d_36/split/ReadVariableOp$conv_lst_m2d_36/split/ReadVariableOp2P
&conv_lst_m2d_36/split_1/ReadVariableOp&conv_lst_m2d_36/split_1/ReadVariableOp2P
&conv_lst_m2d_36/split_2/ReadVariableOp&conv_lst_m2d_36/split_2/ReadVariableOp2.
conv_lst_m2d_36/whileconv_lst_m2d_36/while2L
$conv_lst_m2d_37/split/ReadVariableOp$conv_lst_m2d_37/split/ReadVariableOp2P
&conv_lst_m2d_37/split_1/ReadVariableOp&conv_lst_m2d_37/split_1/ReadVariableOp2P
&conv_lst_m2d_37/split_2/ReadVariableOp&conv_lst_m2d_37/split_2/ReadVariableOp2.
conv_lst_m2d_37/whileconv_lst_m2d_37/while2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp:] Y
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
?
?
while_cond_3076494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3076494___redundant_placeholder05
1while_while_cond_3076494___redundant_placeholder15
1while_while_cond_3076494___redundant_placeholder25
1while_while_cond_3076494___redundant_placeholder3
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
?D
?
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3071409

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
??
?
"conv_lst_m2d_36_while_body_3074323<
8conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counterB
>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations%
!conv_lst_m2d_36_while_placeholder'
#conv_lst_m2d_36_while_placeholder_1'
#conv_lst_m2d_36_while_placeholder_2'
#conv_lst_m2d_36_while_placeholder_39
5conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice_0w
sconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_36_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_36_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_36_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_36_while_identity$
 conv_lst_m2d_36_while_identity_1$
 conv_lst_m2d_36_while_identity_2$
 conv_lst_m2d_36_while_identity_3$
 conv_lst_m2d_36_while_identity_4$
 conv_lst_m2d_36_while_identity_57
3conv_lst_m2d_36_while_conv_lst_m2d_36_strided_sliceu
qconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_36_while_split_readvariableop_resource:?P
5conv_lst_m2d_36_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_36_while_split_2_readvariableop_resource:	???*conv_lst_m2d_36/while/split/ReadVariableOp?,conv_lst_m2d_36/while/split_1/ReadVariableOp?,conv_lst_m2d_36/while/split_2/ReadVariableOp?
Gconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_36_while_placeholderPconv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_36/while/split/split_dim?
*conv_lst_m2d_36/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_36/while/split/ReadVariableOp?
conv_lst_m2d_36/while/splitSplit.conv_lst_m2d_36/while/split/split_dim:output:02conv_lst_m2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_36/while/split?
'conv_lst_m2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_36/while/split_1/split_dim?
,conv_lst_m2d_36/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_36/while/split_1/ReadVariableOp?
conv_lst_m2d_36/while/split_1Split0conv_lst_m2d_36/while/split_1/split_dim:output:04conv_lst_m2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_36/while/split_1?
'conv_lst_m2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_36/while/split_2/split_dim?
,conv_lst_m2d_36/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_36/while/split_2/ReadVariableOp?
conv_lst_m2d_36/while/split_2Split0conv_lst_m2d_36/while/split_2/split_dim:output:04conv_lst_m2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_36/while/split_2?
!conv_lst_m2d_36/while/convolutionConv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_36/while/convolution?
conv_lst_m2d_36/while/BiasAddBiasAdd*conv_lst_m2d_36/while/convolution:output:0&conv_lst_m2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/BiasAdd?
#conv_lst_m2d_36/while/convolution_1Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_1?
conv_lst_m2d_36/while/BiasAdd_1BiasAdd,conv_lst_m2d_36/while/convolution_1:output:0&conv_lst_m2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_1?
#conv_lst_m2d_36/while/convolution_2Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_2?
conv_lst_m2d_36/while/BiasAdd_2BiasAdd,conv_lst_m2d_36/while/convolution_2:output:0&conv_lst_m2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_2?
#conv_lst_m2d_36/while/convolution_3Conv2D@conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_36/while/convolution_3?
conv_lst_m2d_36/while/BiasAdd_3BiasAdd,conv_lst_m2d_36/while/convolution_3:output:0&conv_lst_m2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/while/BiasAdd_3?
#conv_lst_m2d_36/while/convolution_4Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_4?
#conv_lst_m2d_36/while/convolution_5Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_5?
#conv_lst_m2d_36/while/convolution_6Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_6?
#conv_lst_m2d_36/while/convolution_7Conv2D#conv_lst_m2d_36_while_placeholder_2&conv_lst_m2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_36/while/convolution_7?
conv_lst_m2d_36/while/addAddV2&conv_lst_m2d_36/while/BiasAdd:output:0,conv_lst_m2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add
conv_lst_m2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const?
conv_lst_m2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_1?
conv_lst_m2d_36/while/MulMulconv_lst_m2d_36/while/add:z:0$conv_lst_m2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul?
conv_lst_m2d_36/while/Add_1AddV2conv_lst_m2d_36/while/Mul:z:0&conv_lst_m2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_1?
-conv_lst_m2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_36/while/clip_by_value/Minimum/y?
+conv_lst_m2d_36/while/clip_by_value/MinimumMinimumconv_lst_m2d_36/while/Add_1:z:06conv_lst_m2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_36/while/clip_by_value/Minimum?
%conv_lst_m2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_36/while/clip_by_value/y?
#conv_lst_m2d_36/while/clip_by_valueMaximum/conv_lst_m2d_36/while/clip_by_value/Minimum:z:0.conv_lst_m2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_36/while/clip_by_value?
conv_lst_m2d_36/while/add_2AddV2(conv_lst_m2d_36/while/BiasAdd_1:output:0,conv_lst_m2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_2?
conv_lst_m2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const_2?
conv_lst_m2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_3?
conv_lst_m2d_36/while/Mul_1Mulconv_lst_m2d_36/while/add_2:z:0&conv_lst_m2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul_1?
conv_lst_m2d_36/while/Add_3AddV2conv_lst_m2d_36/while/Mul_1:z:0&conv_lst_m2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_3?
/conv_lst_m2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_36/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_36/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_36/while/Add_3:z:08conv_lst_m2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_36/while/clip_by_value_1/Minimum?
'conv_lst_m2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_36/while/clip_by_value_1/y?
%conv_lst_m2d_36/while/clip_by_value_1Maximum1conv_lst_m2d_36/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/while/clip_by_value_1?
conv_lst_m2d_36/while/mul_2Mul)conv_lst_m2d_36/while/clip_by_value_1:z:0#conv_lst_m2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_2?
conv_lst_m2d_36/while/add_4AddV2(conv_lst_m2d_36/while/BiasAdd_2:output:0,conv_lst_m2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_4?
conv_lst_m2d_36/while/ReluReluconv_lst_m2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Relu?
conv_lst_m2d_36/while/mul_3Mul'conv_lst_m2d_36/while/clip_by_value:z:0(conv_lst_m2d_36/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_3?
conv_lst_m2d_36/while/add_5AddV2conv_lst_m2d_36/while/mul_2:z:0conv_lst_m2d_36/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_5?
conv_lst_m2d_36/while/add_6AddV2(conv_lst_m2d_36/while/BiasAdd_3:output:0,conv_lst_m2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/add_6?
conv_lst_m2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/while/Const_4?
conv_lst_m2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/while/Const_5?
conv_lst_m2d_36/while/Mul_4Mulconv_lst_m2d_36/while/add_6:z:0&conv_lst_m2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Mul_4?
conv_lst_m2d_36/while/Add_7AddV2conv_lst_m2d_36/while/Mul_4:z:0&conv_lst_m2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Add_7?
/conv_lst_m2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_36/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_36/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_36/while/Add_7:z:08conv_lst_m2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_36/while/clip_by_value_2/Minimum?
'conv_lst_m2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_36/while/clip_by_value_2/y?
%conv_lst_m2d_36/while/clip_by_value_2Maximum1conv_lst_m2d_36/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/while/clip_by_value_2?
conv_lst_m2d_36/while/Relu_1Reluconv_lst_m2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/Relu_1?
conv_lst_m2d_36/while/mul_5Mul)conv_lst_m2d_36/while/clip_by_value_2:z:0*conv_lst_m2d_36/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/while/mul_5?
:conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_36_while_placeholder_1!conv_lst_m2d_36_while_placeholderconv_lst_m2d_36/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_36/while/add_8/y?
conv_lst_m2d_36/while/add_8AddV2!conv_lst_m2d_36_while_placeholder&conv_lst_m2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/add_8?
conv_lst_m2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_36/while/add_9/y?
conv_lst_m2d_36/while/add_9AddV28conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counter&conv_lst_m2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/add_9?
conv_lst_m2d_36/while/IdentityIdentityconv_lst_m2d_36/while/add_9:z:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_36/while/Identity?
 conv_lst_m2d_36/while/Identity_1Identity>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_1?
 conv_lst_m2d_36/while/Identity_2Identityconv_lst_m2d_36/while/add_8:z:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_2?
 conv_lst_m2d_36/while/Identity_3IdentityJconv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_36/while/Identity_3?
 conv_lst_m2d_36/while/Identity_4Identityconv_lst_m2d_36/while/mul_5:z:0^conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_36/while/Identity_4?
 conv_lst_m2d_36/while/Identity_5Identityconv_lst_m2d_36/while/add_5:z:0^conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_36/while/Identity_5?
conv_lst_m2d_36/while/NoOpNoOp+^conv_lst_m2d_36/while/split/ReadVariableOp-^conv_lst_m2d_36/while/split_1/ReadVariableOp-^conv_lst_m2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_36/while/NoOp"l
3conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice5conv_lst_m2d_36_while_conv_lst_m2d_36_strided_slice_0"I
conv_lst_m2d_36_while_identity'conv_lst_m2d_36/while/Identity:output:0"M
 conv_lst_m2d_36_while_identity_1)conv_lst_m2d_36/while/Identity_1:output:0"M
 conv_lst_m2d_36_while_identity_2)conv_lst_m2d_36/while/Identity_2:output:0"M
 conv_lst_m2d_36_while_identity_3)conv_lst_m2d_36/while/Identity_3:output:0"M
 conv_lst_m2d_36_while_identity_4)conv_lst_m2d_36/while/Identity_4:output:0"M
 conv_lst_m2d_36_while_identity_5)conv_lst_m2d_36/while/Identity_5:output:0"p
5conv_lst_m2d_36_while_split_1_readvariableop_resource7conv_lst_m2d_36_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_36_while_split_2_readvariableop_resource7conv_lst_m2d_36_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_36_while_split_readvariableop_resource5conv_lst_m2d_36_while_split_readvariableop_resource_0"?
qconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_36/while/split/ReadVariableOp*conv_lst_m2d_36/while/split/ReadVariableOp2\
,conv_lst_m2d_36/while/split_1/ReadVariableOp,conv_lst_m2d_36/while/split_1/ReadVariableOp2\
,conv_lst_m2d_36/while/split_2/ReadVariableOp,conv_lst_m2d_36/while/split_2/ReadVariableOp: 
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
?
m
C__inference_add_18_layer_call_and_return_conditional_losses_3073164

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
?:
?
E__inference_model_18_layer_call_and_return_conditional_losses_3073902

inputs
inputs_1+
conv2d_16_3073854:F
conv2d_16_3073856:F2
conv_lst_m2d_36_3073859:?2
conv_lst_m2d_36_3073861:F?&
conv_lst_m2d_36_3073863:	?+
conv2d_17_3073866:FK
conv2d_17_3073868:K2
conv_lst_m2d_37_3073871:F?2
conv_lst_m2d_37_3073873:K?&
conv_lst_m2d_37_3073875:	?#
dense_62_3073880:	?2
dense_62_3073882:2"
dense_63_3073885:K2
dense_63_3073887:2"
dense_64_3073891:22
dense_64_3073893:2"
dense_65_3073896:2
dense_65_3073898:
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?'conv_lst_m2d_36/StatefulPartitionedCall?'conv_lst_m2d_37/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_16_3073854conv2d_16_3073856*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_30726312#
!conv2d_16/StatefulPartitionedCall?
'conv_lst_m2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_36_3073859conv_lst_m2d_36_3073861conv_lst_m2d_36_3073863*
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30737862)
'conv_lst_m2d_36/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_3073866conv2d_17_3073868*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_30728752#
!conv2d_17/StatefulPartitionedCall?
'conv_lst_m2d_37/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_36/StatefulPartitionedCall:output:0conv_lst_m2d_37_3073871conv_lst_m2d_37_3073873conv_lst_m2d_37_3073875*
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30735342)
'conv_lst_m2d_37/StatefulPartitionedCall?
flatten_27/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
G__inference_flatten_27_layer_call_and_return_conditional_losses_30731162
flatten_27/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall0conv_lst_m2d_37/StatefulPartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_30731242
flatten_26/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_62_3073880dense_62_3073882*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_30731362"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_63_3073885dense_63_3073887*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_30731522"
 dense_63/StatefulPartitionedCall?
add_18/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0)dense_63/StatefulPartitionedCall:output:0*
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
C__inference_add_18_layer_call_and_return_conditional_losses_30731642
add_18/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalladd_18/PartitionedCall:output:0dense_64_3073891dense_64_3073893*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_30731772"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_3073896dense_65_3073898*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_30731942"
 dense_65/StatefulPartitionedCall?
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall(^conv_lst_m2d_36/StatefulPartitionedCall(^conv_lst_m2d_37/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2R
'conv_lst_m2d_36/StatefulPartitionedCall'conv_lst_m2d_36/StatefulPartitionedCall2R
'conv_lst_m2d_37/StatefulPartitionedCall'conv_lst_m2d_37/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_conv_lstm_cell_36_layer_call_fn_3077214

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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30714092
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
?
?
while_cond_3071658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3071658___redundant_placeholder05
1while_while_cond_3071658___redundant_placeholder15
1while_while_cond_3071658___redundant_placeholder25
1while_while_cond_3071658___redundant_placeholder3
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
while_body_3076495
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
?
?
E__inference_dense_64_layer_call_and_return_conditional_losses_3073177

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
?	
?
1__inference_conv_lst_m2d_37_layer_call_fn_3076144
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_30721412
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
?p
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3077065

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
while_body_3076939*
condR
while_cond_3076938*[
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
??
?
+model_18_conv_lst_m2d_36_while_body_3070925N
Jmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_loop_counterT
Pmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_maximum_iterations.
*model_18_conv_lst_m2d_36_while_placeholder0
,model_18_conv_lst_m2d_36_while_placeholder_10
,model_18_conv_lst_m2d_36_while_placeholder_20
,model_18_conv_lst_m2d_36_while_placeholder_3K
Gmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_strided_slice_0?
?model_18_conv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0Y
>model_18_conv_lst_m2d_36_while_split_readvariableop_resource_0:?[
@model_18_conv_lst_m2d_36_while_split_1_readvariableop_resource_0:F?O
@model_18_conv_lst_m2d_36_while_split_2_readvariableop_resource_0:	?+
'model_18_conv_lst_m2d_36_while_identity-
)model_18_conv_lst_m2d_36_while_identity_1-
)model_18_conv_lst_m2d_36_while_identity_2-
)model_18_conv_lst_m2d_36_while_identity_3-
)model_18_conv_lst_m2d_36_while_identity_4-
)model_18_conv_lst_m2d_36_while_identity_5I
Emodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_strided_slice?
?model_18_conv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensorW
<model_18_conv_lst_m2d_36_while_split_readvariableop_resource:?Y
>model_18_conv_lst_m2d_36_while_split_1_readvariableop_resource:F?M
>model_18_conv_lst_m2d_36_while_split_2_readvariableop_resource:	???3model_18/conv_lst_m2d_36/while/split/ReadVariableOp?5model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp?5model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp?
Pmodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2R
Pmodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_18_conv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0*model_18_conv_lst_m2d_36_while_placeholderYmodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02D
Bmodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem?
.model_18/conv_lst_m2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_18/conv_lst_m2d_36/while/split/split_dim?
3model_18/conv_lst_m2d_36/while/split/ReadVariableOpReadVariableOp>model_18_conv_lst_m2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype025
3model_18/conv_lst_m2d_36/while/split/ReadVariableOp?
$model_18/conv_lst_m2d_36/while/splitSplit7model_18/conv_lst_m2d_36/while/split/split_dim:output:0;model_18/conv_lst_m2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2&
$model_18/conv_lst_m2d_36/while/split?
0model_18/conv_lst_m2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_18/conv_lst_m2d_36/while/split_1/split_dim?
5model_18/conv_lst_m2d_36/while/split_1/ReadVariableOpReadVariableOp@model_18_conv_lst_m2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype027
5model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp?
&model_18/conv_lst_m2d_36/while/split_1Split9model_18/conv_lst_m2d_36/while/split_1/split_dim:output:0=model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2(
&model_18/conv_lst_m2d_36/while/split_1?
0model_18/conv_lst_m2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_18/conv_lst_m2d_36/while/split_2/split_dim?
5model_18/conv_lst_m2d_36/while/split_2/ReadVariableOpReadVariableOp@model_18_conv_lst_m2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp?
&model_18/conv_lst_m2d_36/while/split_2Split9model_18/conv_lst_m2d_36/while/split_2/split_dim:output:0=model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2(
&model_18/conv_lst_m2d_36/while/split_2?
*model_18/conv_lst_m2d_36/while/convolutionConv2DImodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2,
*model_18/conv_lst_m2d_36/while/convolution?
&model_18/conv_lst_m2d_36/while/BiasAddBiasAdd3model_18/conv_lst_m2d_36/while/convolution:output:0/model_18/conv_lst_m2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2(
&model_18/conv_lst_m2d_36/while/BiasAdd?
,model_18/conv_lst_m2d_36/while/convolution_1Conv2DImodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_1?
(model_18/conv_lst_m2d_36/while/BiasAdd_1BiasAdd5model_18/conv_lst_m2d_36/while/convolution_1:output:0/model_18/conv_lst_m2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2*
(model_18/conv_lst_m2d_36/while/BiasAdd_1?
,model_18/conv_lst_m2d_36/while/convolution_2Conv2DImodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_2?
(model_18/conv_lst_m2d_36/while/BiasAdd_2BiasAdd5model_18/conv_lst_m2d_36/while/convolution_2:output:0/model_18/conv_lst_m2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2*
(model_18/conv_lst_m2d_36/while/BiasAdd_2?
,model_18/conv_lst_m2d_36/while/convolution_3Conv2DImodel_18/conv_lst_m2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_3?
(model_18/conv_lst_m2d_36/while/BiasAdd_3BiasAdd5model_18/conv_lst_m2d_36/while/convolution_3:output:0/model_18/conv_lst_m2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2*
(model_18/conv_lst_m2d_36/while/BiasAdd_3?
,model_18/conv_lst_m2d_36/while/convolution_4Conv2D,model_18_conv_lst_m2d_36_while_placeholder_2/model_18/conv_lst_m2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_4?
,model_18/conv_lst_m2d_36/while/convolution_5Conv2D,model_18_conv_lst_m2d_36_while_placeholder_2/model_18/conv_lst_m2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_5?
,model_18/conv_lst_m2d_36/while/convolution_6Conv2D,model_18_conv_lst_m2d_36_while_placeholder_2/model_18/conv_lst_m2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_6?
,model_18/conv_lst_m2d_36/while/convolution_7Conv2D,model_18_conv_lst_m2d_36_while_placeholder_2/model_18/conv_lst_m2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_36/while/convolution_7?
"model_18/conv_lst_m2d_36/while/addAddV2/model_18/conv_lst_m2d_36/while/BiasAdd:output:05model_18/conv_lst_m2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2$
"model_18/conv_lst_m2d_36/while/add?
$model_18/conv_lst_m2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_18/conv_lst_m2d_36/while/Const?
&model_18/conv_lst_m2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_36/while/Const_1?
"model_18/conv_lst_m2d_36/while/MulMul&model_18/conv_lst_m2d_36/while/add:z:0-model_18/conv_lst_m2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????F2$
"model_18/conv_lst_m2d_36/while/Mul?
$model_18/conv_lst_m2d_36/while/Add_1AddV2&model_18/conv_lst_m2d_36/while/Mul:z:0/model_18/conv_lst_m2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/Add_1?
6model_18/conv_lst_m2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_18/conv_lst_m2d_36/while/clip_by_value/Minimum/y?
4model_18/conv_lst_m2d_36/while/clip_by_value/MinimumMinimum(model_18/conv_lst_m2d_36/while/Add_1:z:0?model_18/conv_lst_m2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F26
4model_18/conv_lst_m2d_36/while/clip_by_value/Minimum?
.model_18/conv_lst_m2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_18/conv_lst_m2d_36/while/clip_by_value/y?
,model_18/conv_lst_m2d_36/while/clip_by_valueMaximum8model_18/conv_lst_m2d_36/while/clip_by_value/Minimum:z:07model_18/conv_lst_m2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2.
,model_18/conv_lst_m2d_36/while/clip_by_value?
$model_18/conv_lst_m2d_36/while/add_2AddV21model_18/conv_lst_m2d_36/while/BiasAdd_1:output:05model_18/conv_lst_m2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/add_2?
&model_18/conv_lst_m2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_18/conv_lst_m2d_36/while/Const_2?
&model_18/conv_lst_m2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_36/while/Const_3?
$model_18/conv_lst_m2d_36/while/Mul_1Mul(model_18/conv_lst_m2d_36/while/add_2:z:0/model_18/conv_lst_m2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/Mul_1?
$model_18/conv_lst_m2d_36/while/Add_3AddV2(model_18/conv_lst_m2d_36/while/Mul_1:z:0/model_18/conv_lst_m2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/Add_3?
8model_18/conv_lst_m2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_18/conv_lst_m2d_36/while/clip_by_value_1/Minimum/y?
6model_18/conv_lst_m2d_36/while/clip_by_value_1/MinimumMinimum(model_18/conv_lst_m2d_36/while/Add_3:z:0Amodel_18/conv_lst_m2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_18/conv_lst_m2d_36/while/clip_by_value_1/Minimum?
0model_18/conv_lst_m2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_18/conv_lst_m2d_36/while/clip_by_value_1/y?
.model_18/conv_lst_m2d_36/while/clip_by_value_1Maximum:model_18/conv_lst_m2d_36/while/clip_by_value_1/Minimum:z:09model_18/conv_lst_m2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_18/conv_lst_m2d_36/while/clip_by_value_1?
$model_18/conv_lst_m2d_36/while/mul_2Mul2model_18/conv_lst_m2d_36/while/clip_by_value_1:z:0,model_18_conv_lst_m2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/mul_2?
$model_18/conv_lst_m2d_36/while/add_4AddV21model_18/conv_lst_m2d_36/while/BiasAdd_2:output:05model_18/conv_lst_m2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/add_4?
#model_18/conv_lst_m2d_36/while/ReluRelu(model_18/conv_lst_m2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2%
#model_18/conv_lst_m2d_36/while/Relu?
$model_18/conv_lst_m2d_36/while/mul_3Mul0model_18/conv_lst_m2d_36/while/clip_by_value:z:01model_18/conv_lst_m2d_36/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/mul_3?
$model_18/conv_lst_m2d_36/while/add_5AddV2(model_18/conv_lst_m2d_36/while/mul_2:z:0(model_18/conv_lst_m2d_36/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/add_5?
$model_18/conv_lst_m2d_36/while/add_6AddV21model_18/conv_lst_m2d_36/while/BiasAdd_3:output:05model_18/conv_lst_m2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/add_6?
&model_18/conv_lst_m2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_18/conv_lst_m2d_36/while/Const_4?
&model_18/conv_lst_m2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_36/while/Const_5?
$model_18/conv_lst_m2d_36/while/Mul_4Mul(model_18/conv_lst_m2d_36/while/add_6:z:0/model_18/conv_lst_m2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/Mul_4?
$model_18/conv_lst_m2d_36/while/Add_7AddV2(model_18/conv_lst_m2d_36/while/Mul_4:z:0/model_18/conv_lst_m2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/Add_7?
8model_18/conv_lst_m2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_18/conv_lst_m2d_36/while/clip_by_value_2/Minimum/y?
6model_18/conv_lst_m2d_36/while/clip_by_value_2/MinimumMinimum(model_18/conv_lst_m2d_36/while/Add_7:z:0Amodel_18/conv_lst_m2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_18/conv_lst_m2d_36/while/clip_by_value_2/Minimum?
0model_18/conv_lst_m2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_18/conv_lst_m2d_36/while/clip_by_value_2/y?
.model_18/conv_lst_m2d_36/while/clip_by_value_2Maximum:model_18/conv_lst_m2d_36/while/clip_by_value_2/Minimum:z:09model_18/conv_lst_m2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_18/conv_lst_m2d_36/while/clip_by_value_2?
%model_18/conv_lst_m2d_36/while/Relu_1Relu(model_18/conv_lst_m2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2'
%model_18/conv_lst_m2d_36/while/Relu_1?
$model_18/conv_lst_m2d_36/while/mul_5Mul2model_18/conv_lst_m2d_36/while/clip_by_value_2:z:03model_18/conv_lst_m2d_36/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_18/conv_lst_m2d_36/while/mul_5?
Cmodel_18/conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_18_conv_lst_m2d_36_while_placeholder_1*model_18_conv_lst_m2d_36_while_placeholder(model_18/conv_lst_m2d_36/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_18/conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem?
&model_18/conv_lst_m2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_18/conv_lst_m2d_36/while/add_8/y?
$model_18/conv_lst_m2d_36/while/add_8AddV2*model_18_conv_lst_m2d_36_while_placeholder/model_18/conv_lst_m2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_18/conv_lst_m2d_36/while/add_8?
&model_18/conv_lst_m2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_18/conv_lst_m2d_36/while/add_9/y?
$model_18/conv_lst_m2d_36/while/add_9AddV2Jmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_loop_counter/model_18/conv_lst_m2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_18/conv_lst_m2d_36/while/add_9?
'model_18/conv_lst_m2d_36/while/IdentityIdentity(model_18/conv_lst_m2d_36/while/add_9:z:0$^model_18/conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2)
'model_18/conv_lst_m2d_36/while/Identity?
)model_18/conv_lst_m2d_36/while/Identity_1IdentityPmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_while_maximum_iterations$^model_18/conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_36/while/Identity_1?
)model_18/conv_lst_m2d_36/while/Identity_2Identity(model_18/conv_lst_m2d_36/while/add_8:z:0$^model_18/conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_36/while/Identity_2?
)model_18/conv_lst_m2d_36/while/Identity_3IdentitySmodel_18/conv_lst_m2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_18/conv_lst_m2d_36/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_36/while/Identity_3?
)model_18/conv_lst_m2d_36/while/Identity_4Identity(model_18/conv_lst_m2d_36/while/mul_5:z:0$^model_18/conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_18/conv_lst_m2d_36/while/Identity_4?
)model_18/conv_lst_m2d_36/while/Identity_5Identity(model_18/conv_lst_m2d_36/while/add_5:z:0$^model_18/conv_lst_m2d_36/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_18/conv_lst_m2d_36/while/Identity_5?
#model_18/conv_lst_m2d_36/while/NoOpNoOp4^model_18/conv_lst_m2d_36/while/split/ReadVariableOp6^model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp6^model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_18/conv_lst_m2d_36/while/NoOp"[
'model_18_conv_lst_m2d_36_while_identity0model_18/conv_lst_m2d_36/while/Identity:output:0"_
)model_18_conv_lst_m2d_36_while_identity_12model_18/conv_lst_m2d_36/while/Identity_1:output:0"_
)model_18_conv_lst_m2d_36_while_identity_22model_18/conv_lst_m2d_36/while/Identity_2:output:0"_
)model_18_conv_lst_m2d_36_while_identity_32model_18/conv_lst_m2d_36/while/Identity_3:output:0"_
)model_18_conv_lst_m2d_36_while_identity_42model_18/conv_lst_m2d_36/while/Identity_4:output:0"_
)model_18_conv_lst_m2d_36_while_identity_52model_18/conv_lst_m2d_36/while/Identity_5:output:0"?
Emodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_strided_sliceGmodel_18_conv_lst_m2d_36_while_model_18_conv_lst_m2d_36_strided_slice_0"?
>model_18_conv_lst_m2d_36_while_split_1_readvariableop_resource@model_18_conv_lst_m2d_36_while_split_1_readvariableop_resource_0"?
>model_18_conv_lst_m2d_36_while_split_2_readvariableop_resource@model_18_conv_lst_m2d_36_while_split_2_readvariableop_resource_0"~
<model_18_conv_lst_m2d_36_while_split_readvariableop_resource>model_18_conv_lst_m2d_36_while_split_readvariableop_resource_0"?
?model_18_conv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor?model_18_conv_lst_m2d_36_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2j
3model_18/conv_lst_m2d_36/while/split/ReadVariableOp3model_18/conv_lst_m2d_36/while/split/ReadVariableOp2n
5model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp5model_18/conv_lst_m2d_36/while/split_1/ReadVariableOp2n
5model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp5model_18/conv_lst_m2d_36/while/split_2/ReadVariableOp: 
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
while_body_3072730
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
?$
?
while_body_3071423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3071447_0:?*
while_3071449_0:F?
while_3071451_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3071447:?(
while_3071449:F?
while_3071451:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3071447_0while_3071449_0while_3071451_0*
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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30714092
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
while_3071447while_3071447_0" 
while_3071449while_3071449_0" 
while_3071451while_3071451_0")
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
?
c
G__inference_flatten_26_layer_call_and_return_conditional_losses_3073124

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
?
T
(__inference_add_18_layer_call_fn_3077151
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
C__inference_add_18_layer_call_and_return_conditional_losses_30731642
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
??
?
E__inference_model_18_layer_call_and_return_conditional_losses_3075189
inputs_0
inputs_1B
(conv2d_16_conv2d_readvariableop_resource:F7
)conv2d_16_biasadd_readvariableop_resource:FH
-conv_lst_m2d_36_split_readvariableop_resource:?J
/conv_lst_m2d_36_split_1_readvariableop_resource:F?>
/conv_lst_m2d_36_split_2_readvariableop_resource:	?B
(conv2d_17_conv2d_readvariableop_resource:FK7
)conv2d_17_biasadd_readvariableop_resource:KH
-conv_lst_m2d_37_split_readvariableop_resource:F?J
/conv_lst_m2d_37_split_1_readvariableop_resource:K?>
/conv_lst_m2d_37_split_2_readvariableop_resource:	?:
'dense_62_matmul_readvariableop_resource:	?26
(dense_62_biasadd_readvariableop_resource:29
'dense_63_matmul_readvariableop_resource:K26
(dense_63_biasadd_readvariableop_resource:29
'dense_64_matmul_readvariableop_resource:226
(dense_64_biasadd_readvariableop_resource:29
'dense_65_matmul_readvariableop_resource:26
(dense_65_biasadd_readvariableop_resource:
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?$conv_lst_m2d_36/split/ReadVariableOp?&conv_lst_m2d_36/split_1/ReadVariableOp?&conv_lst_m2d_36/split_2/ReadVariableOp?conv_lst_m2d_36/while?$conv_lst_m2d_37/split/ReadVariableOp?&conv_lst_m2d_37/split_1/ReadVariableOp?&conv_lst_m2d_37/split_2/ReadVariableOp?conv_lst_m2d_37/while?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2Dinputs_1'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_16/Relu?
conv_lst_m2d_36/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_36/zeros_like?
%conv_lst_m2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_36/Sum/reduction_indices?
conv_lst_m2d_36/SumSumconv_lst_m2d_36/zeros_like:y:0.conv_lst_m2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_36/Sum?
conv_lst_m2d_36/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_36/zeros?
conv_lst_m2d_36/convolutionConv2Dconv_lst_m2d_36/Sum:output:0conv_lst_m2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution?
conv_lst_m2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_36/transpose/perm?
conv_lst_m2d_36/transpose	Transposeinputs_0'conv_lst_m2d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_36/transpose{
conv_lst_m2d_36/ShapeShapeconv_lst_m2d_36/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_36/Shape?
#conv_lst_m2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_36/strided_slice/stack?
%conv_lst_m2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_36/strided_slice/stack_1?
%conv_lst_m2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_36/strided_slice/stack_2?
conv_lst_m2d_36/strided_sliceStridedSliceconv_lst_m2d_36/Shape:output:0,conv_lst_m2d_36/strided_slice/stack:output:0.conv_lst_m2d_36/strided_slice/stack_1:output:0.conv_lst_m2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_36/strided_slice?
+conv_lst_m2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_36/TensorArrayV2/element_shape?
conv_lst_m2d_36/TensorArrayV2TensorListReserve4conv_lst_m2d_36/TensorArrayV2/element_shape:output:0&conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_36/TensorArrayV2?
Econv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_36/transpose:y:0Nconv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_36/strided_slice_1/stack?
'conv_lst_m2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_1/stack_1?
'conv_lst_m2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_1/stack_2?
conv_lst_m2d_36/strided_slice_1StridedSliceconv_lst_m2d_36/transpose:y:0.conv_lst_m2d_36/strided_slice_1/stack:output:00conv_lst_m2d_36/strided_slice_1/stack_1:output:00conv_lst_m2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_36/strided_slice_1?
conv_lst_m2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_36/split/split_dim?
$conv_lst_m2d_36/split/ReadVariableOpReadVariableOp-conv_lst_m2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_36/split/ReadVariableOp?
conv_lst_m2d_36/splitSplit(conv_lst_m2d_36/split/split_dim:output:0,conv_lst_m2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_36/split?
!conv_lst_m2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_36/split_1/split_dim?
&conv_lst_m2d_36/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_36_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_36/split_1/ReadVariableOp?
conv_lst_m2d_36/split_1Split*conv_lst_m2d_36/split_1/split_dim:output:0.conv_lst_m2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_36/split_1?
!conv_lst_m2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_36/split_2/split_dim?
&conv_lst_m2d_36/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_36/split_2/ReadVariableOp?
conv_lst_m2d_36/split_2Split*conv_lst_m2d_36/split_2/split_dim:output:0.conv_lst_m2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_36/split_2?
conv_lst_m2d_36/convolution_1Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_1?
conv_lst_m2d_36/BiasAddBiasAdd&conv_lst_m2d_36/convolution_1:output:0 conv_lst_m2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd?
conv_lst_m2d_36/convolution_2Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_2?
conv_lst_m2d_36/BiasAdd_1BiasAdd&conv_lst_m2d_36/convolution_2:output:0 conv_lst_m2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_1?
conv_lst_m2d_36/convolution_3Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_3?
conv_lst_m2d_36/BiasAdd_2BiasAdd&conv_lst_m2d_36/convolution_3:output:0 conv_lst_m2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_2?
conv_lst_m2d_36/convolution_4Conv2D(conv_lst_m2d_36/strided_slice_1:output:0conv_lst_m2d_36/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_36/convolution_4?
conv_lst_m2d_36/BiasAdd_3BiasAdd&conv_lst_m2d_36/convolution_4:output:0 conv_lst_m2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/BiasAdd_3?
conv_lst_m2d_36/convolution_5Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_5?
conv_lst_m2d_36/convolution_6Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_6?
conv_lst_m2d_36/convolution_7Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_7?
conv_lst_m2d_36/convolution_8Conv2D$conv_lst_m2d_36/convolution:output:0 conv_lst_m2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_36/convolution_8?
conv_lst_m2d_36/addAddV2 conv_lst_m2d_36/BiasAdd:output:0&conv_lst_m2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/adds
conv_lst_m2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Constw
conv_lst_m2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_1?
conv_lst_m2d_36/MulMulconv_lst_m2d_36/add:z:0conv_lst_m2d_36/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul?
conv_lst_m2d_36/Add_1AddV2conv_lst_m2d_36/Mul:z:0 conv_lst_m2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_1?
'conv_lst_m2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_36/clip_by_value/Minimum/y?
%conv_lst_m2d_36/clip_by_value/MinimumMinimumconv_lst_m2d_36/Add_1:z:00conv_lst_m2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_36/clip_by_value/Minimum?
conv_lst_m2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_36/clip_by_value/y?
conv_lst_m2d_36/clip_by_valueMaximum)conv_lst_m2d_36/clip_by_value/Minimum:z:0(conv_lst_m2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/clip_by_value?
conv_lst_m2d_36/add_2AddV2"conv_lst_m2d_36/BiasAdd_1:output:0&conv_lst_m2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_2w
conv_lst_m2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Const_2w
conv_lst_m2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_3?
conv_lst_m2d_36/Mul_1Mulconv_lst_m2d_36/add_2:z:0 conv_lst_m2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul_1?
conv_lst_m2d_36/Add_3AddV2conv_lst_m2d_36/Mul_1:z:0 conv_lst_m2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_3?
)conv_lst_m2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_36/clip_by_value_1/Minimum/y?
'conv_lst_m2d_36/clip_by_value_1/MinimumMinimumconv_lst_m2d_36/Add_3:z:02conv_lst_m2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_36/clip_by_value_1/Minimum?
!conv_lst_m2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_36/clip_by_value_1/y?
conv_lst_m2d_36/clip_by_value_1Maximum+conv_lst_m2d_36/clip_by_value_1/Minimum:z:0*conv_lst_m2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/clip_by_value_1?
conv_lst_m2d_36/mul_2Mul#conv_lst_m2d_36/clip_by_value_1:z:0$conv_lst_m2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_2?
conv_lst_m2d_36/add_4AddV2"conv_lst_m2d_36/BiasAdd_2:output:0&conv_lst_m2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_4?
conv_lst_m2d_36/ReluReluconv_lst_m2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Relu?
conv_lst_m2d_36/mul_3Mul!conv_lst_m2d_36/clip_by_value:z:0"conv_lst_m2d_36/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_3?
conv_lst_m2d_36/add_5AddV2conv_lst_m2d_36/mul_2:z:0conv_lst_m2d_36/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_5?
conv_lst_m2d_36/add_6AddV2"conv_lst_m2d_36/BiasAdd_3:output:0&conv_lst_m2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/add_6w
conv_lst_m2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_36/Const_4w
conv_lst_m2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_36/Const_5?
conv_lst_m2d_36/Mul_4Mulconv_lst_m2d_36/add_6:z:0 conv_lst_m2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Mul_4?
conv_lst_m2d_36/Add_7AddV2conv_lst_m2d_36/Mul_4:z:0 conv_lst_m2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Add_7?
)conv_lst_m2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_36/clip_by_value_2/Minimum/y?
'conv_lst_m2d_36/clip_by_value_2/MinimumMinimumconv_lst_m2d_36/Add_7:z:02conv_lst_m2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_36/clip_by_value_2/Minimum?
!conv_lst_m2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_36/clip_by_value_2/y?
conv_lst_m2d_36/clip_by_value_2Maximum+conv_lst_m2d_36/clip_by_value_2/Minimum:z:0*conv_lst_m2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_36/clip_by_value_2?
conv_lst_m2d_36/Relu_1Reluconv_lst_m2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/Relu_1?
conv_lst_m2d_36/mul_5Mul#conv_lst_m2d_36/clip_by_value_2:z:0$conv_lst_m2d_36/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_36/mul_5?
-conv_lst_m2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_36/TensorArrayV2_1/element_shape?
conv_lst_m2d_36/TensorArrayV2_1TensorListReserve6conv_lst_m2d_36/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_36/TensorArrayV2_1n
conv_lst_m2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_36/time?
(conv_lst_m2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_36/while/maximum_iterations?
"conv_lst_m2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_36/while/loop_counter?
conv_lst_m2d_36/whileWhile+conv_lst_m2d_36/while/loop_counter:output:01conv_lst_m2d_36/while/maximum_iterations:output:0conv_lst_m2d_36/time:output:0(conv_lst_m2d_36/TensorArrayV2_1:handle:0$conv_lst_m2d_36/convolution:output:0$conv_lst_m2d_36/convolution:output:0&conv_lst_m2d_36/strided_slice:output:0Gconv_lst_m2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_36_split_readvariableop_resource/conv_lst_m2d_36_split_1_readvariableop_resource/conv_lst_m2d_36_split_2_readvariableop_resource*
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
"conv_lst_m2d_36_while_body_3074807*.
cond&R$
"conv_lst_m2d_36_while_cond_3074806*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_36/while?
@conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_36/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_36/while:output:3Iconv_lst_m2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_36/strided_slice_2/stack?
'conv_lst_m2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_36/strided_slice_2/stack_1?
'conv_lst_m2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_36/strided_slice_2/stack_2?
conv_lst_m2d_36/strided_slice_2StridedSlice;conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_36/strided_slice_2/stack:output:00conv_lst_m2d_36/strided_slice_2/stack_1:output:00conv_lst_m2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_36/strided_slice_2?
 conv_lst_m2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_36/transpose_1/perm?
conv_lst_m2d_36/transpose_1	Transpose;conv_lst_m2d_36/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_36/transpose_1?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_17/Relu?
conv_lst_m2d_37/zeros_like	ZerosLikeconv_lst_m2d_36/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_37/zeros_like?
%conv_lst_m2d_37/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_37/Sum/reduction_indices?
conv_lst_m2d_37/SumSumconv_lst_m2d_37/zeros_like:y:0.conv_lst_m2d_37/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_37/Sum?
%conv_lst_m2d_37/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_37/zeros/shape_as_tensor
conv_lst_m2d_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_37/zeros/Const?
conv_lst_m2d_37/zerosFill.conv_lst_m2d_37/zeros/shape_as_tensor:output:0$conv_lst_m2d_37/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_37/zeros?
conv_lst_m2d_37/convolutionConv2Dconv_lst_m2d_37/Sum:output:0conv_lst_m2d_37/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution?
conv_lst_m2d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_37/transpose/perm?
conv_lst_m2d_37/transpose	Transposeconv_lst_m2d_36/transpose_1:y:0'conv_lst_m2d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_37/transpose{
conv_lst_m2d_37/ShapeShapeconv_lst_m2d_37/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_37/Shape?
#conv_lst_m2d_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_37/strided_slice/stack?
%conv_lst_m2d_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_37/strided_slice/stack_1?
%conv_lst_m2d_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_37/strided_slice/stack_2?
conv_lst_m2d_37/strided_sliceStridedSliceconv_lst_m2d_37/Shape:output:0,conv_lst_m2d_37/strided_slice/stack:output:0.conv_lst_m2d_37/strided_slice/stack_1:output:0.conv_lst_m2d_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_37/strided_slice?
+conv_lst_m2d_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_37/TensorArrayV2/element_shape?
conv_lst_m2d_37/TensorArrayV2TensorListReserve4conv_lst_m2d_37/TensorArrayV2/element_shape:output:0&conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_37/TensorArrayV2?
Econv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_37/transpose:y:0Nconv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_37/strided_slice_1/stack?
'conv_lst_m2d_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_1/stack_1?
'conv_lst_m2d_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_1/stack_2?
conv_lst_m2d_37/strided_slice_1StridedSliceconv_lst_m2d_37/transpose:y:0.conv_lst_m2d_37/strided_slice_1/stack:output:00conv_lst_m2d_37/strided_slice_1/stack_1:output:00conv_lst_m2d_37/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_37/strided_slice_1?
conv_lst_m2d_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_37/split/split_dim?
$conv_lst_m2d_37/split/ReadVariableOpReadVariableOp-conv_lst_m2d_37_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_37/split/ReadVariableOp?
conv_lst_m2d_37/splitSplit(conv_lst_m2d_37/split/split_dim:output:0,conv_lst_m2d_37/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_37/split?
!conv_lst_m2d_37/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_37/split_1/split_dim?
&conv_lst_m2d_37/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_37_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_37/split_1/ReadVariableOp?
conv_lst_m2d_37/split_1Split*conv_lst_m2d_37/split_1/split_dim:output:0.conv_lst_m2d_37/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_37/split_1?
!conv_lst_m2d_37/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_37/split_2/split_dim?
&conv_lst_m2d_37/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_37_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_37/split_2/ReadVariableOp?
conv_lst_m2d_37/split_2Split*conv_lst_m2d_37/split_2/split_dim:output:0.conv_lst_m2d_37/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_37/split_2?
conv_lst_m2d_37/convolution_1Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_1?
conv_lst_m2d_37/BiasAddBiasAdd&conv_lst_m2d_37/convolution_1:output:0 conv_lst_m2d_37/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd?
conv_lst_m2d_37/convolution_2Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_2?
conv_lst_m2d_37/BiasAdd_1BiasAdd&conv_lst_m2d_37/convolution_2:output:0 conv_lst_m2d_37/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_1?
conv_lst_m2d_37/convolution_3Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_3?
conv_lst_m2d_37/BiasAdd_2BiasAdd&conv_lst_m2d_37/convolution_3:output:0 conv_lst_m2d_37/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_2?
conv_lst_m2d_37/convolution_4Conv2D(conv_lst_m2d_37/strided_slice_1:output:0conv_lst_m2d_37/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_37/convolution_4?
conv_lst_m2d_37/BiasAdd_3BiasAdd&conv_lst_m2d_37/convolution_4:output:0 conv_lst_m2d_37/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/BiasAdd_3?
conv_lst_m2d_37/convolution_5Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_5?
conv_lst_m2d_37/convolution_6Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_6?
conv_lst_m2d_37/convolution_7Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_7?
conv_lst_m2d_37/convolution_8Conv2D$conv_lst_m2d_37/convolution:output:0 conv_lst_m2d_37/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_37/convolution_8?
conv_lst_m2d_37/addAddV2 conv_lst_m2d_37/BiasAdd:output:0&conv_lst_m2d_37/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/adds
conv_lst_m2d_37/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Constw
conv_lst_m2d_37/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_1?
conv_lst_m2d_37/MulMulconv_lst_m2d_37/add:z:0conv_lst_m2d_37/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul?
conv_lst_m2d_37/Add_1AddV2conv_lst_m2d_37/Mul:z:0 conv_lst_m2d_37/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_1?
'conv_lst_m2d_37/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_37/clip_by_value/Minimum/y?
%conv_lst_m2d_37/clip_by_value/MinimumMinimumconv_lst_m2d_37/Add_1:z:00conv_lst_m2d_37/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/clip_by_value/Minimum?
conv_lst_m2d_37/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_37/clip_by_value/y?
conv_lst_m2d_37/clip_by_valueMaximum)conv_lst_m2d_37/clip_by_value/Minimum:z:0(conv_lst_m2d_37/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/clip_by_value?
conv_lst_m2d_37/add_2AddV2"conv_lst_m2d_37/BiasAdd_1:output:0&conv_lst_m2d_37/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_2w
conv_lst_m2d_37/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Const_2w
conv_lst_m2d_37/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_3?
conv_lst_m2d_37/Mul_1Mulconv_lst_m2d_37/add_2:z:0 conv_lst_m2d_37/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul_1?
conv_lst_m2d_37/Add_3AddV2conv_lst_m2d_37/Mul_1:z:0 conv_lst_m2d_37/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_3?
)conv_lst_m2d_37/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_37/clip_by_value_1/Minimum/y?
'conv_lst_m2d_37/clip_by_value_1/MinimumMinimumconv_lst_m2d_37/Add_3:z:02conv_lst_m2d_37/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_37/clip_by_value_1/Minimum?
!conv_lst_m2d_37/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_37/clip_by_value_1/y?
conv_lst_m2d_37/clip_by_value_1Maximum+conv_lst_m2d_37/clip_by_value_1/Minimum:z:0*conv_lst_m2d_37/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/clip_by_value_1?
conv_lst_m2d_37/mul_2Mul#conv_lst_m2d_37/clip_by_value_1:z:0$conv_lst_m2d_37/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_2?
conv_lst_m2d_37/add_4AddV2"conv_lst_m2d_37/BiasAdd_2:output:0&conv_lst_m2d_37/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_4?
conv_lst_m2d_37/ReluReluconv_lst_m2d_37/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Relu?
conv_lst_m2d_37/mul_3Mul!conv_lst_m2d_37/clip_by_value:z:0"conv_lst_m2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_3?
conv_lst_m2d_37/add_5AddV2conv_lst_m2d_37/mul_2:z:0conv_lst_m2d_37/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_5?
conv_lst_m2d_37/add_6AddV2"conv_lst_m2d_37/BiasAdd_3:output:0&conv_lst_m2d_37/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/add_6w
conv_lst_m2d_37/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/Const_4w
conv_lst_m2d_37/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/Const_5?
conv_lst_m2d_37/Mul_4Mulconv_lst_m2d_37/add_6:z:0 conv_lst_m2d_37/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Mul_4?
conv_lst_m2d_37/Add_7AddV2conv_lst_m2d_37/Mul_4:z:0 conv_lst_m2d_37/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Add_7?
)conv_lst_m2d_37/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_37/clip_by_value_2/Minimum/y?
'conv_lst_m2d_37/clip_by_value_2/MinimumMinimumconv_lst_m2d_37/Add_7:z:02conv_lst_m2d_37/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_37/clip_by_value_2/Minimum?
!conv_lst_m2d_37/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_37/clip_by_value_2/y?
conv_lst_m2d_37/clip_by_value_2Maximum+conv_lst_m2d_37/clip_by_value_2/Minimum:z:0*conv_lst_m2d_37/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/clip_by_value_2?
conv_lst_m2d_37/Relu_1Reluconv_lst_m2d_37/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/Relu_1?
conv_lst_m2d_37/mul_5Mul#conv_lst_m2d_37/clip_by_value_2:z:0$conv_lst_m2d_37/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/mul_5?
-conv_lst_m2d_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_37/TensorArrayV2_1/element_shape?
conv_lst_m2d_37/TensorArrayV2_1TensorListReserve6conv_lst_m2d_37/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_37/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_37/TensorArrayV2_1n
conv_lst_m2d_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_37/time?
(conv_lst_m2d_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_37/while/maximum_iterations?
"conv_lst_m2d_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_37/while/loop_counter?
conv_lst_m2d_37/whileWhile+conv_lst_m2d_37/while/loop_counter:output:01conv_lst_m2d_37/while/maximum_iterations:output:0conv_lst_m2d_37/time:output:0(conv_lst_m2d_37/TensorArrayV2_1:handle:0$conv_lst_m2d_37/convolution:output:0$conv_lst_m2d_37/convolution:output:0&conv_lst_m2d_37/strided_slice:output:0Gconv_lst_m2d_37/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_37_split_readvariableop_resource/conv_lst_m2d_37_split_1_readvariableop_resource/conv_lst_m2d_37_split_2_readvariableop_resource*
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
"conv_lst_m2d_37_while_body_3075032*.
cond&R$
"conv_lst_m2d_37_while_cond_3075031*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_37/while?
@conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_37/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_37/while:output:3Iconv_lst_m2d_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_37/strided_slice_2/stack?
'conv_lst_m2d_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_37/strided_slice_2/stack_1?
'conv_lst_m2d_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_37/strided_slice_2/stack_2?
conv_lst_m2d_37/strided_slice_2StridedSlice;conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_37/strided_slice_2/stack:output:00conv_lst_m2d_37/strided_slice_2/stack_1:output:00conv_lst_m2d_37/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_37/strided_slice_2?
 conv_lst_m2d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_37/transpose_1/perm?
conv_lst_m2d_37/transpose_1	Transpose;conv_lst_m2d_37/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_37/transpose_1u
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_27/Const?
flatten_27/ReshapeReshapeconv2d_17/Relu:activations:0flatten_27/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_27/Reshapeu
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_26/Const?
flatten_26/ReshapeReshapeconv_lst_m2d_37/transpose_1:y:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_26/Reshape?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMulflatten_26/Reshape:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_62/BiasAdd?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMulflatten_27/Reshape:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_63/BiasAdd?

add_18/addAddV2dense_62/BiasAdd:output:0dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_18/add?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMuladd_18/add:z:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_64/BiasAdds
dense_64/ReluReludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_64/Relu?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMuldense_64/Relu:activations:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_65/BiasAdd|
dense_65/SoftmaxSoftmaxdense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_65/Softmaxu
IdentityIdentitydense_65/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp%^conv_lst_m2d_36/split/ReadVariableOp'^conv_lst_m2d_36/split_1/ReadVariableOp'^conv_lst_m2d_36/split_2/ReadVariableOp^conv_lst_m2d_36/while%^conv_lst_m2d_37/split/ReadVariableOp'^conv_lst_m2d_37/split_1/ReadVariableOp'^conv_lst_m2d_37/split_2/ReadVariableOp^conv_lst_m2d_37/while ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2L
$conv_lst_m2d_36/split/ReadVariableOp$conv_lst_m2d_36/split/ReadVariableOp2P
&conv_lst_m2d_36/split_1/ReadVariableOp&conv_lst_m2d_36/split_1/ReadVariableOp2P
&conv_lst_m2d_36/split_2/ReadVariableOp&conv_lst_m2d_36/split_2/ReadVariableOp2.
conv_lst_m2d_36/whileconv_lst_m2d_36/while2L
$conv_lst_m2d_37/split/ReadVariableOp$conv_lst_m2d_37/split/ReadVariableOp2P
&conv_lst_m2d_37/split_1/ReadVariableOp&conv_lst_m2d_37/split_1/ReadVariableOp2P
&conv_lst_m2d_37/split_2/ReadVariableOp&conv_lst_m2d_37/split_2/ReadVariableOp2.
conv_lst_m2d_37/whileconv_lst_m2d_37/while2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp:] Y
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
while_body_3076273
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
?
?
*__inference_dense_64_layer_call_fn_3077166

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
E__inference_dense_64_layer_call_and_return_conditional_losses_30731772
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
?
?
3__inference_conv_lstm_cell_37_layer_call_fn_3077398

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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30720592
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
?
?
while_cond_3075326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3075326___redundant_placeholder05
1while_while_cond_3075326___redundant_placeholder15
1while_while_cond_3075326___redundant_placeholder25
1while_while_cond_3075326___redundant_placeholder3
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
?
?
while_cond_3072072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3072072___redundant_placeholder05
1while_while_cond_3072072___redundant_placeholder15
1while_while_cond_3072072___redundant_placeholder25
1while_while_cond_3072072___redundant_placeholder3
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
while_body_3072073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3072097_0:F?*
while_3072099_0:K?
while_3072101_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3072097:F?(
while_3072099:K?
while_3072101:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3072097_0while_3072099_0while_3072101_0*
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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_30720592
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
while_3072097while_3072097_0" 
while_3072099while_3072099_0" 
while_3072101while_3072101_0")
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
?
?
+model_18_conv_lst_m2d_37_while_cond_3071149N
Jmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_loop_counterT
Pmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_maximum_iterations.
*model_18_conv_lst_m2d_37_while_placeholder0
,model_18_conv_lst_m2d_37_while_placeholder_10
,model_18_conv_lst_m2d_37_while_placeholder_20
,model_18_conv_lst_m2d_37_while_placeholder_3N
Jmodel_18_conv_lst_m2d_37_while_less_model_18_conv_lst_m2d_37_strided_sliceg
cmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_cond_3071149___redundant_placeholder0g
cmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_cond_3071149___redundant_placeholder1g
cmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_cond_3071149___redundant_placeholder2g
cmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_cond_3071149___redundant_placeholder3+
'model_18_conv_lst_m2d_37_while_identity
?
#model_18/conv_lst_m2d_37/while/LessLess*model_18_conv_lst_m2d_37_while_placeholderJmodel_18_conv_lst_m2d_37_while_less_model_18_conv_lst_m2d_37_strided_slice*
T0*
_output_shapes
: 2%
#model_18/conv_lst_m2d_37/while/Less?
'model_18/conv_lst_m2d_37/while/IdentityIdentity'model_18/conv_lst_m2d_37/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_18/conv_lst_m2d_37/while/Identity"[
'model_18_conv_lst_m2d_37_while_identity0model_18/conv_lst_m2d_37/while/Identity:output:0*(
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
?
c
G__inference_flatten_27_layer_call_and_return_conditional_losses_3077107

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
?
?
*__inference_model_18_layer_call_fn_3074221
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
E__inference_model_18_layer_call_and_return_conditional_losses_30739022
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
while_body_3073408
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
?$
?
while_body_3071659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3071683_0:?*
while_3071685_0:F?
while_3071687_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3071683:?(
while_3071685:F?
while_3071687:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3071683_0while_3071685_0while_3071687_0*
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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_30715972
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
while_3071683while_3071683_0" 
while_3071685while_3071685_0" 
while_3071687while_3071687_0")
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
?q
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076621
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
while_body_3076495*
condR
while_cond_3076494*[
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
?
?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3072875

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
??
?
+model_18_conv_lst_m2d_37_while_body_3071150N
Jmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_loop_counterT
Pmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_maximum_iterations.
*model_18_conv_lst_m2d_37_while_placeholder0
,model_18_conv_lst_m2d_37_while_placeholder_10
,model_18_conv_lst_m2d_37_while_placeholder_20
,model_18_conv_lst_m2d_37_while_placeholder_3K
Gmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_strided_slice_0?
?model_18_conv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0Y
>model_18_conv_lst_m2d_37_while_split_readvariableop_resource_0:F?[
@model_18_conv_lst_m2d_37_while_split_1_readvariableop_resource_0:K?O
@model_18_conv_lst_m2d_37_while_split_2_readvariableop_resource_0:	?+
'model_18_conv_lst_m2d_37_while_identity-
)model_18_conv_lst_m2d_37_while_identity_1-
)model_18_conv_lst_m2d_37_while_identity_2-
)model_18_conv_lst_m2d_37_while_identity_3-
)model_18_conv_lst_m2d_37_while_identity_4-
)model_18_conv_lst_m2d_37_while_identity_5I
Emodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_strided_slice?
?model_18_conv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensorW
<model_18_conv_lst_m2d_37_while_split_readvariableop_resource:F?Y
>model_18_conv_lst_m2d_37_while_split_1_readvariableop_resource:K?M
>model_18_conv_lst_m2d_37_while_split_2_readvariableop_resource:	???3model_18/conv_lst_m2d_37/while/split/ReadVariableOp?5model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp?5model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp?
Pmodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2R
Pmodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_18_conv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0*model_18_conv_lst_m2d_37_while_placeholderYmodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02D
Bmodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem?
.model_18/conv_lst_m2d_37/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_18/conv_lst_m2d_37/while/split/split_dim?
3model_18/conv_lst_m2d_37/while/split/ReadVariableOpReadVariableOp>model_18_conv_lst_m2d_37_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype025
3model_18/conv_lst_m2d_37/while/split/ReadVariableOp?
$model_18/conv_lst_m2d_37/while/splitSplit7model_18/conv_lst_m2d_37/while/split/split_dim:output:0;model_18/conv_lst_m2d_37/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2&
$model_18/conv_lst_m2d_37/while/split?
0model_18/conv_lst_m2d_37/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_18/conv_lst_m2d_37/while/split_1/split_dim?
5model_18/conv_lst_m2d_37/while/split_1/ReadVariableOpReadVariableOp@model_18_conv_lst_m2d_37_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype027
5model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp?
&model_18/conv_lst_m2d_37/while/split_1Split9model_18/conv_lst_m2d_37/while/split_1/split_dim:output:0=model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2(
&model_18/conv_lst_m2d_37/while/split_1?
0model_18/conv_lst_m2d_37/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_18/conv_lst_m2d_37/while/split_2/split_dim?
5model_18/conv_lst_m2d_37/while/split_2/ReadVariableOpReadVariableOp@model_18_conv_lst_m2d_37_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp?
&model_18/conv_lst_m2d_37/while/split_2Split9model_18/conv_lst_m2d_37/while/split_2/split_dim:output:0=model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2(
&model_18/conv_lst_m2d_37/while/split_2?
*model_18/conv_lst_m2d_37/while/convolutionConv2DImodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_37/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2,
*model_18/conv_lst_m2d_37/while/convolution?
&model_18/conv_lst_m2d_37/while/BiasAddBiasAdd3model_18/conv_lst_m2d_37/while/convolution:output:0/model_18/conv_lst_m2d_37/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2(
&model_18/conv_lst_m2d_37/while/BiasAdd?
,model_18/conv_lst_m2d_37/while/convolution_1Conv2DImodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_37/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_1?
(model_18/conv_lst_m2d_37/while/BiasAdd_1BiasAdd5model_18/conv_lst_m2d_37/while/convolution_1:output:0/model_18/conv_lst_m2d_37/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2*
(model_18/conv_lst_m2d_37/while/BiasAdd_1?
,model_18/conv_lst_m2d_37/while/convolution_2Conv2DImodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_37/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_2?
(model_18/conv_lst_m2d_37/while/BiasAdd_2BiasAdd5model_18/conv_lst_m2d_37/while/convolution_2:output:0/model_18/conv_lst_m2d_37/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2*
(model_18/conv_lst_m2d_37/while/BiasAdd_2?
,model_18/conv_lst_m2d_37/while/convolution_3Conv2DImodel_18/conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0-model_18/conv_lst_m2d_37/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_3?
(model_18/conv_lst_m2d_37/while/BiasAdd_3BiasAdd5model_18/conv_lst_m2d_37/while/convolution_3:output:0/model_18/conv_lst_m2d_37/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2*
(model_18/conv_lst_m2d_37/while/BiasAdd_3?
,model_18/conv_lst_m2d_37/while/convolution_4Conv2D,model_18_conv_lst_m2d_37_while_placeholder_2/model_18/conv_lst_m2d_37/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_4?
,model_18/conv_lst_m2d_37/while/convolution_5Conv2D,model_18_conv_lst_m2d_37_while_placeholder_2/model_18/conv_lst_m2d_37/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_5?
,model_18/conv_lst_m2d_37/while/convolution_6Conv2D,model_18_conv_lst_m2d_37_while_placeholder_2/model_18/conv_lst_m2d_37/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_6?
,model_18/conv_lst_m2d_37/while/convolution_7Conv2D,model_18_conv_lst_m2d_37_while_placeholder_2/model_18/conv_lst_m2d_37/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_18/conv_lst_m2d_37/while/convolution_7?
"model_18/conv_lst_m2d_37/while/addAddV2/model_18/conv_lst_m2d_37/while/BiasAdd:output:05model_18/conv_lst_m2d_37/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2$
"model_18/conv_lst_m2d_37/while/add?
$model_18/conv_lst_m2d_37/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_18/conv_lst_m2d_37/while/Const?
&model_18/conv_lst_m2d_37/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_37/while/Const_1?
"model_18/conv_lst_m2d_37/while/MulMul&model_18/conv_lst_m2d_37/while/add:z:0-model_18/conv_lst_m2d_37/while/Const:output:0*
T0*/
_output_shapes
:?????????K2$
"model_18/conv_lst_m2d_37/while/Mul?
$model_18/conv_lst_m2d_37/while/Add_1AddV2&model_18/conv_lst_m2d_37/while/Mul:z:0/model_18/conv_lst_m2d_37/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/Add_1?
6model_18/conv_lst_m2d_37/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_18/conv_lst_m2d_37/while/clip_by_value/Minimum/y?
4model_18/conv_lst_m2d_37/while/clip_by_value/MinimumMinimum(model_18/conv_lst_m2d_37/while/Add_1:z:0?model_18/conv_lst_m2d_37/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K26
4model_18/conv_lst_m2d_37/while/clip_by_value/Minimum?
.model_18/conv_lst_m2d_37/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_18/conv_lst_m2d_37/while/clip_by_value/y?
,model_18/conv_lst_m2d_37/while/clip_by_valueMaximum8model_18/conv_lst_m2d_37/while/clip_by_value/Minimum:z:07model_18/conv_lst_m2d_37/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2.
,model_18/conv_lst_m2d_37/while/clip_by_value?
$model_18/conv_lst_m2d_37/while/add_2AddV21model_18/conv_lst_m2d_37/while/BiasAdd_1:output:05model_18/conv_lst_m2d_37/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/add_2?
&model_18/conv_lst_m2d_37/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_18/conv_lst_m2d_37/while/Const_2?
&model_18/conv_lst_m2d_37/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_37/while/Const_3?
$model_18/conv_lst_m2d_37/while/Mul_1Mul(model_18/conv_lst_m2d_37/while/add_2:z:0/model_18/conv_lst_m2d_37/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/Mul_1?
$model_18/conv_lst_m2d_37/while/Add_3AddV2(model_18/conv_lst_m2d_37/while/Mul_1:z:0/model_18/conv_lst_m2d_37/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/Add_3?
8model_18/conv_lst_m2d_37/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_18/conv_lst_m2d_37/while/clip_by_value_1/Minimum/y?
6model_18/conv_lst_m2d_37/while/clip_by_value_1/MinimumMinimum(model_18/conv_lst_m2d_37/while/Add_3:z:0Amodel_18/conv_lst_m2d_37/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_18/conv_lst_m2d_37/while/clip_by_value_1/Minimum?
0model_18/conv_lst_m2d_37/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_18/conv_lst_m2d_37/while/clip_by_value_1/y?
.model_18/conv_lst_m2d_37/while/clip_by_value_1Maximum:model_18/conv_lst_m2d_37/while/clip_by_value_1/Minimum:z:09model_18/conv_lst_m2d_37/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_18/conv_lst_m2d_37/while/clip_by_value_1?
$model_18/conv_lst_m2d_37/while/mul_2Mul2model_18/conv_lst_m2d_37/while/clip_by_value_1:z:0,model_18_conv_lst_m2d_37_while_placeholder_3*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/mul_2?
$model_18/conv_lst_m2d_37/while/add_4AddV21model_18/conv_lst_m2d_37/while/BiasAdd_2:output:05model_18/conv_lst_m2d_37/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/add_4?
#model_18/conv_lst_m2d_37/while/ReluRelu(model_18/conv_lst_m2d_37/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2%
#model_18/conv_lst_m2d_37/while/Relu?
$model_18/conv_lst_m2d_37/while/mul_3Mul0model_18/conv_lst_m2d_37/while/clip_by_value:z:01model_18/conv_lst_m2d_37/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/mul_3?
$model_18/conv_lst_m2d_37/while/add_5AddV2(model_18/conv_lst_m2d_37/while/mul_2:z:0(model_18/conv_lst_m2d_37/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/add_5?
$model_18/conv_lst_m2d_37/while/add_6AddV21model_18/conv_lst_m2d_37/while/BiasAdd_3:output:05model_18/conv_lst_m2d_37/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/add_6?
&model_18/conv_lst_m2d_37/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_18/conv_lst_m2d_37/while/Const_4?
&model_18/conv_lst_m2d_37/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_18/conv_lst_m2d_37/while/Const_5?
$model_18/conv_lst_m2d_37/while/Mul_4Mul(model_18/conv_lst_m2d_37/while/add_6:z:0/model_18/conv_lst_m2d_37/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/Mul_4?
$model_18/conv_lst_m2d_37/while/Add_7AddV2(model_18/conv_lst_m2d_37/while/Mul_4:z:0/model_18/conv_lst_m2d_37/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/Add_7?
8model_18/conv_lst_m2d_37/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_18/conv_lst_m2d_37/while/clip_by_value_2/Minimum/y?
6model_18/conv_lst_m2d_37/while/clip_by_value_2/MinimumMinimum(model_18/conv_lst_m2d_37/while/Add_7:z:0Amodel_18/conv_lst_m2d_37/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_18/conv_lst_m2d_37/while/clip_by_value_2/Minimum?
0model_18/conv_lst_m2d_37/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_18/conv_lst_m2d_37/while/clip_by_value_2/y?
.model_18/conv_lst_m2d_37/while/clip_by_value_2Maximum:model_18/conv_lst_m2d_37/while/clip_by_value_2/Minimum:z:09model_18/conv_lst_m2d_37/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_18/conv_lst_m2d_37/while/clip_by_value_2?
%model_18/conv_lst_m2d_37/while/Relu_1Relu(model_18/conv_lst_m2d_37/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2'
%model_18/conv_lst_m2d_37/while/Relu_1?
$model_18/conv_lst_m2d_37/while/mul_5Mul2model_18/conv_lst_m2d_37/while/clip_by_value_2:z:03model_18/conv_lst_m2d_37/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_18/conv_lst_m2d_37/while/mul_5?
Cmodel_18/conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_18_conv_lst_m2d_37_while_placeholder_1*model_18_conv_lst_m2d_37_while_placeholder(model_18/conv_lst_m2d_37/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_18/conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem?
&model_18/conv_lst_m2d_37/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_18/conv_lst_m2d_37/while/add_8/y?
$model_18/conv_lst_m2d_37/while/add_8AddV2*model_18_conv_lst_m2d_37_while_placeholder/model_18/conv_lst_m2d_37/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_18/conv_lst_m2d_37/while/add_8?
&model_18/conv_lst_m2d_37/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_18/conv_lst_m2d_37/while/add_9/y?
$model_18/conv_lst_m2d_37/while/add_9AddV2Jmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_loop_counter/model_18/conv_lst_m2d_37/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_18/conv_lst_m2d_37/while/add_9?
'model_18/conv_lst_m2d_37/while/IdentityIdentity(model_18/conv_lst_m2d_37/while/add_9:z:0$^model_18/conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2)
'model_18/conv_lst_m2d_37/while/Identity?
)model_18/conv_lst_m2d_37/while/Identity_1IdentityPmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_while_maximum_iterations$^model_18/conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_37/while/Identity_1?
)model_18/conv_lst_m2d_37/while/Identity_2Identity(model_18/conv_lst_m2d_37/while/add_8:z:0$^model_18/conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_37/while/Identity_2?
)model_18/conv_lst_m2d_37/while/Identity_3IdentitySmodel_18/conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_18/conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2+
)model_18/conv_lst_m2d_37/while/Identity_3?
)model_18/conv_lst_m2d_37/while/Identity_4Identity(model_18/conv_lst_m2d_37/while/mul_5:z:0$^model_18/conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_18/conv_lst_m2d_37/while/Identity_4?
)model_18/conv_lst_m2d_37/while/Identity_5Identity(model_18/conv_lst_m2d_37/while/add_5:z:0$^model_18/conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_18/conv_lst_m2d_37/while/Identity_5?
#model_18/conv_lst_m2d_37/while/NoOpNoOp4^model_18/conv_lst_m2d_37/while/split/ReadVariableOp6^model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp6^model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_18/conv_lst_m2d_37/while/NoOp"[
'model_18_conv_lst_m2d_37_while_identity0model_18/conv_lst_m2d_37/while/Identity:output:0"_
)model_18_conv_lst_m2d_37_while_identity_12model_18/conv_lst_m2d_37/while/Identity_1:output:0"_
)model_18_conv_lst_m2d_37_while_identity_22model_18/conv_lst_m2d_37/while/Identity_2:output:0"_
)model_18_conv_lst_m2d_37_while_identity_32model_18/conv_lst_m2d_37/while/Identity_3:output:0"_
)model_18_conv_lst_m2d_37_while_identity_42model_18/conv_lst_m2d_37/while/Identity_4:output:0"_
)model_18_conv_lst_m2d_37_while_identity_52model_18/conv_lst_m2d_37/while/Identity_5:output:0"?
Emodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_strided_sliceGmodel_18_conv_lst_m2d_37_while_model_18_conv_lst_m2d_37_strided_slice_0"?
>model_18_conv_lst_m2d_37_while_split_1_readvariableop_resource@model_18_conv_lst_m2d_37_while_split_1_readvariableop_resource_0"?
>model_18_conv_lst_m2d_37_while_split_2_readvariableop_resource@model_18_conv_lst_m2d_37_while_split_2_readvariableop_resource_0"~
<model_18_conv_lst_m2d_37_while_split_readvariableop_resource>model_18_conv_lst_m2d_37_while_split_readvariableop_resource_0"?
?model_18_conv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor?model_18_conv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_model_18_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2j
3model_18/conv_lst_m2d_37/while/split/ReadVariableOp3model_18/conv_lst_m2d_37/while/split/ReadVariableOp2n
5model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp5model_18/conv_lst_m2d_37/while/split_1/ReadVariableOp2n
5model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp5model_18/conv_lst_m2d_37/while/split_2/ReadVariableOp: 
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
?o
?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3072856

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
while_body_3072730*
condR
while_cond_3072729*[
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
?q
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076399
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
while_body_3076273*
condR
while_cond_3076272*[
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
?
?
while_cond_3076938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3076938___redundant_placeholder05
1while_while_cond_3076938___redundant_placeholder15
1while_while_cond_3076938___redundant_placeholder25
1while_while_cond_3076938___redundant_placeholder3
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
?
1__inference_conv_lst_m2d_36_layer_call_fn_3075233

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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30737862
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3073136

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
??
?
"conv_lst_m2d_37_while_body_3074548<
8conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counterB
>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations%
!conv_lst_m2d_37_while_placeholder'
#conv_lst_m2d_37_while_placeholder_1'
#conv_lst_m2d_37_while_placeholder_2'
#conv_lst_m2d_37_while_placeholder_39
5conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice_0w
sconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_37_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_37_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_37_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_37_while_identity$
 conv_lst_m2d_37_while_identity_1$
 conv_lst_m2d_37_while_identity_2$
 conv_lst_m2d_37_while_identity_3$
 conv_lst_m2d_37_while_identity_4$
 conv_lst_m2d_37_while_identity_57
3conv_lst_m2d_37_while_conv_lst_m2d_37_strided_sliceu
qconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_37_while_split_readvariableop_resource:F?P
5conv_lst_m2d_37_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_37_while_split_2_readvariableop_resource:	???*conv_lst_m2d_37/while/split/ReadVariableOp?,conv_lst_m2d_37/while/split_1/ReadVariableOp?,conv_lst_m2d_37/while/split_2/ReadVariableOp?
Gconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_37_while_placeholderPconv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_37/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_37/while/split/split_dim?
*conv_lst_m2d_37/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_37_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_37/while/split/ReadVariableOp?
conv_lst_m2d_37/while/splitSplit.conv_lst_m2d_37/while/split/split_dim:output:02conv_lst_m2d_37/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_37/while/split?
'conv_lst_m2d_37/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_37/while/split_1/split_dim?
,conv_lst_m2d_37/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_37_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_37/while/split_1/ReadVariableOp?
conv_lst_m2d_37/while/split_1Split0conv_lst_m2d_37/while/split_1/split_dim:output:04conv_lst_m2d_37/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_37/while/split_1?
'conv_lst_m2d_37/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_37/while/split_2/split_dim?
,conv_lst_m2d_37/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_37_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_37/while/split_2/ReadVariableOp?
conv_lst_m2d_37/while/split_2Split0conv_lst_m2d_37/while/split_2/split_dim:output:04conv_lst_m2d_37/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_37/while/split_2?
!conv_lst_m2d_37/while/convolutionConv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_37/while/convolution?
conv_lst_m2d_37/while/BiasAddBiasAdd*conv_lst_m2d_37/while/convolution:output:0&conv_lst_m2d_37/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/BiasAdd?
#conv_lst_m2d_37/while/convolution_1Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_1?
conv_lst_m2d_37/while/BiasAdd_1BiasAdd,conv_lst_m2d_37/while/convolution_1:output:0&conv_lst_m2d_37/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_1?
#conv_lst_m2d_37/while/convolution_2Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_2?
conv_lst_m2d_37/while/BiasAdd_2BiasAdd,conv_lst_m2d_37/while/convolution_2:output:0&conv_lst_m2d_37/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_2?
#conv_lst_m2d_37/while/convolution_3Conv2D@conv_lst_m2d_37/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_37/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_37/while/convolution_3?
conv_lst_m2d_37/while/BiasAdd_3BiasAdd,conv_lst_m2d_37/while/convolution_3:output:0&conv_lst_m2d_37/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_37/while/BiasAdd_3?
#conv_lst_m2d_37/while/convolution_4Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_4?
#conv_lst_m2d_37/while/convolution_5Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_5?
#conv_lst_m2d_37/while/convolution_6Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_6?
#conv_lst_m2d_37/while/convolution_7Conv2D#conv_lst_m2d_37_while_placeholder_2&conv_lst_m2d_37/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_37/while/convolution_7?
conv_lst_m2d_37/while/addAddV2&conv_lst_m2d_37/while/BiasAdd:output:0,conv_lst_m2d_37/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add
conv_lst_m2d_37/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const?
conv_lst_m2d_37/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_1?
conv_lst_m2d_37/while/MulMulconv_lst_m2d_37/while/add:z:0$conv_lst_m2d_37/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul?
conv_lst_m2d_37/while/Add_1AddV2conv_lst_m2d_37/while/Mul:z:0&conv_lst_m2d_37/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_1?
-conv_lst_m2d_37/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_37/while/clip_by_value/Minimum/y?
+conv_lst_m2d_37/while/clip_by_value/MinimumMinimumconv_lst_m2d_37/while/Add_1:z:06conv_lst_m2d_37/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_37/while/clip_by_value/Minimum?
%conv_lst_m2d_37/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_37/while/clip_by_value/y?
#conv_lst_m2d_37/while/clip_by_valueMaximum/conv_lst_m2d_37/while/clip_by_value/Minimum:z:0.conv_lst_m2d_37/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_37/while/clip_by_value?
conv_lst_m2d_37/while/add_2AddV2(conv_lst_m2d_37/while/BiasAdd_1:output:0,conv_lst_m2d_37/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_2?
conv_lst_m2d_37/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const_2?
conv_lst_m2d_37/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_3?
conv_lst_m2d_37/while/Mul_1Mulconv_lst_m2d_37/while/add_2:z:0&conv_lst_m2d_37/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul_1?
conv_lst_m2d_37/while/Add_3AddV2conv_lst_m2d_37/while/Mul_1:z:0&conv_lst_m2d_37/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_3?
/conv_lst_m2d_37/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_37/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_37/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_37/while/Add_3:z:08conv_lst_m2d_37/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_37/while/clip_by_value_1/Minimum?
'conv_lst_m2d_37/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_37/while/clip_by_value_1/y?
%conv_lst_m2d_37/while/clip_by_value_1Maximum1conv_lst_m2d_37/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_37/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/while/clip_by_value_1?
conv_lst_m2d_37/while/mul_2Mul)conv_lst_m2d_37/while/clip_by_value_1:z:0#conv_lst_m2d_37_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_2?
conv_lst_m2d_37/while/add_4AddV2(conv_lst_m2d_37/while/BiasAdd_2:output:0,conv_lst_m2d_37/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_4?
conv_lst_m2d_37/while/ReluReluconv_lst_m2d_37/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Relu?
conv_lst_m2d_37/while/mul_3Mul'conv_lst_m2d_37/while/clip_by_value:z:0(conv_lst_m2d_37/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_3?
conv_lst_m2d_37/while/add_5AddV2conv_lst_m2d_37/while/mul_2:z:0conv_lst_m2d_37/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_5?
conv_lst_m2d_37/while/add_6AddV2(conv_lst_m2d_37/while/BiasAdd_3:output:0,conv_lst_m2d_37/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/add_6?
conv_lst_m2d_37/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_37/while/Const_4?
conv_lst_m2d_37/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_37/while/Const_5?
conv_lst_m2d_37/while/Mul_4Mulconv_lst_m2d_37/while/add_6:z:0&conv_lst_m2d_37/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Mul_4?
conv_lst_m2d_37/while/Add_7AddV2conv_lst_m2d_37/while/Mul_4:z:0&conv_lst_m2d_37/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Add_7?
/conv_lst_m2d_37/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_37/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_37/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_37/while/Add_7:z:08conv_lst_m2d_37/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_37/while/clip_by_value_2/Minimum?
'conv_lst_m2d_37/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_37/while/clip_by_value_2/y?
%conv_lst_m2d_37/while/clip_by_value_2Maximum1conv_lst_m2d_37/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_37/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_37/while/clip_by_value_2?
conv_lst_m2d_37/while/Relu_1Reluconv_lst_m2d_37/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/Relu_1?
conv_lst_m2d_37/while/mul_5Mul)conv_lst_m2d_37/while/clip_by_value_2:z:0*conv_lst_m2d_37/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_37/while/mul_5?
:conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_37_while_placeholder_1!conv_lst_m2d_37_while_placeholderconv_lst_m2d_37/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_37/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_37/while/add_8/y?
conv_lst_m2d_37/while/add_8AddV2!conv_lst_m2d_37_while_placeholder&conv_lst_m2d_37/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/add_8?
conv_lst_m2d_37/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_37/while/add_9/y?
conv_lst_m2d_37/while/add_9AddV28conv_lst_m2d_37_while_conv_lst_m2d_37_while_loop_counter&conv_lst_m2d_37/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_37/while/add_9?
conv_lst_m2d_37/while/IdentityIdentityconv_lst_m2d_37/while/add_9:z:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_37/while/Identity?
 conv_lst_m2d_37/while/Identity_1Identity>conv_lst_m2d_37_while_conv_lst_m2d_37_while_maximum_iterations^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_1?
 conv_lst_m2d_37/while/Identity_2Identityconv_lst_m2d_37/while/add_8:z:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_2?
 conv_lst_m2d_37/while/Identity_3IdentityJconv_lst_m2d_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_37/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_37/while/Identity_3?
 conv_lst_m2d_37/while/Identity_4Identityconv_lst_m2d_37/while/mul_5:z:0^conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_37/while/Identity_4?
 conv_lst_m2d_37/while/Identity_5Identityconv_lst_m2d_37/while/add_5:z:0^conv_lst_m2d_37/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_37/while/Identity_5?
conv_lst_m2d_37/while/NoOpNoOp+^conv_lst_m2d_37/while/split/ReadVariableOp-^conv_lst_m2d_37/while/split_1/ReadVariableOp-^conv_lst_m2d_37/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_37/while/NoOp"l
3conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice5conv_lst_m2d_37_while_conv_lst_m2d_37_strided_slice_0"I
conv_lst_m2d_37_while_identity'conv_lst_m2d_37/while/Identity:output:0"M
 conv_lst_m2d_37_while_identity_1)conv_lst_m2d_37/while/Identity_1:output:0"M
 conv_lst_m2d_37_while_identity_2)conv_lst_m2d_37/while/Identity_2:output:0"M
 conv_lst_m2d_37_while_identity_3)conv_lst_m2d_37/while/Identity_3:output:0"M
 conv_lst_m2d_37_while_identity_4)conv_lst_m2d_37/while/Identity_4:output:0"M
 conv_lst_m2d_37_while_identity_5)conv_lst_m2d_37/while/Identity_5:output:0"p
5conv_lst_m2d_37_while_split_1_readvariableop_resource7conv_lst_m2d_37_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_37_while_split_2_readvariableop_resource7conv_lst_m2d_37_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_37_while_split_readvariableop_resource5conv_lst_m2d_37_while_split_readvariableop_resource_0"?
qconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_37_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_37/while/split/ReadVariableOp*conv_lst_m2d_37/while/split/ReadVariableOp2\
,conv_lst_m2d_37/while/split_1/ReadVariableOp,conv_lst_m2d_37/while/split_1/ReadVariableOp2\
,conv_lst_m2d_37/while/split_2/ReadVariableOp,conv_lst_m2d_37/while/split_2/ReadVariableOp: 
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
?
c
G__inference_flatten_27_layer_call_and_return_conditional_losses_3073116

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
?
?
"conv_lst_m2d_36_while_cond_3074322<
8conv_lst_m2d_36_while_conv_lst_m2d_36_while_loop_counterB
>conv_lst_m2d_36_while_conv_lst_m2d_36_while_maximum_iterations%
!conv_lst_m2d_36_while_placeholder'
#conv_lst_m2d_36_while_placeholder_1'
#conv_lst_m2d_36_while_placeholder_2'
#conv_lst_m2d_36_while_placeholder_3<
8conv_lst_m2d_36_while_less_conv_lst_m2d_36_strided_sliceU
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074322___redundant_placeholder0U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074322___redundant_placeholder1U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074322___redundant_placeholder2U
Qconv_lst_m2d_36_while_conv_lst_m2d_36_while_cond_3074322___redundant_placeholder3"
conv_lst_m2d_36_while_identity
?
conv_lst_m2d_36/while/LessLess!conv_lst_m2d_36_while_placeholder8conv_lst_m2d_36_while_less_conv_lst_m2d_36_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_36/while/Less?
conv_lst_m2d_36/while/IdentityIdentityconv_lst_m2d_36/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_36/while/Identity"I
conv_lst_m2d_36_while_identity'conv_lst_m2d_36/while/Identity:output:0*(
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
?
H
,__inference_flatten_27_layer_call_fn_3077101

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
G__inference_flatten_27_layer_call_and_return_conditional_losses_30731162
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
?
while_cond_3075546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3075546___redundant_placeholder05
1while_while_cond_3075546___redundant_placeholder15
1while_while_cond_3075546___redundant_placeholder25
1while_while_cond_3075546___redundant_placeholder3
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
?p
?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3073534

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
while_body_3073408*
condR
while_cond_3073407*[
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
?D
?
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3072247

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
?	
?
1__inference_conv_lst_m2d_36_layer_call_fn_3075200
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_30714912
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
?
?
while_cond_3076272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3076272___redundant_placeholder05
1while_while_cond_3076272___redundant_placeholder15
1while_while_cond_3076272___redundant_placeholder25
1while_while_cond_3076272___redundant_placeholder3
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
E__inference_dense_63_layer_call_and_return_conditional_losses_3077145

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
?D
?
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077381

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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_16_input@
!serving_default_conv2d_16_input:0?????????
c
conv_lst_m2d_36_inputJ
'serving_default_conv_lst_m2d_36_input:0?????????<
dense_650
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
*:(F2conv2d_16/kernel
:F2conv2d_16/bias
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
*:(FK2conv2d_17/kernel
:K2conv2d_17/bias
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
": 	?22dense_62/kernel
:22dense_62/bias
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
!:K22dense_63/kernel
:22dense_63/bias
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
!:222dense_64/kernel
:22dense_64/bias
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
!:22dense_65/kernel
:2dense_65/bias
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
1:/?2conv_lst_m2d_36/kernel
;:9F?2 conv_lst_m2d_36/recurrent_kernel
#:!?2conv_lst_m2d_36/bias
1:/F?2conv_lst_m2d_37/kernel
;:9K?2 conv_lst_m2d_37/recurrent_kernel
#:!?2conv_lst_m2d_37/bias
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
/:-F2Adam/conv2d_16/kernel/m
!:F2Adam/conv2d_16/bias/m
/:-FK2Adam/conv2d_17/kernel/m
!:K2Adam/conv2d_17/bias/m
':%	?22Adam/dense_62/kernel/m
 :22Adam/dense_62/bias/m
&:$K22Adam/dense_63/kernel/m
 :22Adam/dense_63/bias/m
&:$222Adam/dense_64/kernel/m
 :22Adam/dense_64/bias/m
&:$22Adam/dense_65/kernel/m
 :2Adam/dense_65/bias/m
6:4?2Adam/conv_lst_m2d_36/kernel/m
@:>F?2'Adam/conv_lst_m2d_36/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_36/bias/m
6:4F?2Adam/conv_lst_m2d_37/kernel/m
@:>K?2'Adam/conv_lst_m2d_37/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_37/bias/m
/:-F2Adam/conv2d_16/kernel/v
!:F2Adam/conv2d_16/bias/v
/:-FK2Adam/conv2d_17/kernel/v
!:K2Adam/conv2d_17/bias/v
':%	?22Adam/dense_62/kernel/v
 :22Adam/dense_62/bias/v
&:$K22Adam/dense_63/kernel/v
 :22Adam/dense_63/bias/v
&:$222Adam/dense_64/kernel/v
 :22Adam/dense_64/bias/v
&:$22Adam/dense_65/kernel/v
 :2Adam/dense_65/bias/v
6:4?2Adam/conv_lst_m2d_36/kernel/v
@:>F?2'Adam/conv_lst_m2d_36/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_36/bias/v
6:4F?2Adam/conv_lst_m2d_37/kernel/v
@:>K?2'Adam/conv_lst_m2d_37/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_37/bias/v
?B?
"__inference__wrapped_model_3071307conv_lst_m2d_36_inputconv2d_16_input"?
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
*__inference_model_18_layer_call_fn_3073240
*__inference_model_18_layer_call_fn_3074179
*__inference_model_18_layer_call_fn_3074221
*__inference_model_18_layer_call_fn_3073983?
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
E__inference_model_18_layer_call_and_return_conditional_losses_3074705
E__inference_model_18_layer_call_and_return_conditional_losses_3075189
E__inference_model_18_layer_call_and_return_conditional_losses_3074035
E__inference_model_18_layer_call_and_return_conditional_losses_3074087?
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
1__inference_conv_lst_m2d_36_layer_call_fn_3075200
1__inference_conv_lst_m2d_36_layer_call_fn_3075211
1__inference_conv_lst_m2d_36_layer_call_fn_3075222
1__inference_conv_lst_m2d_36_layer_call_fn_3075233?
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075453
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075673
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075893
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3076113?
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
+__inference_conv2d_16_layer_call_fn_3076122?
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3076133?
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
1__inference_conv_lst_m2d_37_layer_call_fn_3076144
1__inference_conv_lst_m2d_37_layer_call_fn_3076155
1__inference_conv_lst_m2d_37_layer_call_fn_3076166
1__inference_conv_lst_m2d_37_layer_call_fn_3076177?
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076399
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076621
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076843
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3077065?
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
+__inference_conv2d_17_layer_call_fn_3077074?
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3077085?
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
,__inference_flatten_26_layer_call_fn_3077090?
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_3077096?
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
,__inference_flatten_27_layer_call_fn_3077101?
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
G__inference_flatten_27_layer_call_and_return_conditional_losses_3077107?
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
*__inference_dense_62_layer_call_fn_3077116?
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3077126?
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
*__inference_dense_63_layer_call_fn_3077135?
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
E__inference_dense_63_layer_call_and_return_conditional_losses_3077145?
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
(__inference_add_18_layer_call_fn_3077151?
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
C__inference_add_18_layer_call_and_return_conditional_losses_3077157?
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
*__inference_dense_64_layer_call_fn_3077166?
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
E__inference_dense_64_layer_call_and_return_conditional_losses_3077177?
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
*__inference_dense_65_layer_call_fn_3077186?
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
E__inference_dense_65_layer_call_and_return_conditional_losses_3077197?
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
%__inference_signature_wrapper_3074137conv2d_16_inputconv_lst_m2d_36_input"?
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
3__inference_conv_lstm_cell_36_layer_call_fn_3077214
3__inference_conv_lstm_cell_36_layer_call_fn_3077231?
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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077306
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077381?
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
3__inference_conv_lstm_cell_37_layer_call_fn_3077398
3__inference_conv_lstm_cell_37_layer_call_fn_3077415?
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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077490
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077565?
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
"__inference__wrapped_model_3071307?UVW&'XYZ45:;DEJK??
x?u
s?p
;?8
conv_lst_m2d_36_input?????????
1?.
conv2d_16_input?????????
? "3?0
.
dense_65"?
dense_65??????????
C__inference_add_18_layer_call_and_return_conditional_losses_3077157?Z?W
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
(__inference_add_18_layer_call_fn_3077151vZ?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "??????????2?
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3076133l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????F
? ?
+__inference_conv2d_16_layer_call_fn_3076122_7?4
-?*
(?%
inputs?????????
? " ??????????F?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3077085l&'7?4
-?*
(?%
inputs?????????F
? "-?*
#? 
0?????????K
? ?
+__inference_conv2d_17_layer_call_fn_3077074_&'7?4
-?*
(?%
inputs?????????F
? " ??????????K?
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075453?UVWW?T
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075673?UVWW?T
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3075893?UVWG?D
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
L__inference_conv_lst_m2d_36_layer_call_and_return_conditional_losses_3076113?UVWG?D
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
1__inference_conv_lst_m2d_36_layer_call_fn_3075200?UVWW?T
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
1__inference_conv_lst_m2d_36_layer_call_fn_3075211?UVWW?T
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
1__inference_conv_lst_m2d_36_layer_call_fn_3075222tUVWG?D
=?:
,?)
inputs?????????

 
p 

 
? "$?!?????????F?
1__inference_conv_lst_m2d_36_layer_call_fn_3075233tUVWG?D
=?:
,?)
inputs?????????

 
p

 
? "$?!?????????F?
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076399?XYZW?T
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076621?XYZW?T
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3076843?XYZG?D
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
L__inference_conv_lst_m2d_37_layer_call_and_return_conditional_losses_3077065?XYZG?D
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
1__inference_conv_lst_m2d_37_layer_call_fn_3076144?XYZW?T
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
1__inference_conv_lst_m2d_37_layer_call_fn_3076155?XYZW?T
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
1__inference_conv_lst_m2d_37_layer_call_fn_3076166tXYZG?D
=?:
,?)
inputs?????????F

 
p 

 
? "$?!?????????K?
1__inference_conv_lst_m2d_37_layer_call_fn_3076177tXYZG?D
=?:
,?)
inputs?????????F

 
p

 
? "$?!?????????K?
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077306?UVW???
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
N__inference_conv_lstm_cell_36_layer_call_and_return_conditional_losses_3077381?UVW???
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
3__inference_conv_lstm_cell_36_layer_call_fn_3077214?UVW???
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
3__inference_conv_lstm_cell_36_layer_call_fn_3077231?UVW???
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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077490?XYZ???
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
N__inference_conv_lstm_cell_37_layer_call_and_return_conditional_losses_3077565?XYZ???
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
3__inference_conv_lstm_cell_37_layer_call_fn_3077398?XYZ???
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
3__inference_conv_lstm_cell_37_layer_call_fn_3077415?XYZ???
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3077126]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????2
? ~
*__inference_dense_62_layer_call_fn_3077116P450?-
&?#
!?
inputs??????????
? "??????????2?
E__inference_dense_63_layer_call_and_return_conditional_losses_3077145\:;/?,
%?"
 ?
inputs?????????K
? "%?"
?
0?????????2
? }
*__inference_dense_63_layer_call_fn_3077135O:;/?,
%?"
 ?
inputs?????????K
? "??????????2?
E__inference_dense_64_layer_call_and_return_conditional_losses_3077177\DE/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_dense_64_layer_call_fn_3077166ODE/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_dense_65_layer_call_and_return_conditional_losses_3077197\JK/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_65_layer_call_fn_3077186OJK/?,
%?"
 ?
inputs?????????2
? "???????????
G__inference_flatten_26_layer_call_and_return_conditional_losses_3077096e;?8
1?.
,?)
inputs?????????K
? "&?#
?
0??????????
? ?
,__inference_flatten_26_layer_call_fn_3077090X;?8
1?.
,?)
inputs?????????K
? "????????????
G__inference_flatten_27_layer_call_and_return_conditional_losses_3077107`7?4
-?*
(?%
inputs?????????K
? "%?"
?
0?????????K
? ?
,__inference_flatten_27_layer_call_fn_3077101S7?4
-?*
(?%
inputs?????????K
? "??????????K?
E__inference_model_18_layer_call_and_return_conditional_losses_3074035?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_36_input?????????
1?.
conv2d_16_input?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_18_layer_call_and_return_conditional_losses_3074087?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_36_input?????????
1?.
conv2d_16_input?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_18_layer_call_and_return_conditional_losses_3074705?UVW&'XYZ45:;DEJKv?s
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
E__inference_model_18_layer_call_and_return_conditional_losses_3075189?UVW&'XYZ45:;DEJKv?s
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
*__inference_model_18_layer_call_fn_3073240?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_36_input?????????
1?.
conv2d_16_input?????????
p 

 
? "???????????
*__inference_model_18_layer_call_fn_3073983?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_36_input?????????
1?.
conv2d_16_input?????????
p

 
? "???????????
*__inference_model_18_layer_call_fn_3074179?UVW&'XYZ45:;DEJKv?s
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
*__inference_model_18_layer_call_fn_3074221?UVW&'XYZ45:;DEJKv?s
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
%__inference_signature_wrapper_3074137?UVW&'XYZ45:;DEJK???
? 
???
D
conv2d_16_input1?.
conv2d_16_input?????????
T
conv_lst_m2d_36_input;?8
conv_lst_m2d_36_input?????????"3?0
.
dense_65"?
dense_65?????????