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
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:F*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:F*
dtype0
?
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:FK*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:K*
dtype0
{
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2* 
shared_namedense_66/kernel
t
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes
:	?2*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes
:2*
dtype0
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2* 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:K2*
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes
:2*
dtype0
z
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namedense_68/kernel
s
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes

:22*
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
:2*
dtype0
z
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_69/kernel
s
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes

:2*
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
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
conv_lst_m2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameconv_lst_m2d_38/kernel
?
*conv_lst_m2d_38/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_38/kernel*'
_output_shapes
:?*
dtype0
?
 conv_lst_m2d_38/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*1
shared_name" conv_lst_m2d_38/recurrent_kernel
?
4conv_lst_m2d_38/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_38/recurrent_kernel*'
_output_shapes
:F?*
dtype0
?
conv_lst_m2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_38/bias
z
(conv_lst_m2d_38/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_38/bias*
_output_shapes	
:?*
dtype0
?
conv_lst_m2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*'
shared_nameconv_lst_m2d_39/kernel
?
*conv_lst_m2d_39/kernel/Read/ReadVariableOpReadVariableOpconv_lst_m2d_39/kernel*'
_output_shapes
:F?*
dtype0
?
 conv_lst_m2d_39/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*1
shared_name" conv_lst_m2d_39/recurrent_kernel
?
4conv_lst_m2d_39/recurrent_kernel/Read/ReadVariableOpReadVariableOp conv_lst_m2d_39/recurrent_kernel*'
_output_shapes
:K?*
dtype0
?
conv_lst_m2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameconv_lst_m2d_39/bias
z
(conv_lst_m2d_39/bias/Read/ReadVariableOpReadVariableOpconv_lst_m2d_39/bias*
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
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_18/kernel/m
?
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
:F*
dtype0
?
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_19/kernel/m
?
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:K*
dtype0
?
Adam/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_66/kernel/m
?
*Adam/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/m*
_output_shapes
:	?2*
dtype0
?
Adam/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_66/bias/m
y
(Adam/dense_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_67/kernel/m
?
*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes

:K2*
dtype0
?
Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_67/bias/m
y
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_68/kernel/m
?
*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m*
_output_shapes

:22*
dtype0
?
Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_68/bias/m
y
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_69/kernel/m
?
*Adam/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/m
y
(Adam/dense_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_38/kernel/m
?
1Adam/conv_lst_m2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_38/kernel/m*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_38/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_38/recurrent_kernel/m
?
;Adam/conv_lst_m2d_38/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_38/recurrent_kernel/m*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_38/bias/m
?
/Adam/conv_lst_m2d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_38/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_39/kernel/m
?
1Adam/conv_lst_m2d_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_39/kernel/m*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_39/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_39/recurrent_kernel/m
?
;Adam/conv_lst_m2d_39/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_39/recurrent_kernel/m*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_39/bias/m
?
/Adam/conv_lst_m2d_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_39/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*(
shared_nameAdam/conv2d_18/kernel/v
?
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
:F*
dtype0
?
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
:F*
dtype0
?
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:FK*(
shared_nameAdam/conv2d_19/kernel/v
?
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:FK*
dtype0
?
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:K*
dtype0
?
Adam/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*'
shared_nameAdam/dense_66/kernel/v
?
*Adam/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/v*
_output_shapes
:	?2*
dtype0
?
Adam/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_66/bias/v
y
(Adam/dense_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*'
shared_nameAdam/dense_67/kernel/v
?
*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes

:K2*
dtype0
?
Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_67/bias/v
y
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_68/kernel/v
?
*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v*
_output_shapes

:22*
dtype0
?
Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_68/bias/v
y
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_69/kernel/v
?
*Adam/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/v
y
(Adam/dense_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_lst_m2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/conv_lst_m2d_38/kernel/v
?
1Adam/conv_lst_m2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_38/kernel/v*'
_output_shapes
:?*
dtype0
?
'Adam/conv_lst_m2d_38/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*8
shared_name)'Adam/conv_lst_m2d_38/recurrent_kernel/v
?
;Adam/conv_lst_m2d_38/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_38/recurrent_kernel/v*'
_output_shapes
:F?*
dtype0
?
Adam/conv_lst_m2d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_38/bias/v
?
/Adam/conv_lst_m2d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_38/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv_lst_m2d_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F?*.
shared_nameAdam/conv_lst_m2d_39/kernel/v
?
1Adam/conv_lst_m2d_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_39/kernel/v*'
_output_shapes
:F?*
dtype0
?
'Adam/conv_lst_m2d_39/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K?*8
shared_name)'Adam/conv_lst_m2d_39/recurrent_kernel/v
?
;Adam/conv_lst_m2d_39/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp'Adam/conv_lst_m2d_39/recurrent_kernel/v*'
_output_shapes
:K?*
dtype0
?
Adam/conv_lst_m2d_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/conv_lst_m2d_39/bias/v
?
/Adam/conv_lst_m2d_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lst_m2d_39/bias/v*
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
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_67/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_68/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_69/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv_lst_m2d_38/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_38/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_38/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEconv_lst_m2d_39/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE conv_lst_m2d_39/recurrent_kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lst_m2d_39/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_38/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_38/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_38/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_39/kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_39/recurrent_kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_39/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_38/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_38/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_38/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv_lst_m2d_39/kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/conv_lst_m2d_39/recurrent_kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_lst_m2d_39/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_18_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
%serving_default_conv_lst_m2d_38_inputPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_input%serving_default_conv_lst_m2d_38_inputconv2d_18/kernelconv2d_18/biasconv_lst_m2d_38/kernel conv_lst_m2d_38/recurrent_kernelconv_lst_m2d_38/biasconv2d_19/kernelconv2d_19/biasconv_lst_m2d_39/kernel conv_lst_m2d_39/recurrent_kernelconv_lst_m2d_39/biasdense_66/kerneldense_66/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias*
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
%__inference_signature_wrapper_3237887
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*conv_lst_m2d_38/kernel/Read/ReadVariableOp4conv_lst_m2d_38/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_38/bias/Read/ReadVariableOp*conv_lst_m2d_39/kernel/Read/ReadVariableOp4conv_lst_m2d_39/recurrent_kernel/Read/ReadVariableOp(conv_lst_m2d_39/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp*Adam/dense_66/kernel/m/Read/ReadVariableOp(Adam/dense_66/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp*Adam/dense_69/kernel/m/Read/ReadVariableOp(Adam/dense_69/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_38/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_38/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_38/bias/m/Read/ReadVariableOp1Adam/conv_lst_m2d_39/kernel/m/Read/ReadVariableOp;Adam/conv_lst_m2d_39/recurrent_kernel/m/Read/ReadVariableOp/Adam/conv_lst_m2d_39/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp*Adam/dense_66/kernel/v/Read/ReadVariableOp(Adam/dense_66/bias/v/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOp*Adam/dense_69/kernel/v/Read/ReadVariableOp(Adam/dense_69/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_38/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_38/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_38/bias/v/Read/ReadVariableOp1Adam/conv_lst_m2d_39/kernel/v/Read/ReadVariableOp;Adam/conv_lst_m2d_39/recurrent_kernel/v/Read/ReadVariableOp/Adam/conv_lst_m2d_39/bias/v/Read/ReadVariableOpConst*L
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
 __inference__traced_save_3241528
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_66/kerneldense_66/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv_lst_m2d_38/kernel conv_lst_m2d_38/recurrent_kernelconv_lst_m2d_38/biasconv_lst_m2d_39/kernel conv_lst_m2d_39/recurrent_kernelconv_lst_m2d_39/biastotalcounttotal_1count_1Adam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/dense_66/kernel/mAdam/dense_66/bias/mAdam/dense_67/kernel/mAdam/dense_67/bias/mAdam/dense_68/kernel/mAdam/dense_68/bias/mAdam/dense_69/kernel/mAdam/dense_69/bias/mAdam/conv_lst_m2d_38/kernel/m'Adam/conv_lst_m2d_38/recurrent_kernel/mAdam/conv_lst_m2d_38/bias/mAdam/conv_lst_m2d_39/kernel/m'Adam/conv_lst_m2d_39/recurrent_kernel/mAdam/conv_lst_m2d_39/bias/mAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/dense_66/kernel/vAdam/dense_66/bias/vAdam/dense_67/kernel/vAdam/dense_67/bias/vAdam/dense_68/kernel/vAdam/dense_68/bias/vAdam/dense_69/kernel/vAdam/dense_69/bias/vAdam/conv_lst_m2d_38/kernel/v'Adam/conv_lst_m2d_38/recurrent_kernel/vAdam/conv_lst_m2d_38/bias/vAdam/conv_lst_m2d_39/kernel/v'Adam/conv_lst_m2d_39/recurrent_kernel/vAdam/conv_lst_m2d_39/bias/v*K
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
#__inference__traced_restore_3241727??5
?
?
3__inference_conv_lstm_cell_39_layer_call_fn_3241148

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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32358092
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
?D
?
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241315

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
1__inference_conv_lst_m2d_39_layer_call_fn_3239894
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32358912
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
?
?
*__inference_dense_69_layer_call_fn_3240936

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
E__inference_dense_69_layer_call_and_return_conditional_losses_32369442
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
?
?
while_cond_3240466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3240466___redundant_placeholder05
1while_while_cond_3240466___redundant_placeholder15
1while_while_cond_3240466___redundant_placeholder25
1while_while_cond_3240466___redundant_placeholder3
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
?o
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3237536

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
while_body_3237410*
condR
while_cond_3237409*[
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
?	
?
1__inference_conv_lst_m2d_38_layer_call_fn_3238961
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32354772
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
?o
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3236606

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
while_body_3236480*
condR
while_cond_3236479*[
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
+model_19_conv_lst_m2d_39_while_cond_3234899N
Jmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_loop_counterT
Pmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_maximum_iterations.
*model_19_conv_lst_m2d_39_while_placeholder0
,model_19_conv_lst_m2d_39_while_placeholder_10
,model_19_conv_lst_m2d_39_while_placeholder_20
,model_19_conv_lst_m2d_39_while_placeholder_3N
Jmodel_19_conv_lst_m2d_39_while_less_model_19_conv_lst_m2d_39_strided_sliceg
cmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_cond_3234899___redundant_placeholder0g
cmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_cond_3234899___redundant_placeholder1g
cmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_cond_3234899___redundant_placeholder2g
cmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_cond_3234899___redundant_placeholder3+
'model_19_conv_lst_m2d_39_while_identity
?
#model_19/conv_lst_m2d_39/while/LessLess*model_19_conv_lst_m2d_39_while_placeholderJmodel_19_conv_lst_m2d_39_while_less_model_19_conv_lst_m2d_39_strided_slice*
T0*
_output_shapes
: 2%
#model_19/conv_lst_m2d_39/while/Less?
'model_19/conv_lst_m2d_39/while/IdentityIdentity'model_19/conv_lst_m2d_39/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_19/conv_lst_m2d_39/while/Identity"[
'model_19_conv_lst_m2d_39_while_identity0model_19/conv_lst_m2d_39/while/Identity:output:0*(
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239863

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
while_body_3239737*
condR
while_cond_3239736*[
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
?D
?
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241240

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
?
?
1__inference_conv_lst_m2d_39_layer_call_fn_3239927

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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32372842
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
?
?
E__inference_dense_68_layer_call_and_return_conditional_losses_3236927

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
??
?
E__inference_model_19_layer_call_and_return_conditional_losses_3238455
inputs_0
inputs_1B
(conv2d_18_conv2d_readvariableop_resource:F7
)conv2d_18_biasadd_readvariableop_resource:FH
-conv_lst_m2d_38_split_readvariableop_resource:?J
/conv_lst_m2d_38_split_1_readvariableop_resource:F?>
/conv_lst_m2d_38_split_2_readvariableop_resource:	?B
(conv2d_19_conv2d_readvariableop_resource:FK7
)conv2d_19_biasadd_readvariableop_resource:KH
-conv_lst_m2d_39_split_readvariableop_resource:F?J
/conv_lst_m2d_39_split_1_readvariableop_resource:K?>
/conv_lst_m2d_39_split_2_readvariableop_resource:	?:
'dense_66_matmul_readvariableop_resource:	?26
(dense_66_biasadd_readvariableop_resource:29
'dense_67_matmul_readvariableop_resource:K26
(dense_67_biasadd_readvariableop_resource:29
'dense_68_matmul_readvariableop_resource:226
(dense_68_biasadd_readvariableop_resource:29
'dense_69_matmul_readvariableop_resource:26
(dense_69_biasadd_readvariableop_resource:
identity?? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?$conv_lst_m2d_38/split/ReadVariableOp?&conv_lst_m2d_38/split_1/ReadVariableOp?&conv_lst_m2d_38/split_2/ReadVariableOp?conv_lst_m2d_38/while?$conv_lst_m2d_39/split/ReadVariableOp?&conv_lst_m2d_39/split_1/ReadVariableOp?&conv_lst_m2d_39/split_2/ReadVariableOp?conv_lst_m2d_39/while?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Dinputs_1'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_18/Relu?
conv_lst_m2d_38/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_38/zeros_like?
%conv_lst_m2d_38/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_38/Sum/reduction_indices?
conv_lst_m2d_38/SumSumconv_lst_m2d_38/zeros_like:y:0.conv_lst_m2d_38/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_38/Sum?
conv_lst_m2d_38/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_38/zeros?
conv_lst_m2d_38/convolutionConv2Dconv_lst_m2d_38/Sum:output:0conv_lst_m2d_38/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution?
conv_lst_m2d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_38/transpose/perm?
conv_lst_m2d_38/transpose	Transposeinputs_0'conv_lst_m2d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_38/transpose{
conv_lst_m2d_38/ShapeShapeconv_lst_m2d_38/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_38/Shape?
#conv_lst_m2d_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_38/strided_slice/stack?
%conv_lst_m2d_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_38/strided_slice/stack_1?
%conv_lst_m2d_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_38/strided_slice/stack_2?
conv_lst_m2d_38/strided_sliceStridedSliceconv_lst_m2d_38/Shape:output:0,conv_lst_m2d_38/strided_slice/stack:output:0.conv_lst_m2d_38/strided_slice/stack_1:output:0.conv_lst_m2d_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_38/strided_slice?
+conv_lst_m2d_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_38/TensorArrayV2/element_shape?
conv_lst_m2d_38/TensorArrayV2TensorListReserve4conv_lst_m2d_38/TensorArrayV2/element_shape:output:0&conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_38/TensorArrayV2?
Econv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_38/transpose:y:0Nconv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_38/strided_slice_1/stack?
'conv_lst_m2d_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_1/stack_1?
'conv_lst_m2d_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_1/stack_2?
conv_lst_m2d_38/strided_slice_1StridedSliceconv_lst_m2d_38/transpose:y:0.conv_lst_m2d_38/strided_slice_1/stack:output:00conv_lst_m2d_38/strided_slice_1/stack_1:output:00conv_lst_m2d_38/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_38/strided_slice_1?
conv_lst_m2d_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_38/split/split_dim?
$conv_lst_m2d_38/split/ReadVariableOpReadVariableOp-conv_lst_m2d_38_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_38/split/ReadVariableOp?
conv_lst_m2d_38/splitSplit(conv_lst_m2d_38/split/split_dim:output:0,conv_lst_m2d_38/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_38/split?
!conv_lst_m2d_38/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_38/split_1/split_dim?
&conv_lst_m2d_38/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_38_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_38/split_1/ReadVariableOp?
conv_lst_m2d_38/split_1Split*conv_lst_m2d_38/split_1/split_dim:output:0.conv_lst_m2d_38/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_38/split_1?
!conv_lst_m2d_38/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_38/split_2/split_dim?
&conv_lst_m2d_38/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_38_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_38/split_2/ReadVariableOp?
conv_lst_m2d_38/split_2Split*conv_lst_m2d_38/split_2/split_dim:output:0.conv_lst_m2d_38/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_38/split_2?
conv_lst_m2d_38/convolution_1Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_1?
conv_lst_m2d_38/BiasAddBiasAdd&conv_lst_m2d_38/convolution_1:output:0 conv_lst_m2d_38/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd?
conv_lst_m2d_38/convolution_2Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_2?
conv_lst_m2d_38/BiasAdd_1BiasAdd&conv_lst_m2d_38/convolution_2:output:0 conv_lst_m2d_38/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_1?
conv_lst_m2d_38/convolution_3Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_3?
conv_lst_m2d_38/BiasAdd_2BiasAdd&conv_lst_m2d_38/convolution_3:output:0 conv_lst_m2d_38/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_2?
conv_lst_m2d_38/convolution_4Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_4?
conv_lst_m2d_38/BiasAdd_3BiasAdd&conv_lst_m2d_38/convolution_4:output:0 conv_lst_m2d_38/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_3?
conv_lst_m2d_38/convolution_5Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_5?
conv_lst_m2d_38/convolution_6Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_6?
conv_lst_m2d_38/convolution_7Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_7?
conv_lst_m2d_38/convolution_8Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_8?
conv_lst_m2d_38/addAddV2 conv_lst_m2d_38/BiasAdd:output:0&conv_lst_m2d_38/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/adds
conv_lst_m2d_38/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Constw
conv_lst_m2d_38/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_1?
conv_lst_m2d_38/MulMulconv_lst_m2d_38/add:z:0conv_lst_m2d_38/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul?
conv_lst_m2d_38/Add_1AddV2conv_lst_m2d_38/Mul:z:0 conv_lst_m2d_38/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_1?
'conv_lst_m2d_38/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_38/clip_by_value/Minimum/y?
%conv_lst_m2d_38/clip_by_value/MinimumMinimumconv_lst_m2d_38/Add_1:z:00conv_lst_m2d_38/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/clip_by_value/Minimum?
conv_lst_m2d_38/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_38/clip_by_value/y?
conv_lst_m2d_38/clip_by_valueMaximum)conv_lst_m2d_38/clip_by_value/Minimum:z:0(conv_lst_m2d_38/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/clip_by_value?
conv_lst_m2d_38/add_2AddV2"conv_lst_m2d_38/BiasAdd_1:output:0&conv_lst_m2d_38/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_2w
conv_lst_m2d_38/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Const_2w
conv_lst_m2d_38/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_3?
conv_lst_m2d_38/Mul_1Mulconv_lst_m2d_38/add_2:z:0 conv_lst_m2d_38/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul_1?
conv_lst_m2d_38/Add_3AddV2conv_lst_m2d_38/Mul_1:z:0 conv_lst_m2d_38/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_3?
)conv_lst_m2d_38/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_38/clip_by_value_1/Minimum/y?
'conv_lst_m2d_38/clip_by_value_1/MinimumMinimumconv_lst_m2d_38/Add_3:z:02conv_lst_m2d_38/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_38/clip_by_value_1/Minimum?
!conv_lst_m2d_38/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_38/clip_by_value_1/y?
conv_lst_m2d_38/clip_by_value_1Maximum+conv_lst_m2d_38/clip_by_value_1/Minimum:z:0*conv_lst_m2d_38/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/clip_by_value_1?
conv_lst_m2d_38/mul_2Mul#conv_lst_m2d_38/clip_by_value_1:z:0$conv_lst_m2d_38/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_2?
conv_lst_m2d_38/add_4AddV2"conv_lst_m2d_38/BiasAdd_2:output:0&conv_lst_m2d_38/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_4?
conv_lst_m2d_38/ReluReluconv_lst_m2d_38/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Relu?
conv_lst_m2d_38/mul_3Mul!conv_lst_m2d_38/clip_by_value:z:0"conv_lst_m2d_38/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_3?
conv_lst_m2d_38/add_5AddV2conv_lst_m2d_38/mul_2:z:0conv_lst_m2d_38/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_5?
conv_lst_m2d_38/add_6AddV2"conv_lst_m2d_38/BiasAdd_3:output:0&conv_lst_m2d_38/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_6w
conv_lst_m2d_38/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Const_4w
conv_lst_m2d_38/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_5?
conv_lst_m2d_38/Mul_4Mulconv_lst_m2d_38/add_6:z:0 conv_lst_m2d_38/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul_4?
conv_lst_m2d_38/Add_7AddV2conv_lst_m2d_38/Mul_4:z:0 conv_lst_m2d_38/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_7?
)conv_lst_m2d_38/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_38/clip_by_value_2/Minimum/y?
'conv_lst_m2d_38/clip_by_value_2/MinimumMinimumconv_lst_m2d_38/Add_7:z:02conv_lst_m2d_38/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_38/clip_by_value_2/Minimum?
!conv_lst_m2d_38/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_38/clip_by_value_2/y?
conv_lst_m2d_38/clip_by_value_2Maximum+conv_lst_m2d_38/clip_by_value_2/Minimum:z:0*conv_lst_m2d_38/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/clip_by_value_2?
conv_lst_m2d_38/Relu_1Reluconv_lst_m2d_38/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Relu_1?
conv_lst_m2d_38/mul_5Mul#conv_lst_m2d_38/clip_by_value_2:z:0$conv_lst_m2d_38/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_5?
-conv_lst_m2d_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_38/TensorArrayV2_1/element_shape?
conv_lst_m2d_38/TensorArrayV2_1TensorListReserve6conv_lst_m2d_38/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_38/TensorArrayV2_1n
conv_lst_m2d_38/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_38/time?
(conv_lst_m2d_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_38/while/maximum_iterations?
"conv_lst_m2d_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_38/while/loop_counter?
conv_lst_m2d_38/whileWhile+conv_lst_m2d_38/while/loop_counter:output:01conv_lst_m2d_38/while/maximum_iterations:output:0conv_lst_m2d_38/time:output:0(conv_lst_m2d_38/TensorArrayV2_1:handle:0$conv_lst_m2d_38/convolution:output:0$conv_lst_m2d_38/convolution:output:0&conv_lst_m2d_38/strided_slice:output:0Gconv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_38_split_readvariableop_resource/conv_lst_m2d_38_split_1_readvariableop_resource/conv_lst_m2d_38_split_2_readvariableop_resource*
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
"conv_lst_m2d_38_while_body_3238073*.
cond&R$
"conv_lst_m2d_38_while_cond_3238072*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_38/while?
@conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_38/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_38/while:output:3Iconv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_38/strided_slice_2/stack?
'conv_lst_m2d_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_38/strided_slice_2/stack_1?
'conv_lst_m2d_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_2/stack_2?
conv_lst_m2d_38/strided_slice_2StridedSlice;conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_38/strided_slice_2/stack:output:00conv_lst_m2d_38/strided_slice_2/stack_1:output:00conv_lst_m2d_38/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_38/strided_slice_2?
 conv_lst_m2d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_38/transpose_1/perm?
conv_lst_m2d_38/transpose_1	Transpose;conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_38/transpose_1?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_19/Relu?
conv_lst_m2d_39/zeros_like	ZerosLikeconv_lst_m2d_38/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_39/zeros_like?
%conv_lst_m2d_39/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_39/Sum/reduction_indices?
conv_lst_m2d_39/SumSumconv_lst_m2d_39/zeros_like:y:0.conv_lst_m2d_39/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_39/Sum?
%conv_lst_m2d_39/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_39/zeros/shape_as_tensor
conv_lst_m2d_39/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_39/zeros/Const?
conv_lst_m2d_39/zerosFill.conv_lst_m2d_39/zeros/shape_as_tensor:output:0$conv_lst_m2d_39/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_39/zeros?
conv_lst_m2d_39/convolutionConv2Dconv_lst_m2d_39/Sum:output:0conv_lst_m2d_39/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution?
conv_lst_m2d_39/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_39/transpose/perm?
conv_lst_m2d_39/transpose	Transposeconv_lst_m2d_38/transpose_1:y:0'conv_lst_m2d_39/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_39/transpose{
conv_lst_m2d_39/ShapeShapeconv_lst_m2d_39/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_39/Shape?
#conv_lst_m2d_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_39/strided_slice/stack?
%conv_lst_m2d_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_39/strided_slice/stack_1?
%conv_lst_m2d_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_39/strided_slice/stack_2?
conv_lst_m2d_39/strided_sliceStridedSliceconv_lst_m2d_39/Shape:output:0,conv_lst_m2d_39/strided_slice/stack:output:0.conv_lst_m2d_39/strided_slice/stack_1:output:0.conv_lst_m2d_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_39/strided_slice?
+conv_lst_m2d_39/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_39/TensorArrayV2/element_shape?
conv_lst_m2d_39/TensorArrayV2TensorListReserve4conv_lst_m2d_39/TensorArrayV2/element_shape:output:0&conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_39/TensorArrayV2?
Econv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_39/transpose:y:0Nconv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_39/strided_slice_1/stack?
'conv_lst_m2d_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_1/stack_1?
'conv_lst_m2d_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_1/stack_2?
conv_lst_m2d_39/strided_slice_1StridedSliceconv_lst_m2d_39/transpose:y:0.conv_lst_m2d_39/strided_slice_1/stack:output:00conv_lst_m2d_39/strided_slice_1/stack_1:output:00conv_lst_m2d_39/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_39/strided_slice_1?
conv_lst_m2d_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_39/split/split_dim?
$conv_lst_m2d_39/split/ReadVariableOpReadVariableOp-conv_lst_m2d_39_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_39/split/ReadVariableOp?
conv_lst_m2d_39/splitSplit(conv_lst_m2d_39/split/split_dim:output:0,conv_lst_m2d_39/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_39/split?
!conv_lst_m2d_39/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_39/split_1/split_dim?
&conv_lst_m2d_39/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_39_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_39/split_1/ReadVariableOp?
conv_lst_m2d_39/split_1Split*conv_lst_m2d_39/split_1/split_dim:output:0.conv_lst_m2d_39/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_39/split_1?
!conv_lst_m2d_39/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_39/split_2/split_dim?
&conv_lst_m2d_39/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_39_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_39/split_2/ReadVariableOp?
conv_lst_m2d_39/split_2Split*conv_lst_m2d_39/split_2/split_dim:output:0.conv_lst_m2d_39/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_39/split_2?
conv_lst_m2d_39/convolution_1Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_1?
conv_lst_m2d_39/BiasAddBiasAdd&conv_lst_m2d_39/convolution_1:output:0 conv_lst_m2d_39/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd?
conv_lst_m2d_39/convolution_2Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_2?
conv_lst_m2d_39/BiasAdd_1BiasAdd&conv_lst_m2d_39/convolution_2:output:0 conv_lst_m2d_39/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_1?
conv_lst_m2d_39/convolution_3Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_3?
conv_lst_m2d_39/BiasAdd_2BiasAdd&conv_lst_m2d_39/convolution_3:output:0 conv_lst_m2d_39/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_2?
conv_lst_m2d_39/convolution_4Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_4?
conv_lst_m2d_39/BiasAdd_3BiasAdd&conv_lst_m2d_39/convolution_4:output:0 conv_lst_m2d_39/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_3?
conv_lst_m2d_39/convolution_5Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_5?
conv_lst_m2d_39/convolution_6Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_6?
conv_lst_m2d_39/convolution_7Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_7?
conv_lst_m2d_39/convolution_8Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_8?
conv_lst_m2d_39/addAddV2 conv_lst_m2d_39/BiasAdd:output:0&conv_lst_m2d_39/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/adds
conv_lst_m2d_39/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Constw
conv_lst_m2d_39/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_1?
conv_lst_m2d_39/MulMulconv_lst_m2d_39/add:z:0conv_lst_m2d_39/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul?
conv_lst_m2d_39/Add_1AddV2conv_lst_m2d_39/Mul:z:0 conv_lst_m2d_39/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_1?
'conv_lst_m2d_39/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_39/clip_by_value/Minimum/y?
%conv_lst_m2d_39/clip_by_value/MinimumMinimumconv_lst_m2d_39/Add_1:z:00conv_lst_m2d_39/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/clip_by_value/Minimum?
conv_lst_m2d_39/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_39/clip_by_value/y?
conv_lst_m2d_39/clip_by_valueMaximum)conv_lst_m2d_39/clip_by_value/Minimum:z:0(conv_lst_m2d_39/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/clip_by_value?
conv_lst_m2d_39/add_2AddV2"conv_lst_m2d_39/BiasAdd_1:output:0&conv_lst_m2d_39/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_2w
conv_lst_m2d_39/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Const_2w
conv_lst_m2d_39/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_3?
conv_lst_m2d_39/Mul_1Mulconv_lst_m2d_39/add_2:z:0 conv_lst_m2d_39/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul_1?
conv_lst_m2d_39/Add_3AddV2conv_lst_m2d_39/Mul_1:z:0 conv_lst_m2d_39/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_3?
)conv_lst_m2d_39/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_39/clip_by_value_1/Minimum/y?
'conv_lst_m2d_39/clip_by_value_1/MinimumMinimumconv_lst_m2d_39/Add_3:z:02conv_lst_m2d_39/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_39/clip_by_value_1/Minimum?
!conv_lst_m2d_39/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_39/clip_by_value_1/y?
conv_lst_m2d_39/clip_by_value_1Maximum+conv_lst_m2d_39/clip_by_value_1/Minimum:z:0*conv_lst_m2d_39/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/clip_by_value_1?
conv_lst_m2d_39/mul_2Mul#conv_lst_m2d_39/clip_by_value_1:z:0$conv_lst_m2d_39/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_2?
conv_lst_m2d_39/add_4AddV2"conv_lst_m2d_39/BiasAdd_2:output:0&conv_lst_m2d_39/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_4?
conv_lst_m2d_39/ReluReluconv_lst_m2d_39/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Relu?
conv_lst_m2d_39/mul_3Mul!conv_lst_m2d_39/clip_by_value:z:0"conv_lst_m2d_39/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_3?
conv_lst_m2d_39/add_5AddV2conv_lst_m2d_39/mul_2:z:0conv_lst_m2d_39/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_5?
conv_lst_m2d_39/add_6AddV2"conv_lst_m2d_39/BiasAdd_3:output:0&conv_lst_m2d_39/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_6w
conv_lst_m2d_39/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Const_4w
conv_lst_m2d_39/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_5?
conv_lst_m2d_39/Mul_4Mulconv_lst_m2d_39/add_6:z:0 conv_lst_m2d_39/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul_4?
conv_lst_m2d_39/Add_7AddV2conv_lst_m2d_39/Mul_4:z:0 conv_lst_m2d_39/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_7?
)conv_lst_m2d_39/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_39/clip_by_value_2/Minimum/y?
'conv_lst_m2d_39/clip_by_value_2/MinimumMinimumconv_lst_m2d_39/Add_7:z:02conv_lst_m2d_39/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_39/clip_by_value_2/Minimum?
!conv_lst_m2d_39/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_39/clip_by_value_2/y?
conv_lst_m2d_39/clip_by_value_2Maximum+conv_lst_m2d_39/clip_by_value_2/Minimum:z:0*conv_lst_m2d_39/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/clip_by_value_2?
conv_lst_m2d_39/Relu_1Reluconv_lst_m2d_39/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Relu_1?
conv_lst_m2d_39/mul_5Mul#conv_lst_m2d_39/clip_by_value_2:z:0$conv_lst_m2d_39/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_5?
-conv_lst_m2d_39/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_39/TensorArrayV2_1/element_shape?
conv_lst_m2d_39/TensorArrayV2_1TensorListReserve6conv_lst_m2d_39/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_39/TensorArrayV2_1n
conv_lst_m2d_39/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_39/time?
(conv_lst_m2d_39/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_39/while/maximum_iterations?
"conv_lst_m2d_39/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_39/while/loop_counter?
conv_lst_m2d_39/whileWhile+conv_lst_m2d_39/while/loop_counter:output:01conv_lst_m2d_39/while/maximum_iterations:output:0conv_lst_m2d_39/time:output:0(conv_lst_m2d_39/TensorArrayV2_1:handle:0$conv_lst_m2d_39/convolution:output:0$conv_lst_m2d_39/convolution:output:0&conv_lst_m2d_39/strided_slice:output:0Gconv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_39_split_readvariableop_resource/conv_lst_m2d_39_split_1_readvariableop_resource/conv_lst_m2d_39_split_2_readvariableop_resource*
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
"conv_lst_m2d_39_while_body_3238298*.
cond&R$
"conv_lst_m2d_39_while_cond_3238297*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_39/while?
@conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_39/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_39/while:output:3Iconv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_39/strided_slice_2/stack?
'conv_lst_m2d_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_39/strided_slice_2/stack_1?
'conv_lst_m2d_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_2/stack_2?
conv_lst_m2d_39/strided_slice_2StridedSlice;conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_39/strided_slice_2/stack:output:00conv_lst_m2d_39/strided_slice_2/stack_1:output:00conv_lst_m2d_39/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_39/strided_slice_2?
 conv_lst_m2d_39/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_39/transpose_1/perm?
conv_lst_m2d_39/transpose_1	Transpose;conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_39/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_39/transpose_1u
flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_29/Const?
flatten_29/ReshapeReshapeconv2d_19/Relu:activations:0flatten_29/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_29/Reshapeu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_28/Const?
flatten_28/ReshapeReshapeconv_lst_m2d_39/transpose_1:y:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_28/Reshape?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMulflatten_28/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_66/BiasAdd?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulflatten_29/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_67/BiasAdd?

add_19/addAddV2dense_66/BiasAdd:output:0dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_19/add?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuladd_19/add:z:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_68/BiasAdds
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_68/Relu?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/BiasAdd|
dense_69/SoftmaxSoftmaxdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_69/Softmaxu
IdentityIdentitydense_69/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp%^conv_lst_m2d_38/split/ReadVariableOp'^conv_lst_m2d_38/split_1/ReadVariableOp'^conv_lst_m2d_38/split_2/ReadVariableOp^conv_lst_m2d_38/while%^conv_lst_m2d_39/split/ReadVariableOp'^conv_lst_m2d_39/split_1/ReadVariableOp'^conv_lst_m2d_39/split_2/ReadVariableOp^conv_lst_m2d_39/while ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2L
$conv_lst_m2d_38/split/ReadVariableOp$conv_lst_m2d_38/split/ReadVariableOp2P
&conv_lst_m2d_38/split_1/ReadVariableOp&conv_lst_m2d_38/split_1/ReadVariableOp2P
&conv_lst_m2d_38/split_2/ReadVariableOp&conv_lst_m2d_38/split_2/ReadVariableOp2.
conv_lst_m2d_38/whileconv_lst_m2d_38/while2L
$conv_lst_m2d_39/split/ReadVariableOp$conv_lst_m2d_39/split/ReadVariableOp2P
&conv_lst_m2d_39/split_1/ReadVariableOp&conv_lst_m2d_39/split_1/ReadVariableOp2P
&conv_lst_m2d_39/split_2/ReadVariableOp&conv_lst_m2d_39/split_2/ReadVariableOp2.
conv_lst_m2d_39/whileconv_lst_m2d_39/while2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp:] Y
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
while_cond_3240022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3240022___redundant_placeholder05
1while_while_cond_3240022___redundant_placeholder15
1while_while_cond_3240022___redundant_placeholder25
1while_while_cond_3240022___redundant_placeholder3
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
"conv_lst_m2d_38_while_body_3238073<
8conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counterB
>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations%
!conv_lst_m2d_38_while_placeholder'
#conv_lst_m2d_38_while_placeholder_1'
#conv_lst_m2d_38_while_placeholder_2'
#conv_lst_m2d_38_while_placeholder_39
5conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice_0w
sconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_38_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_38_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_38_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_38_while_identity$
 conv_lst_m2d_38_while_identity_1$
 conv_lst_m2d_38_while_identity_2$
 conv_lst_m2d_38_while_identity_3$
 conv_lst_m2d_38_while_identity_4$
 conv_lst_m2d_38_while_identity_57
3conv_lst_m2d_38_while_conv_lst_m2d_38_strided_sliceu
qconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_38_while_split_readvariableop_resource:?P
5conv_lst_m2d_38_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_38_while_split_2_readvariableop_resource:	???*conv_lst_m2d_38/while/split/ReadVariableOp?,conv_lst_m2d_38/while/split_1/ReadVariableOp?,conv_lst_m2d_38/while/split_2/ReadVariableOp?
Gconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_38_while_placeholderPconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_38/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_38/while/split/split_dim?
*conv_lst_m2d_38/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_38_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_38/while/split/ReadVariableOp?
conv_lst_m2d_38/while/splitSplit.conv_lst_m2d_38/while/split/split_dim:output:02conv_lst_m2d_38/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_38/while/split?
'conv_lst_m2d_38/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_38/while/split_1/split_dim?
,conv_lst_m2d_38/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_38_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_38/while/split_1/ReadVariableOp?
conv_lst_m2d_38/while/split_1Split0conv_lst_m2d_38/while/split_1/split_dim:output:04conv_lst_m2d_38/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_38/while/split_1?
'conv_lst_m2d_38/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_38/while/split_2/split_dim?
,conv_lst_m2d_38/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_38_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_38/while/split_2/ReadVariableOp?
conv_lst_m2d_38/while/split_2Split0conv_lst_m2d_38/while/split_2/split_dim:output:04conv_lst_m2d_38/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_38/while/split_2?
!conv_lst_m2d_38/while/convolutionConv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_38/while/convolution?
conv_lst_m2d_38/while/BiasAddBiasAdd*conv_lst_m2d_38/while/convolution:output:0&conv_lst_m2d_38/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/BiasAdd?
#conv_lst_m2d_38/while/convolution_1Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_1?
conv_lst_m2d_38/while/BiasAdd_1BiasAdd,conv_lst_m2d_38/while/convolution_1:output:0&conv_lst_m2d_38/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_1?
#conv_lst_m2d_38/while/convolution_2Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_2?
conv_lst_m2d_38/while/BiasAdd_2BiasAdd,conv_lst_m2d_38/while/convolution_2:output:0&conv_lst_m2d_38/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_2?
#conv_lst_m2d_38/while/convolution_3Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_3?
conv_lst_m2d_38/while/BiasAdd_3BiasAdd,conv_lst_m2d_38/while/convolution_3:output:0&conv_lst_m2d_38/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_3?
#conv_lst_m2d_38/while/convolution_4Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_4?
#conv_lst_m2d_38/while/convolution_5Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_5?
#conv_lst_m2d_38/while/convolution_6Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_6?
#conv_lst_m2d_38/while/convolution_7Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_7?
conv_lst_m2d_38/while/addAddV2&conv_lst_m2d_38/while/BiasAdd:output:0,conv_lst_m2d_38/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add
conv_lst_m2d_38/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const?
conv_lst_m2d_38/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_1?
conv_lst_m2d_38/while/MulMulconv_lst_m2d_38/while/add:z:0$conv_lst_m2d_38/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul?
conv_lst_m2d_38/while/Add_1AddV2conv_lst_m2d_38/while/Mul:z:0&conv_lst_m2d_38/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_1?
-conv_lst_m2d_38/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_38/while/clip_by_value/Minimum/y?
+conv_lst_m2d_38/while/clip_by_value/MinimumMinimumconv_lst_m2d_38/while/Add_1:z:06conv_lst_m2d_38/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_38/while/clip_by_value/Minimum?
%conv_lst_m2d_38/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_38/while/clip_by_value/y?
#conv_lst_m2d_38/while/clip_by_valueMaximum/conv_lst_m2d_38/while/clip_by_value/Minimum:z:0.conv_lst_m2d_38/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_38/while/clip_by_value?
conv_lst_m2d_38/while/add_2AddV2(conv_lst_m2d_38/while/BiasAdd_1:output:0,conv_lst_m2d_38/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_2?
conv_lst_m2d_38/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const_2?
conv_lst_m2d_38/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_3?
conv_lst_m2d_38/while/Mul_1Mulconv_lst_m2d_38/while/add_2:z:0&conv_lst_m2d_38/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul_1?
conv_lst_m2d_38/while/Add_3AddV2conv_lst_m2d_38/while/Mul_1:z:0&conv_lst_m2d_38/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_3?
/conv_lst_m2d_38/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_38/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_38/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_38/while/Add_3:z:08conv_lst_m2d_38/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_38/while/clip_by_value_1/Minimum?
'conv_lst_m2d_38/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_38/while/clip_by_value_1/y?
%conv_lst_m2d_38/while/clip_by_value_1Maximum1conv_lst_m2d_38/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_38/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/while/clip_by_value_1?
conv_lst_m2d_38/while/mul_2Mul)conv_lst_m2d_38/while/clip_by_value_1:z:0#conv_lst_m2d_38_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_2?
conv_lst_m2d_38/while/add_4AddV2(conv_lst_m2d_38/while/BiasAdd_2:output:0,conv_lst_m2d_38/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_4?
conv_lst_m2d_38/while/ReluReluconv_lst_m2d_38/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Relu?
conv_lst_m2d_38/while/mul_3Mul'conv_lst_m2d_38/while/clip_by_value:z:0(conv_lst_m2d_38/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_3?
conv_lst_m2d_38/while/add_5AddV2conv_lst_m2d_38/while/mul_2:z:0conv_lst_m2d_38/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_5?
conv_lst_m2d_38/while/add_6AddV2(conv_lst_m2d_38/while/BiasAdd_3:output:0,conv_lst_m2d_38/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_6?
conv_lst_m2d_38/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const_4?
conv_lst_m2d_38/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_5?
conv_lst_m2d_38/while/Mul_4Mulconv_lst_m2d_38/while/add_6:z:0&conv_lst_m2d_38/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul_4?
conv_lst_m2d_38/while/Add_7AddV2conv_lst_m2d_38/while/Mul_4:z:0&conv_lst_m2d_38/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_7?
/conv_lst_m2d_38/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_38/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_38/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_38/while/Add_7:z:08conv_lst_m2d_38/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_38/while/clip_by_value_2/Minimum?
'conv_lst_m2d_38/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_38/while/clip_by_value_2/y?
%conv_lst_m2d_38/while/clip_by_value_2Maximum1conv_lst_m2d_38/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_38/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/while/clip_by_value_2?
conv_lst_m2d_38/while/Relu_1Reluconv_lst_m2d_38/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Relu_1?
conv_lst_m2d_38/while/mul_5Mul)conv_lst_m2d_38/while/clip_by_value_2:z:0*conv_lst_m2d_38/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_5?
:conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_38_while_placeholder_1!conv_lst_m2d_38_while_placeholderconv_lst_m2d_38/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_38/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_38/while/add_8/y?
conv_lst_m2d_38/while/add_8AddV2!conv_lst_m2d_38_while_placeholder&conv_lst_m2d_38/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/add_8?
conv_lst_m2d_38/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_38/while/add_9/y?
conv_lst_m2d_38/while/add_9AddV28conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counter&conv_lst_m2d_38/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/add_9?
conv_lst_m2d_38/while/IdentityIdentityconv_lst_m2d_38/while/add_9:z:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_38/while/Identity?
 conv_lst_m2d_38/while/Identity_1Identity>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_1?
 conv_lst_m2d_38/while/Identity_2Identityconv_lst_m2d_38/while/add_8:z:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_2?
 conv_lst_m2d_38/while/Identity_3IdentityJconv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_3?
 conv_lst_m2d_38/while/Identity_4Identityconv_lst_m2d_38/while/mul_5:z:0^conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_38/while/Identity_4?
 conv_lst_m2d_38/while/Identity_5Identityconv_lst_m2d_38/while/add_5:z:0^conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_38/while/Identity_5?
conv_lst_m2d_38/while/NoOpNoOp+^conv_lst_m2d_38/while/split/ReadVariableOp-^conv_lst_m2d_38/while/split_1/ReadVariableOp-^conv_lst_m2d_38/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_38/while/NoOp"l
3conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice5conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice_0"I
conv_lst_m2d_38_while_identity'conv_lst_m2d_38/while/Identity:output:0"M
 conv_lst_m2d_38_while_identity_1)conv_lst_m2d_38/while/Identity_1:output:0"M
 conv_lst_m2d_38_while_identity_2)conv_lst_m2d_38/while/Identity_2:output:0"M
 conv_lst_m2d_38_while_identity_3)conv_lst_m2d_38/while/Identity_3:output:0"M
 conv_lst_m2d_38_while_identity_4)conv_lst_m2d_38/while/Identity_4:output:0"M
 conv_lst_m2d_38_while_identity_5)conv_lst_m2d_38/while/Identity_5:output:0"p
5conv_lst_m2d_38_while_split_1_readvariableop_resource7conv_lst_m2d_38_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_38_while_split_2_readvariableop_resource7conv_lst_m2d_38_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_38_while_split_readvariableop_resource5conv_lst_m2d_38_while_split_readvariableop_resource_0"?
qconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_38/while/split/ReadVariableOp*conv_lst_m2d_38/while/split/ReadVariableOp2\
,conv_lst_m2d_38/while/split_1/ReadVariableOp,conv_lst_m2d_38/while/split_1/ReadVariableOp2\
,conv_lst_m2d_38/while/split_2/ReadVariableOp,conv_lst_m2d_38/while/split_2/ReadVariableOp: 
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
while_cond_3236060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3236060___redundant_placeholder05
1while_while_cond_3236060___redundant_placeholder15
1while_while_cond_3236060___redundant_placeholder25
1while_while_cond_3236060___redundant_placeholder3
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
?q
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240149
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
while_body_3240023*
condR
while_cond_3240022*[
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
?
?
*__inference_dense_68_layer_call_fn_3240916

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
E__inference_dense_68_layer_call_and_return_conditional_losses_32369272
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
while_body_3240023
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240815

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
while_body_3240689*
condR
while_cond_3240688*[
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
while_cond_3239736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3239736___redundant_placeholder05
1while_while_cond_3239736___redundant_placeholder15
1while_while_cond_3239736___redundant_placeholder25
1while_while_cond_3239736___redundant_placeholder3
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
?:
?
E__inference_model_19_layer_call_and_return_conditional_losses_3236951

inputs
inputs_1+
conv2d_18_3236382:F
conv2d_18_3236384:F2
conv_lst_m2d_38_3236607:?2
conv_lst_m2d_38_3236609:F?&
conv_lst_m2d_38_3236611:	?+
conv2d_19_3236626:FK
conv2d_19_3236628:K2
conv_lst_m2d_39_3236853:F?2
conv_lst_m2d_39_3236855:K?&
conv_lst_m2d_39_3236857:	?#
dense_66_3236887:	?2
dense_66_3236889:2"
dense_67_3236903:K2
dense_67_3236905:2"
dense_68_3236928:22
dense_68_3236930:2"
dense_69_3236945:2
dense_69_3236947:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?'conv_lst_m2d_38/StatefulPartitionedCall?'conv_lst_m2d_39/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_18_3236382conv2d_18_3236384*
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_32363812#
!conv2d_18/StatefulPartitionedCall?
'conv_lst_m2d_38/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_38_3236607conv_lst_m2d_38_3236609conv_lst_m2d_38_3236611*
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32366062)
'conv_lst_m2d_38/StatefulPartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_3236626conv2d_19_3236628*
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_32366252#
!conv2d_19/StatefulPartitionedCall?
'conv_lst_m2d_39/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_38/StatefulPartitionedCall:output:0conv_lst_m2d_39_3236853conv_lst_m2d_39_3236855conv_lst_m2d_39_3236857*
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32368522)
'conv_lst_m2d_39/StatefulPartitionedCall?
flatten_29/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
G__inference_flatten_29_layer_call_and_return_conditional_losses_32368662
flatten_29/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall0conv_lst_m2d_39/StatefulPartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_32368742
flatten_28/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_66_3236887dense_66_3236889*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_32368862"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_67_3236903dense_67_3236905*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_32369022"
 dense_67/StatefulPartitionedCall?
add_19/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0)dense_67/StatefulPartitionedCall:output:0*
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
C__inference_add_19_layer_call_and_return_conditional_losses_32369142
add_19/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCalladd_19/PartitionedCall:output:0dense_68_3236928dense_68_3236930*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_32369272"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_3236945dense_69_3236947*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_32369442"
 dense_69/StatefulPartitionedCall?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall(^conv_lst_m2d_38/StatefulPartitionedCall(^conv_lst_m2d_39/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2R
'conv_lst_m2d_38/StatefulPartitionedCall'conv_lst_m2d_38/StatefulPartitionedCall2R
'conv_lst_m2d_39/StatefulPartitionedCall'conv_lst_m2d_39/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
"conv_lst_m2d_39_while_cond_3238781<
8conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counterB
>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations%
!conv_lst_m2d_39_while_placeholder'
#conv_lst_m2d_39_while_placeholder_1'
#conv_lst_m2d_39_while_placeholder_2'
#conv_lst_m2d_39_while_placeholder_3<
8conv_lst_m2d_39_while_less_conv_lst_m2d_39_strided_sliceU
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238781___redundant_placeholder0U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238781___redundant_placeholder1U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238781___redundant_placeholder2U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238781___redundant_placeholder3"
conv_lst_m2d_39_while_identity
?
conv_lst_m2d_39/while/LessLess!conv_lst_m2d_39_while_placeholder8conv_lst_m2d_39_while_less_conv_lst_m2d_39_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/Less?
conv_lst_m2d_39/while/IdentityIdentityconv_lst_m2d_39/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_39/while/Identity"I
conv_lst_m2d_39_while_identity'conv_lst_m2d_39/while/Identity:output:0*(
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
?
"conv_lst_m2d_38_while_cond_3238072<
8conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counterB
>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations%
!conv_lst_m2d_38_while_placeholder'
#conv_lst_m2d_38_while_placeholder_1'
#conv_lst_m2d_38_while_placeholder_2'
#conv_lst_m2d_38_while_placeholder_3<
8conv_lst_m2d_38_while_less_conv_lst_m2d_38_strided_sliceU
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238072___redundant_placeholder0U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238072___redundant_placeholder1U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238072___redundant_placeholder2U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238072___redundant_placeholder3"
conv_lst_m2d_38_while_identity
?
conv_lst_m2d_38/while/LessLess!conv_lst_m2d_38_while_placeholder8conv_lst_m2d_38_while_less_conv_lst_m2d_38_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/Less?
conv_lst_m2d_38/while/IdentityIdentityconv_lst_m2d_38/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_38/while/Identity"I
conv_lst_m2d_38_while_identity'conv_lst_m2d_38/while/Identity:output:0*(
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
??
?
"__inference__wrapped_model_3235057
conv_lst_m2d_38_input
conv2d_18_inputK
1model_19_conv2d_18_conv2d_readvariableop_resource:F@
2model_19_conv2d_18_biasadd_readvariableop_resource:FQ
6model_19_conv_lst_m2d_38_split_readvariableop_resource:?S
8model_19_conv_lst_m2d_38_split_1_readvariableop_resource:F?G
8model_19_conv_lst_m2d_38_split_2_readvariableop_resource:	?K
1model_19_conv2d_19_conv2d_readvariableop_resource:FK@
2model_19_conv2d_19_biasadd_readvariableop_resource:KQ
6model_19_conv_lst_m2d_39_split_readvariableop_resource:F?S
8model_19_conv_lst_m2d_39_split_1_readvariableop_resource:K?G
8model_19_conv_lst_m2d_39_split_2_readvariableop_resource:	?C
0model_19_dense_66_matmul_readvariableop_resource:	?2?
1model_19_dense_66_biasadd_readvariableop_resource:2B
0model_19_dense_67_matmul_readvariableop_resource:K2?
1model_19_dense_67_biasadd_readvariableop_resource:2B
0model_19_dense_68_matmul_readvariableop_resource:22?
1model_19_dense_68_biasadd_readvariableop_resource:2B
0model_19_dense_69_matmul_readvariableop_resource:2?
1model_19_dense_69_biasadd_readvariableop_resource:
identity??)model_19/conv2d_18/BiasAdd/ReadVariableOp?(model_19/conv2d_18/Conv2D/ReadVariableOp?)model_19/conv2d_19/BiasAdd/ReadVariableOp?(model_19/conv2d_19/Conv2D/ReadVariableOp?-model_19/conv_lst_m2d_38/split/ReadVariableOp?/model_19/conv_lst_m2d_38/split_1/ReadVariableOp?/model_19/conv_lst_m2d_38/split_2/ReadVariableOp?model_19/conv_lst_m2d_38/while?-model_19/conv_lst_m2d_39/split/ReadVariableOp?/model_19/conv_lst_m2d_39/split_1/ReadVariableOp?/model_19/conv_lst_m2d_39/split_2/ReadVariableOp?model_19/conv_lst_m2d_39/while?(model_19/dense_66/BiasAdd/ReadVariableOp?'model_19/dense_66/MatMul/ReadVariableOp?(model_19/dense_67/BiasAdd/ReadVariableOp?'model_19/dense_67/MatMul/ReadVariableOp?(model_19/dense_68/BiasAdd/ReadVariableOp?'model_19/dense_68/MatMul/ReadVariableOp?(model_19/dense_69/BiasAdd/ReadVariableOp?'model_19/dense_69/MatMul/ReadVariableOp?
(model_19/conv2d_18/Conv2D/ReadVariableOpReadVariableOp1model_19_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02*
(model_19/conv2d_18/Conv2D/ReadVariableOp?
model_19/conv2d_18/Conv2DConv2Dconv2d_18_input0model_19/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
model_19/conv2d_18/Conv2D?
)model_19/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp2model_19_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02+
)model_19/conv2d_18/BiasAdd/ReadVariableOp?
model_19/conv2d_18/BiasAddBiasAdd"model_19/conv2d_18/Conv2D:output:01model_19/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
model_19/conv2d_18/BiasAdd?
model_19/conv2d_18/ReluRelu#model_19/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
model_19/conv2d_18/Relu?
#model_19/conv_lst_m2d_38/zeros_like	ZerosLikeconv_lst_m2d_38_input*
T0*3
_output_shapes!
:?????????2%
#model_19/conv_lst_m2d_38/zeros_like?
.model_19/conv_lst_m2d_38/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_19/conv_lst_m2d_38/Sum/reduction_indices?
model_19/conv_lst_m2d_38/SumSum'model_19/conv_lst_m2d_38/zeros_like:y:07model_19/conv_lst_m2d_38/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
model_19/conv_lst_m2d_38/Sum?
model_19/conv_lst_m2d_38/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2 
model_19/conv_lst_m2d_38/zeros?
$model_19/conv_lst_m2d_38/convolutionConv2D%model_19/conv_lst_m2d_38/Sum:output:0'model_19/conv_lst_m2d_38/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2&
$model_19/conv_lst_m2d_38/convolution?
'model_19/conv_lst_m2d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_19/conv_lst_m2d_38/transpose/perm?
"model_19/conv_lst_m2d_38/transpose	Transposeconv_lst_m2d_38_input0model_19/conv_lst_m2d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2$
"model_19/conv_lst_m2d_38/transpose?
model_19/conv_lst_m2d_38/ShapeShape&model_19/conv_lst_m2d_38/transpose:y:0*
T0*
_output_shapes
:2 
model_19/conv_lst_m2d_38/Shape?
,model_19/conv_lst_m2d_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_19/conv_lst_m2d_38/strided_slice/stack?
.model_19/conv_lst_m2d_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_19/conv_lst_m2d_38/strided_slice/stack_1?
.model_19/conv_lst_m2d_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_19/conv_lst_m2d_38/strided_slice/stack_2?
&model_19/conv_lst_m2d_38/strided_sliceStridedSlice'model_19/conv_lst_m2d_38/Shape:output:05model_19/conv_lst_m2d_38/strided_slice/stack:output:07model_19/conv_lst_m2d_38/strided_slice/stack_1:output:07model_19/conv_lst_m2d_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_19/conv_lst_m2d_38/strided_slice?
4model_19/conv_lst_m2d_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_19/conv_lst_m2d_38/TensorArrayV2/element_shape?
&model_19/conv_lst_m2d_38/TensorArrayV2TensorListReserve=model_19/conv_lst_m2d_38/TensorArrayV2/element_shape:output:0/model_19/conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_19/conv_lst_m2d_38/TensorArrayV2?
Nmodel_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2P
Nmodel_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_19/conv_lst_m2d_38/transpose:y:0Wmodel_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor?
.model_19/conv_lst_m2d_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_19/conv_lst_m2d_38/strided_slice_1/stack?
0model_19/conv_lst_m2d_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_38/strided_slice_1/stack_1?
0model_19/conv_lst_m2d_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_38/strided_slice_1/stack_2?
(model_19/conv_lst_m2d_38/strided_slice_1StridedSlice&model_19/conv_lst_m2d_38/transpose:y:07model_19/conv_lst_m2d_38/strided_slice_1/stack:output:09model_19/conv_lst_m2d_38/strided_slice_1/stack_1:output:09model_19/conv_lst_m2d_38/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2*
(model_19/conv_lst_m2d_38/strided_slice_1?
(model_19/conv_lst_m2d_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_19/conv_lst_m2d_38/split/split_dim?
-model_19/conv_lst_m2d_38/split/ReadVariableOpReadVariableOp6model_19_conv_lst_m2d_38_split_readvariableop_resource*'
_output_shapes
:?*
dtype02/
-model_19/conv_lst_m2d_38/split/ReadVariableOp?
model_19/conv_lst_m2d_38/splitSplit1model_19/conv_lst_m2d_38/split/split_dim:output:05model_19/conv_lst_m2d_38/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2 
model_19/conv_lst_m2d_38/split?
*model_19/conv_lst_m2d_38/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_19/conv_lst_m2d_38/split_1/split_dim?
/model_19/conv_lst_m2d_38/split_1/ReadVariableOpReadVariableOp8model_19_conv_lst_m2d_38_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype021
/model_19/conv_lst_m2d_38/split_1/ReadVariableOp?
 model_19/conv_lst_m2d_38/split_1Split3model_19/conv_lst_m2d_38/split_1/split_dim:output:07model_19/conv_lst_m2d_38/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2"
 model_19/conv_lst_m2d_38/split_1?
*model_19/conv_lst_m2d_38/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_19/conv_lst_m2d_38/split_2/split_dim?
/model_19/conv_lst_m2d_38/split_2/ReadVariableOpReadVariableOp8model_19_conv_lst_m2d_38_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_19/conv_lst_m2d_38/split_2/ReadVariableOp?
 model_19/conv_lst_m2d_38/split_2Split3model_19/conv_lst_m2d_38/split_2/split_dim:output:07model_19/conv_lst_m2d_38/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2"
 model_19/conv_lst_m2d_38/split_2?
&model_19/conv_lst_m2d_38/convolution_1Conv2D1model_19/conv_lst_m2d_38/strided_slice_1:output:0'model_19/conv_lst_m2d_38/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_38/convolution_1?
 model_19/conv_lst_m2d_38/BiasAddBiasAdd/model_19/conv_lst_m2d_38/convolution_1:output:0)model_19/conv_lst_m2d_38/split_2:output:0*
T0*/
_output_shapes
:?????????F2"
 model_19/conv_lst_m2d_38/BiasAdd?
&model_19/conv_lst_m2d_38/convolution_2Conv2D1model_19/conv_lst_m2d_38/strided_slice_1:output:0'model_19/conv_lst_m2d_38/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_38/convolution_2?
"model_19/conv_lst_m2d_38/BiasAdd_1BiasAdd/model_19/conv_lst_m2d_38/convolution_2:output:0)model_19/conv_lst_m2d_38/split_2:output:1*
T0*/
_output_shapes
:?????????F2$
"model_19/conv_lst_m2d_38/BiasAdd_1?
&model_19/conv_lst_m2d_38/convolution_3Conv2D1model_19/conv_lst_m2d_38/strided_slice_1:output:0'model_19/conv_lst_m2d_38/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_38/convolution_3?
"model_19/conv_lst_m2d_38/BiasAdd_2BiasAdd/model_19/conv_lst_m2d_38/convolution_3:output:0)model_19/conv_lst_m2d_38/split_2:output:2*
T0*/
_output_shapes
:?????????F2$
"model_19/conv_lst_m2d_38/BiasAdd_2?
&model_19/conv_lst_m2d_38/convolution_4Conv2D1model_19/conv_lst_m2d_38/strided_slice_1:output:0'model_19/conv_lst_m2d_38/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_38/convolution_4?
"model_19/conv_lst_m2d_38/BiasAdd_3BiasAdd/model_19/conv_lst_m2d_38/convolution_4:output:0)model_19/conv_lst_m2d_38/split_2:output:3*
T0*/
_output_shapes
:?????????F2$
"model_19/conv_lst_m2d_38/BiasAdd_3?
&model_19/conv_lst_m2d_38/convolution_5Conv2D-model_19/conv_lst_m2d_38/convolution:output:0)model_19/conv_lst_m2d_38/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_38/convolution_5?
&model_19/conv_lst_m2d_38/convolution_6Conv2D-model_19/conv_lst_m2d_38/convolution:output:0)model_19/conv_lst_m2d_38/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_38/convolution_6?
&model_19/conv_lst_m2d_38/convolution_7Conv2D-model_19/conv_lst_m2d_38/convolution:output:0)model_19/conv_lst_m2d_38/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_38/convolution_7?
&model_19/conv_lst_m2d_38/convolution_8Conv2D-model_19/conv_lst_m2d_38/convolution:output:0)model_19/conv_lst_m2d_38/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_38/convolution_8?
model_19/conv_lst_m2d_38/addAddV2)model_19/conv_lst_m2d_38/BiasAdd:output:0/model_19/conv_lst_m2d_38/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
model_19/conv_lst_m2d_38/add?
model_19/conv_lst_m2d_38/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_19/conv_lst_m2d_38/Const?
 model_19/conv_lst_m2d_38/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_38/Const_1?
model_19/conv_lst_m2d_38/MulMul model_19/conv_lst_m2d_38/add:z:0'model_19/conv_lst_m2d_38/Const:output:0*
T0*/
_output_shapes
:?????????F2
model_19/conv_lst_m2d_38/Mul?
model_19/conv_lst_m2d_38/Add_1AddV2 model_19/conv_lst_m2d_38/Mul:z:0)model_19/conv_lst_m2d_38/Const_1:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/Add_1?
0model_19/conv_lst_m2d_38/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_19/conv_lst_m2d_38/clip_by_value/Minimum/y?
.model_19/conv_lst_m2d_38/clip_by_value/MinimumMinimum"model_19/conv_lst_m2d_38/Add_1:z:09model_19/conv_lst_m2d_38/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_19/conv_lst_m2d_38/clip_by_value/Minimum?
(model_19/conv_lst_m2d_38/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_19/conv_lst_m2d_38/clip_by_value/y?
&model_19/conv_lst_m2d_38/clip_by_valueMaximum2model_19/conv_lst_m2d_38/clip_by_value/Minimum:z:01model_19/conv_lst_m2d_38/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2(
&model_19/conv_lst_m2d_38/clip_by_value?
model_19/conv_lst_m2d_38/add_2AddV2+model_19/conv_lst_m2d_38/BiasAdd_1:output:0/model_19/conv_lst_m2d_38/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/add_2?
 model_19/conv_lst_m2d_38/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_19/conv_lst_m2d_38/Const_2?
 model_19/conv_lst_m2d_38/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_38/Const_3?
model_19/conv_lst_m2d_38/Mul_1Mul"model_19/conv_lst_m2d_38/add_2:z:0)model_19/conv_lst_m2d_38/Const_2:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/Mul_1?
model_19/conv_lst_m2d_38/Add_3AddV2"model_19/conv_lst_m2d_38/Mul_1:z:0)model_19/conv_lst_m2d_38/Const_3:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/Add_3?
2model_19/conv_lst_m2d_38/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_19/conv_lst_m2d_38/clip_by_value_1/Minimum/y?
0model_19/conv_lst_m2d_38/clip_by_value_1/MinimumMinimum"model_19/conv_lst_m2d_38/Add_3:z:0;model_19/conv_lst_m2d_38/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_19/conv_lst_m2d_38/clip_by_value_1/Minimum?
*model_19/conv_lst_m2d_38/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_19/conv_lst_m2d_38/clip_by_value_1/y?
(model_19/conv_lst_m2d_38/clip_by_value_1Maximum4model_19/conv_lst_m2d_38/clip_by_value_1/Minimum:z:03model_19/conv_lst_m2d_38/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_19/conv_lst_m2d_38/clip_by_value_1?
model_19/conv_lst_m2d_38/mul_2Mul,model_19/conv_lst_m2d_38/clip_by_value_1:z:0-model_19/conv_lst_m2d_38/convolution:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/mul_2?
model_19/conv_lst_m2d_38/add_4AddV2+model_19/conv_lst_m2d_38/BiasAdd_2:output:0/model_19/conv_lst_m2d_38/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/add_4?
model_19/conv_lst_m2d_38/ReluRelu"model_19/conv_lst_m2d_38/add_4:z:0*
T0*/
_output_shapes
:?????????F2
model_19/conv_lst_m2d_38/Relu?
model_19/conv_lst_m2d_38/mul_3Mul*model_19/conv_lst_m2d_38/clip_by_value:z:0+model_19/conv_lst_m2d_38/Relu:activations:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/mul_3?
model_19/conv_lst_m2d_38/add_5AddV2"model_19/conv_lst_m2d_38/mul_2:z:0"model_19/conv_lst_m2d_38/mul_3:z:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/add_5?
model_19/conv_lst_m2d_38/add_6AddV2+model_19/conv_lst_m2d_38/BiasAdd_3:output:0/model_19/conv_lst_m2d_38/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/add_6?
 model_19/conv_lst_m2d_38/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_19/conv_lst_m2d_38/Const_4?
 model_19/conv_lst_m2d_38/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_38/Const_5?
model_19/conv_lst_m2d_38/Mul_4Mul"model_19/conv_lst_m2d_38/add_6:z:0)model_19/conv_lst_m2d_38/Const_4:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/Mul_4?
model_19/conv_lst_m2d_38/Add_7AddV2"model_19/conv_lst_m2d_38/Mul_4:z:0)model_19/conv_lst_m2d_38/Const_5:output:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/Add_7?
2model_19/conv_lst_m2d_38/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_19/conv_lst_m2d_38/clip_by_value_2/Minimum/y?
0model_19/conv_lst_m2d_38/clip_by_value_2/MinimumMinimum"model_19/conv_lst_m2d_38/Add_7:z:0;model_19/conv_lst_m2d_38/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F22
0model_19/conv_lst_m2d_38/clip_by_value_2/Minimum?
*model_19/conv_lst_m2d_38/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_19/conv_lst_m2d_38/clip_by_value_2/y?
(model_19/conv_lst_m2d_38/clip_by_value_2Maximum4model_19/conv_lst_m2d_38/clip_by_value_2/Minimum:z:03model_19/conv_lst_m2d_38/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2*
(model_19/conv_lst_m2d_38/clip_by_value_2?
model_19/conv_lst_m2d_38/Relu_1Relu"model_19/conv_lst_m2d_38/add_5:z:0*
T0*/
_output_shapes
:?????????F2!
model_19/conv_lst_m2d_38/Relu_1?
model_19/conv_lst_m2d_38/mul_5Mul,model_19/conv_lst_m2d_38/clip_by_value_2:z:0-model_19/conv_lst_m2d_38/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2 
model_19/conv_lst_m2d_38/mul_5?
6model_19/conv_lst_m2d_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   28
6model_19/conv_lst_m2d_38/TensorArrayV2_1/element_shape?
(model_19/conv_lst_m2d_38/TensorArrayV2_1TensorListReserve?model_19/conv_lst_m2d_38/TensorArrayV2_1/element_shape:output:0/model_19/conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_19/conv_lst_m2d_38/TensorArrayV2_1?
model_19/conv_lst_m2d_38/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_19/conv_lst_m2d_38/time?
1model_19/conv_lst_m2d_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_19/conv_lst_m2d_38/while/maximum_iterations?
+model_19/conv_lst_m2d_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_19/conv_lst_m2d_38/while/loop_counter?	
model_19/conv_lst_m2d_38/whileWhile4model_19/conv_lst_m2d_38/while/loop_counter:output:0:model_19/conv_lst_m2d_38/while/maximum_iterations:output:0&model_19/conv_lst_m2d_38/time:output:01model_19/conv_lst_m2d_38/TensorArrayV2_1:handle:0-model_19/conv_lst_m2d_38/convolution:output:0-model_19/conv_lst_m2d_38/convolution:output:0/model_19/conv_lst_m2d_38/strided_slice:output:0Pmodel_19/conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_19_conv_lst_m2d_38_split_readvariableop_resource8model_19_conv_lst_m2d_38_split_1_readvariableop_resource8model_19_conv_lst_m2d_38_split_2_readvariableop_resource*
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
+model_19_conv_lst_m2d_38_while_body_3234675*7
cond/R-
+model_19_conv_lst_m2d_38_while_cond_3234674*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2 
model_19/conv_lst_m2d_38/while?
Imodel_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2K
Imodel_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape?
;model_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStackTensorListStack'model_19/conv_lst_m2d_38/while:output:3Rmodel_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype02=
;model_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack?
.model_19/conv_lst_m2d_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_19/conv_lst_m2d_38/strided_slice_2/stack?
0model_19/conv_lst_m2d_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_19/conv_lst_m2d_38/strided_slice_2/stack_1?
0model_19/conv_lst_m2d_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_38/strided_slice_2/stack_2?
(model_19/conv_lst_m2d_38/strided_slice_2StridedSliceDmodel_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:07model_19/conv_lst_m2d_38/strided_slice_2/stack:output:09model_19/conv_lst_m2d_38/strided_slice_2/stack_1:output:09model_19/conv_lst_m2d_38/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_19/conv_lst_m2d_38/strided_slice_2?
)model_19/conv_lst_m2d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_19/conv_lst_m2d_38/transpose_1/perm?
$model_19/conv_lst_m2d_38/transpose_1	TransposeDmodel_19/conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:02model_19/conv_lst_m2d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2&
$model_19/conv_lst_m2d_38/transpose_1?
(model_19/conv2d_19/Conv2D/ReadVariableOpReadVariableOp1model_19_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02*
(model_19/conv2d_19/Conv2D/ReadVariableOp?
model_19/conv2d_19/Conv2DConv2D%model_19/conv2d_18/Relu:activations:00model_19/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
model_19/conv2d_19/Conv2D?
)model_19/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp2model_19_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02+
)model_19/conv2d_19/BiasAdd/ReadVariableOp?
model_19/conv2d_19/BiasAddBiasAdd"model_19/conv2d_19/Conv2D:output:01model_19/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
model_19/conv2d_19/BiasAdd?
model_19/conv2d_19/ReluRelu#model_19/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
model_19/conv2d_19/Relu?
#model_19/conv_lst_m2d_39/zeros_like	ZerosLike(model_19/conv_lst_m2d_38/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2%
#model_19/conv_lst_m2d_39/zeros_like?
.model_19/conv_lst_m2d_39/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.model_19/conv_lst_m2d_39/Sum/reduction_indices?
model_19/conv_lst_m2d_39/SumSum'model_19/conv_lst_m2d_39/zeros_like:y:07model_19/conv_lst_m2d_39/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
model_19/conv_lst_m2d_39/Sum?
.model_19/conv_lst_m2d_39/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   20
.model_19/conv_lst_m2d_39/zeros/shape_as_tensor?
$model_19/conv_lst_m2d_39/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_19/conv_lst_m2d_39/zeros/Const?
model_19/conv_lst_m2d_39/zerosFill7model_19/conv_lst_m2d_39/zeros/shape_as_tensor:output:0-model_19/conv_lst_m2d_39/zeros/Const:output:0*
T0*&
_output_shapes
:FK2 
model_19/conv_lst_m2d_39/zeros?
$model_19/conv_lst_m2d_39/convolutionConv2D%model_19/conv_lst_m2d_39/Sum:output:0'model_19/conv_lst_m2d_39/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2&
$model_19/conv_lst_m2d_39/convolution?
'model_19/conv_lst_m2d_39/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2)
'model_19/conv_lst_m2d_39/transpose/perm?
"model_19/conv_lst_m2d_39/transpose	Transpose(model_19/conv_lst_m2d_38/transpose_1:y:00model_19/conv_lst_m2d_39/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2$
"model_19/conv_lst_m2d_39/transpose?
model_19/conv_lst_m2d_39/ShapeShape&model_19/conv_lst_m2d_39/transpose:y:0*
T0*
_output_shapes
:2 
model_19/conv_lst_m2d_39/Shape?
,model_19/conv_lst_m2d_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_19/conv_lst_m2d_39/strided_slice/stack?
.model_19/conv_lst_m2d_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_19/conv_lst_m2d_39/strided_slice/stack_1?
.model_19/conv_lst_m2d_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_19/conv_lst_m2d_39/strided_slice/stack_2?
&model_19/conv_lst_m2d_39/strided_sliceStridedSlice'model_19/conv_lst_m2d_39/Shape:output:05model_19/conv_lst_m2d_39/strided_slice/stack:output:07model_19/conv_lst_m2d_39/strided_slice/stack_1:output:07model_19/conv_lst_m2d_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_19/conv_lst_m2d_39/strided_slice?
4model_19/conv_lst_m2d_39/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_19/conv_lst_m2d_39/TensorArrayV2/element_shape?
&model_19/conv_lst_m2d_39/TensorArrayV2TensorListReserve=model_19/conv_lst_m2d_39/TensorArrayV2/element_shape:output:0/model_19/conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_19/conv_lst_m2d_39/TensorArrayV2?
Nmodel_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2P
Nmodel_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape?
@model_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor&model_19/conv_lst_m2d_39/transpose:y:0Wmodel_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@model_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor?
.model_19/conv_lst_m2d_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_19/conv_lst_m2d_39/strided_slice_1/stack?
0model_19/conv_lst_m2d_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_39/strided_slice_1/stack_1?
0model_19/conv_lst_m2d_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_39/strided_slice_1/stack_2?
(model_19/conv_lst_m2d_39/strided_slice_1StridedSlice&model_19/conv_lst_m2d_39/transpose:y:07model_19/conv_lst_m2d_39/strided_slice_1/stack:output:09model_19/conv_lst_m2d_39/strided_slice_1/stack_1:output:09model_19/conv_lst_m2d_39/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2*
(model_19/conv_lst_m2d_39/strided_slice_1?
(model_19/conv_lst_m2d_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_19/conv_lst_m2d_39/split/split_dim?
-model_19/conv_lst_m2d_39/split/ReadVariableOpReadVariableOp6model_19_conv_lst_m2d_39_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02/
-model_19/conv_lst_m2d_39/split/ReadVariableOp?
model_19/conv_lst_m2d_39/splitSplit1model_19/conv_lst_m2d_39/split/split_dim:output:05model_19/conv_lst_m2d_39/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2 
model_19/conv_lst_m2d_39/split?
*model_19/conv_lst_m2d_39/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_19/conv_lst_m2d_39/split_1/split_dim?
/model_19/conv_lst_m2d_39/split_1/ReadVariableOpReadVariableOp8model_19_conv_lst_m2d_39_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype021
/model_19/conv_lst_m2d_39/split_1/ReadVariableOp?
 model_19/conv_lst_m2d_39/split_1Split3model_19/conv_lst_m2d_39/split_1/split_dim:output:07model_19/conv_lst_m2d_39/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2"
 model_19/conv_lst_m2d_39/split_1?
*model_19/conv_lst_m2d_39/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_19/conv_lst_m2d_39/split_2/split_dim?
/model_19/conv_lst_m2d_39/split_2/ReadVariableOpReadVariableOp8model_19_conv_lst_m2d_39_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_19/conv_lst_m2d_39/split_2/ReadVariableOp?
 model_19/conv_lst_m2d_39/split_2Split3model_19/conv_lst_m2d_39/split_2/split_dim:output:07model_19/conv_lst_m2d_39/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2"
 model_19/conv_lst_m2d_39/split_2?
&model_19/conv_lst_m2d_39/convolution_1Conv2D1model_19/conv_lst_m2d_39/strided_slice_1:output:0'model_19/conv_lst_m2d_39/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_39/convolution_1?
 model_19/conv_lst_m2d_39/BiasAddBiasAdd/model_19/conv_lst_m2d_39/convolution_1:output:0)model_19/conv_lst_m2d_39/split_2:output:0*
T0*/
_output_shapes
:?????????K2"
 model_19/conv_lst_m2d_39/BiasAdd?
&model_19/conv_lst_m2d_39/convolution_2Conv2D1model_19/conv_lst_m2d_39/strided_slice_1:output:0'model_19/conv_lst_m2d_39/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_39/convolution_2?
"model_19/conv_lst_m2d_39/BiasAdd_1BiasAdd/model_19/conv_lst_m2d_39/convolution_2:output:0)model_19/conv_lst_m2d_39/split_2:output:1*
T0*/
_output_shapes
:?????????K2$
"model_19/conv_lst_m2d_39/BiasAdd_1?
&model_19/conv_lst_m2d_39/convolution_3Conv2D1model_19/conv_lst_m2d_39/strided_slice_1:output:0'model_19/conv_lst_m2d_39/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_39/convolution_3?
"model_19/conv_lst_m2d_39/BiasAdd_2BiasAdd/model_19/conv_lst_m2d_39/convolution_3:output:0)model_19/conv_lst_m2d_39/split_2:output:2*
T0*/
_output_shapes
:?????????K2$
"model_19/conv_lst_m2d_39/BiasAdd_2?
&model_19/conv_lst_m2d_39/convolution_4Conv2D1model_19/conv_lst_m2d_39/strided_slice_1:output:0'model_19/conv_lst_m2d_39/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2(
&model_19/conv_lst_m2d_39/convolution_4?
"model_19/conv_lst_m2d_39/BiasAdd_3BiasAdd/model_19/conv_lst_m2d_39/convolution_4:output:0)model_19/conv_lst_m2d_39/split_2:output:3*
T0*/
_output_shapes
:?????????K2$
"model_19/conv_lst_m2d_39/BiasAdd_3?
&model_19/conv_lst_m2d_39/convolution_5Conv2D-model_19/conv_lst_m2d_39/convolution:output:0)model_19/conv_lst_m2d_39/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_39/convolution_5?
&model_19/conv_lst_m2d_39/convolution_6Conv2D-model_19/conv_lst_m2d_39/convolution:output:0)model_19/conv_lst_m2d_39/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_39/convolution_6?
&model_19/conv_lst_m2d_39/convolution_7Conv2D-model_19/conv_lst_m2d_39/convolution:output:0)model_19/conv_lst_m2d_39/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_39/convolution_7?
&model_19/conv_lst_m2d_39/convolution_8Conv2D-model_19/conv_lst_m2d_39/convolution:output:0)model_19/conv_lst_m2d_39/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2(
&model_19/conv_lst_m2d_39/convolution_8?
model_19/conv_lst_m2d_39/addAddV2)model_19/conv_lst_m2d_39/BiasAdd:output:0/model_19/conv_lst_m2d_39/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
model_19/conv_lst_m2d_39/add?
model_19/conv_lst_m2d_39/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model_19/conv_lst_m2d_39/Const?
 model_19/conv_lst_m2d_39/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_39/Const_1?
model_19/conv_lst_m2d_39/MulMul model_19/conv_lst_m2d_39/add:z:0'model_19/conv_lst_m2d_39/Const:output:0*
T0*/
_output_shapes
:?????????K2
model_19/conv_lst_m2d_39/Mul?
model_19/conv_lst_m2d_39/Add_1AddV2 model_19/conv_lst_m2d_39/Mul:z:0)model_19/conv_lst_m2d_39/Const_1:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/Add_1?
0model_19/conv_lst_m2d_39/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model_19/conv_lst_m2d_39/clip_by_value/Minimum/y?
.model_19/conv_lst_m2d_39/clip_by_value/MinimumMinimum"model_19/conv_lst_m2d_39/Add_1:z:09model_19/conv_lst_m2d_39/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_19/conv_lst_m2d_39/clip_by_value/Minimum?
(model_19/conv_lst_m2d_39/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_19/conv_lst_m2d_39/clip_by_value/y?
&model_19/conv_lst_m2d_39/clip_by_valueMaximum2model_19/conv_lst_m2d_39/clip_by_value/Minimum:z:01model_19/conv_lst_m2d_39/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2(
&model_19/conv_lst_m2d_39/clip_by_value?
model_19/conv_lst_m2d_39/add_2AddV2+model_19/conv_lst_m2d_39/BiasAdd_1:output:0/model_19/conv_lst_m2d_39/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/add_2?
 model_19/conv_lst_m2d_39/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_19/conv_lst_m2d_39/Const_2?
 model_19/conv_lst_m2d_39/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_39/Const_3?
model_19/conv_lst_m2d_39/Mul_1Mul"model_19/conv_lst_m2d_39/add_2:z:0)model_19/conv_lst_m2d_39/Const_2:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/Mul_1?
model_19/conv_lst_m2d_39/Add_3AddV2"model_19/conv_lst_m2d_39/Mul_1:z:0)model_19/conv_lst_m2d_39/Const_3:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/Add_3?
2model_19/conv_lst_m2d_39/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_19/conv_lst_m2d_39/clip_by_value_1/Minimum/y?
0model_19/conv_lst_m2d_39/clip_by_value_1/MinimumMinimum"model_19/conv_lst_m2d_39/Add_3:z:0;model_19/conv_lst_m2d_39/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_19/conv_lst_m2d_39/clip_by_value_1/Minimum?
*model_19/conv_lst_m2d_39/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_19/conv_lst_m2d_39/clip_by_value_1/y?
(model_19/conv_lst_m2d_39/clip_by_value_1Maximum4model_19/conv_lst_m2d_39/clip_by_value_1/Minimum:z:03model_19/conv_lst_m2d_39/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_19/conv_lst_m2d_39/clip_by_value_1?
model_19/conv_lst_m2d_39/mul_2Mul,model_19/conv_lst_m2d_39/clip_by_value_1:z:0-model_19/conv_lst_m2d_39/convolution:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/mul_2?
model_19/conv_lst_m2d_39/add_4AddV2+model_19/conv_lst_m2d_39/BiasAdd_2:output:0/model_19/conv_lst_m2d_39/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/add_4?
model_19/conv_lst_m2d_39/ReluRelu"model_19/conv_lst_m2d_39/add_4:z:0*
T0*/
_output_shapes
:?????????K2
model_19/conv_lst_m2d_39/Relu?
model_19/conv_lst_m2d_39/mul_3Mul*model_19/conv_lst_m2d_39/clip_by_value:z:0+model_19/conv_lst_m2d_39/Relu:activations:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/mul_3?
model_19/conv_lst_m2d_39/add_5AddV2"model_19/conv_lst_m2d_39/mul_2:z:0"model_19/conv_lst_m2d_39/mul_3:z:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/add_5?
model_19/conv_lst_m2d_39/add_6AddV2+model_19/conv_lst_m2d_39/BiasAdd_3:output:0/model_19/conv_lst_m2d_39/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/add_6?
 model_19/conv_lst_m2d_39/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model_19/conv_lst_m2d_39/Const_4?
 model_19/conv_lst_m2d_39/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_19/conv_lst_m2d_39/Const_5?
model_19/conv_lst_m2d_39/Mul_4Mul"model_19/conv_lst_m2d_39/add_6:z:0)model_19/conv_lst_m2d_39/Const_4:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/Mul_4?
model_19/conv_lst_m2d_39/Add_7AddV2"model_19/conv_lst_m2d_39/Mul_4:z:0)model_19/conv_lst_m2d_39/Const_5:output:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/Add_7?
2model_19/conv_lst_m2d_39/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model_19/conv_lst_m2d_39/clip_by_value_2/Minimum/y?
0model_19/conv_lst_m2d_39/clip_by_value_2/MinimumMinimum"model_19/conv_lst_m2d_39/Add_7:z:0;model_19/conv_lst_m2d_39/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K22
0model_19/conv_lst_m2d_39/clip_by_value_2/Minimum?
*model_19/conv_lst_m2d_39/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model_19/conv_lst_m2d_39/clip_by_value_2/y?
(model_19/conv_lst_m2d_39/clip_by_value_2Maximum4model_19/conv_lst_m2d_39/clip_by_value_2/Minimum:z:03model_19/conv_lst_m2d_39/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2*
(model_19/conv_lst_m2d_39/clip_by_value_2?
model_19/conv_lst_m2d_39/Relu_1Relu"model_19/conv_lst_m2d_39/add_5:z:0*
T0*/
_output_shapes
:?????????K2!
model_19/conv_lst_m2d_39/Relu_1?
model_19/conv_lst_m2d_39/mul_5Mul,model_19/conv_lst_m2d_39/clip_by_value_2:z:0-model_19/conv_lst_m2d_39/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2 
model_19/conv_lst_m2d_39/mul_5?
6model_19/conv_lst_m2d_39/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   28
6model_19/conv_lst_m2d_39/TensorArrayV2_1/element_shape?
(model_19/conv_lst_m2d_39/TensorArrayV2_1TensorListReserve?model_19/conv_lst_m2d_39/TensorArrayV2_1/element_shape:output:0/model_19/conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(model_19/conv_lst_m2d_39/TensorArrayV2_1?
model_19/conv_lst_m2d_39/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_19/conv_lst_m2d_39/time?
1model_19/conv_lst_m2d_39/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1model_19/conv_lst_m2d_39/while/maximum_iterations?
+model_19/conv_lst_m2d_39/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_19/conv_lst_m2d_39/while/loop_counter?	
model_19/conv_lst_m2d_39/whileWhile4model_19/conv_lst_m2d_39/while/loop_counter:output:0:model_19/conv_lst_m2d_39/while/maximum_iterations:output:0&model_19/conv_lst_m2d_39/time:output:01model_19/conv_lst_m2d_39/TensorArrayV2_1:handle:0-model_19/conv_lst_m2d_39/convolution:output:0-model_19/conv_lst_m2d_39/convolution:output:0/model_19/conv_lst_m2d_39/strided_slice:output:0Pmodel_19/conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor:output_handle:06model_19_conv_lst_m2d_39_split_readvariableop_resource8model_19_conv_lst_m2d_39_split_1_readvariableop_resource8model_19_conv_lst_m2d_39_split_2_readvariableop_resource*
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
+model_19_conv_lst_m2d_39_while_body_3234900*7
cond/R-
+model_19_conv_lst_m2d_39_while_cond_3234899*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2 
model_19/conv_lst_m2d_39/while?
Imodel_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2K
Imodel_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape?
;model_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStackTensorListStack'model_19/conv_lst_m2d_39/while:output:3Rmodel_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype02=
;model_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack?
.model_19/conv_lst_m2d_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????20
.model_19/conv_lst_m2d_39/strided_slice_2/stack?
0model_19/conv_lst_m2d_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0model_19/conv_lst_m2d_39/strided_slice_2/stack_1?
0model_19/conv_lst_m2d_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_19/conv_lst_m2d_39/strided_slice_2/stack_2?
(model_19/conv_lst_m2d_39/strided_slice_2StridedSliceDmodel_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:07model_19/conv_lst_m2d_39/strided_slice_2/stack:output:09model_19/conv_lst_m2d_39/strided_slice_2/stack_1:output:09model_19/conv_lst_m2d_39/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2*
(model_19/conv_lst_m2d_39/strided_slice_2?
)model_19/conv_lst_m2d_39/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2+
)model_19/conv_lst_m2d_39/transpose_1/perm?
$model_19/conv_lst_m2d_39/transpose_1	TransposeDmodel_19/conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:02model_19/conv_lst_m2d_39/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2&
$model_19/conv_lst_m2d_39/transpose_1?
model_19/flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
model_19/flatten_29/Const?
model_19/flatten_29/ReshapeReshape%model_19/conv2d_19/Relu:activations:0"model_19/flatten_29/Const:output:0*
T0*'
_output_shapes
:?????????K2
model_19/flatten_29/Reshape?
model_19/flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
model_19/flatten_28/Const?
model_19/flatten_28/ReshapeReshape(model_19/conv_lst_m2d_39/transpose_1:y:0"model_19/flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????2
model_19/flatten_28/Reshape?
'model_19/dense_66/MatMul/ReadVariableOpReadVariableOp0model_19_dense_66_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02)
'model_19/dense_66/MatMul/ReadVariableOp?
model_19/dense_66/MatMulMatMul$model_19/flatten_28/Reshape:output:0/model_19/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_66/MatMul?
(model_19/dense_66/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_66_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_19/dense_66/BiasAdd/ReadVariableOp?
model_19/dense_66/BiasAddBiasAdd"model_19/dense_66/MatMul:product:00model_19/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_66/BiasAdd?
'model_19/dense_67/MatMul/ReadVariableOpReadVariableOp0model_19_dense_67_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02)
'model_19/dense_67/MatMul/ReadVariableOp?
model_19/dense_67/MatMulMatMul$model_19/flatten_29/Reshape:output:0/model_19/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_67/MatMul?
(model_19/dense_67/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_67_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_19/dense_67/BiasAdd/ReadVariableOp?
model_19/dense_67/BiasAddBiasAdd"model_19/dense_67/MatMul:product:00model_19/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_67/BiasAdd?
model_19/add_19/addAddV2"model_19/dense_66/BiasAdd:output:0"model_19/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_19/add_19/add?
'model_19/dense_68/MatMul/ReadVariableOpReadVariableOp0model_19_dense_68_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02)
'model_19/dense_68/MatMul/ReadVariableOp?
model_19/dense_68/MatMulMatMulmodel_19/add_19/add:z:0/model_19/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_68/MatMul?
(model_19/dense_68/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_68_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_19/dense_68/BiasAdd/ReadVariableOp?
model_19/dense_68/BiasAddBiasAdd"model_19/dense_68/MatMul:product:00model_19/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_19/dense_68/BiasAdd?
model_19/dense_68/ReluRelu"model_19/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_19/dense_68/Relu?
'model_19/dense_69/MatMul/ReadVariableOpReadVariableOp0model_19_dense_69_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02)
'model_19/dense_69/MatMul/ReadVariableOp?
model_19/dense_69/MatMulMatMul$model_19/dense_68/Relu:activations:0/model_19/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_19/dense_69/MatMul?
(model_19/dense_69/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_19/dense_69/BiasAdd/ReadVariableOp?
model_19/dense_69/BiasAddBiasAdd"model_19/dense_69/MatMul:product:00model_19/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_19/dense_69/BiasAdd?
model_19/dense_69/SoftmaxSoftmax"model_19/dense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_19/dense_69/Softmax~
IdentityIdentity#model_19/dense_69/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp*^model_19/conv2d_18/BiasAdd/ReadVariableOp)^model_19/conv2d_18/Conv2D/ReadVariableOp*^model_19/conv2d_19/BiasAdd/ReadVariableOp)^model_19/conv2d_19/Conv2D/ReadVariableOp.^model_19/conv_lst_m2d_38/split/ReadVariableOp0^model_19/conv_lst_m2d_38/split_1/ReadVariableOp0^model_19/conv_lst_m2d_38/split_2/ReadVariableOp^model_19/conv_lst_m2d_38/while.^model_19/conv_lst_m2d_39/split/ReadVariableOp0^model_19/conv_lst_m2d_39/split_1/ReadVariableOp0^model_19/conv_lst_m2d_39/split_2/ReadVariableOp^model_19/conv_lst_m2d_39/while)^model_19/dense_66/BiasAdd/ReadVariableOp(^model_19/dense_66/MatMul/ReadVariableOp)^model_19/dense_67/BiasAdd/ReadVariableOp(^model_19/dense_67/MatMul/ReadVariableOp)^model_19/dense_68/BiasAdd/ReadVariableOp(^model_19/dense_68/MatMul/ReadVariableOp)^model_19/dense_69/BiasAdd/ReadVariableOp(^model_19/dense_69/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2V
)model_19/conv2d_18/BiasAdd/ReadVariableOp)model_19/conv2d_18/BiasAdd/ReadVariableOp2T
(model_19/conv2d_18/Conv2D/ReadVariableOp(model_19/conv2d_18/Conv2D/ReadVariableOp2V
)model_19/conv2d_19/BiasAdd/ReadVariableOp)model_19/conv2d_19/BiasAdd/ReadVariableOp2T
(model_19/conv2d_19/Conv2D/ReadVariableOp(model_19/conv2d_19/Conv2D/ReadVariableOp2^
-model_19/conv_lst_m2d_38/split/ReadVariableOp-model_19/conv_lst_m2d_38/split/ReadVariableOp2b
/model_19/conv_lst_m2d_38/split_1/ReadVariableOp/model_19/conv_lst_m2d_38/split_1/ReadVariableOp2b
/model_19/conv_lst_m2d_38/split_2/ReadVariableOp/model_19/conv_lst_m2d_38/split_2/ReadVariableOp2@
model_19/conv_lst_m2d_38/whilemodel_19/conv_lst_m2d_38/while2^
-model_19/conv_lst_m2d_39/split/ReadVariableOp-model_19/conv_lst_m2d_39/split/ReadVariableOp2b
/model_19/conv_lst_m2d_39/split_1/ReadVariableOp/model_19/conv_lst_m2d_39/split_1/ReadVariableOp2b
/model_19/conv_lst_m2d_39/split_2/ReadVariableOp/model_19/conv_lst_m2d_39/split_2/ReadVariableOp2@
model_19/conv_lst_m2d_39/whilemodel_19/conv_lst_m2d_39/while2T
(model_19/dense_66/BiasAdd/ReadVariableOp(model_19/dense_66/BiasAdd/ReadVariableOp2R
'model_19/dense_66/MatMul/ReadVariableOp'model_19/dense_66/MatMul/ReadVariableOp2T
(model_19/dense_67/BiasAdd/ReadVariableOp(model_19/dense_67/BiasAdd/ReadVariableOp2R
'model_19/dense_67/MatMul/ReadVariableOp'model_19/dense_67/MatMul/ReadVariableOp2T
(model_19/dense_68/BiasAdd/ReadVariableOp(model_19/dense_68/BiasAdd/ReadVariableOp2R
'model_19/dense_68/MatMul/ReadVariableOp'model_19/dense_68/MatMul/ReadVariableOp2T
(model_19/dense_69/BiasAdd/ReadVariableOp(model_19/dense_69/BiasAdd/ReadVariableOp2R
'model_19/dense_69/MatMul/ReadVariableOp'model_19/dense_69/MatMul/ReadVariableOp:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_38_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_18_input
?:
?
E__inference_model_19_layer_call_and_return_conditional_losses_3237652

inputs
inputs_1+
conv2d_18_3237604:F
conv2d_18_3237606:F2
conv_lst_m2d_38_3237609:?2
conv_lst_m2d_38_3237611:F?&
conv_lst_m2d_38_3237613:	?+
conv2d_19_3237616:FK
conv2d_19_3237618:K2
conv_lst_m2d_39_3237621:F?2
conv_lst_m2d_39_3237623:K?&
conv_lst_m2d_39_3237625:	?#
dense_66_3237630:	?2
dense_66_3237632:2"
dense_67_3237635:K2
dense_67_3237637:2"
dense_68_3237641:22
dense_68_3237643:2"
dense_69_3237646:2
dense_69_3237648:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?'conv_lst_m2d_38/StatefulPartitionedCall?'conv_lst_m2d_39/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_18_3237604conv2d_18_3237606*
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_32363812#
!conv2d_18/StatefulPartitionedCall?
'conv_lst_m2d_38/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lst_m2d_38_3237609conv_lst_m2d_38_3237611conv_lst_m2d_38_3237613*
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32375362)
'conv_lst_m2d_38/StatefulPartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_3237616conv2d_19_3237618*
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_32366252#
!conv2d_19/StatefulPartitionedCall?
'conv_lst_m2d_39/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_38/StatefulPartitionedCall:output:0conv_lst_m2d_39_3237621conv_lst_m2d_39_3237623conv_lst_m2d_39_3237625*
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32372842)
'conv_lst_m2d_39/StatefulPartitionedCall?
flatten_29/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
G__inference_flatten_29_layer_call_and_return_conditional_losses_32368662
flatten_29/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall0conv_lst_m2d_39/StatefulPartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_32368742
flatten_28/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_66_3237630dense_66_3237632*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_32368862"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_67_3237635dense_67_3237637*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_32369022"
 dense_67/StatefulPartitionedCall?
add_19/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0)dense_67/StatefulPartitionedCall:output:0*
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
C__inference_add_19_layer_call_and_return_conditional_losses_32369142
add_19/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCalladd_19/PartitionedCall:output:0dense_68_3237641dense_68_3237643*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_32369272"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_3237646dense_69_3237648*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_32369442"
 dense_69/StatefulPartitionedCall?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall(^conv_lst_m2d_38/StatefulPartitionedCall(^conv_lst_m2d_39/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2R
'conv_lst_m2d_38/StatefulPartitionedCall'conv_lst_m2d_38/StatefulPartitionedCall2R
'conv_lst_m2d_39/StatefulPartitionedCall'conv_lst_m2d_39/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_29_layer_call_and_return_conditional_losses_3236866

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
while_cond_3235408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3235408___redundant_placeholder05
1while_while_cond_3235408___redundant_placeholder15
1while_while_cond_3235408___redundant_placeholder25
1while_while_cond_3235408___redundant_placeholder3
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
?7
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3235477

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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32353472
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
while_body_3235409*
condR
while_cond_3235408*[
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
??
?
 __inference__traced_save_3241528
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_conv_lst_m2d_38_kernel_read_readvariableop?
;savev2_conv_lst_m2d_38_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_38_bias_read_readvariableop5
1savev2_conv_lst_m2d_39_kernel_read_readvariableop?
;savev2_conv_lst_m2d_39_recurrent_kernel_read_readvariableop3
/savev2_conv_lst_m2d_39_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop5
1savev2_adam_dense_66_kernel_m_read_readvariableop3
/savev2_adam_dense_66_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableop5
1savev2_adam_dense_69_kernel_m_read_readvariableop3
/savev2_adam_dense_69_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_38_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_38_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_38_bias_m_read_readvariableop<
8savev2_adam_conv_lst_m2d_39_kernel_m_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_39_recurrent_kernel_m_read_readvariableop:
6savev2_adam_conv_lst_m2d_39_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop5
1savev2_adam_dense_66_kernel_v_read_readvariableop3
/savev2_adam_dense_66_bias_v_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableop5
1savev2_adam_dense_69_kernel_v_read_readvariableop3
/savev2_adam_dense_69_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_38_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_38_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_38_bias_v_read_readvariableop<
8savev2_adam_conv_lst_m2d_39_kernel_v_read_readvariableopF
Bsavev2_adam_conv_lst_m2d_39_recurrent_kernel_v_read_readvariableop:
6savev2_adam_conv_lst_m2d_39_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_conv_lst_m2d_38_kernel_read_readvariableop;savev2_conv_lst_m2d_38_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_38_bias_read_readvariableop1savev2_conv_lst_m2d_39_kernel_read_readvariableop;savev2_conv_lst_m2d_39_recurrent_kernel_read_readvariableop/savev2_conv_lst_m2d_39_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop1savev2_adam_dense_66_kernel_m_read_readvariableop/savev2_adam_dense_66_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop1savev2_adam_dense_69_kernel_m_read_readvariableop/savev2_adam_dense_69_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_38_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_38_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_38_bias_m_read_readvariableop8savev2_adam_conv_lst_m2d_39_kernel_m_read_readvariableopBsavev2_adam_conv_lst_m2d_39_recurrent_kernel_m_read_readvariableop6savev2_adam_conv_lst_m2d_39_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop1savev2_adam_dense_66_kernel_v_read_readvariableop/savev2_adam_dense_66_bias_v_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableop1savev2_adam_dense_69_kernel_v_read_readvariableop/savev2_adam_dense_69_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_38_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_38_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_38_bias_v_read_readvariableop8savev2_adam_conv_lst_m2d_39_kernel_v_read_readvariableopBsavev2_adam_conv_lst_m2d_39_recurrent_kernel_v_read_readvariableop6savev2_adam_conv_lst_m2d_39_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3235809

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
?e
?
while_body_3236480
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
??
?
E__inference_model_19_layer_call_and_return_conditional_losses_3238939
inputs_0
inputs_1B
(conv2d_18_conv2d_readvariableop_resource:F7
)conv2d_18_biasadd_readvariableop_resource:FH
-conv_lst_m2d_38_split_readvariableop_resource:?J
/conv_lst_m2d_38_split_1_readvariableop_resource:F?>
/conv_lst_m2d_38_split_2_readvariableop_resource:	?B
(conv2d_19_conv2d_readvariableop_resource:FK7
)conv2d_19_biasadd_readvariableop_resource:KH
-conv_lst_m2d_39_split_readvariableop_resource:F?J
/conv_lst_m2d_39_split_1_readvariableop_resource:K?>
/conv_lst_m2d_39_split_2_readvariableop_resource:	?:
'dense_66_matmul_readvariableop_resource:	?26
(dense_66_biasadd_readvariableop_resource:29
'dense_67_matmul_readvariableop_resource:K26
(dense_67_biasadd_readvariableop_resource:29
'dense_68_matmul_readvariableop_resource:226
(dense_68_biasadd_readvariableop_resource:29
'dense_69_matmul_readvariableop_resource:26
(dense_69_biasadd_readvariableop_resource:
identity?? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?$conv_lst_m2d_38/split/ReadVariableOp?&conv_lst_m2d_38/split_1/ReadVariableOp?&conv_lst_m2d_38/split_2/ReadVariableOp?conv_lst_m2d_38/while?$conv_lst_m2d_39/split/ReadVariableOp?&conv_lst_m2d_39/split_1/ReadVariableOp?&conv_lst_m2d_39/split_2/ReadVariableOp?conv_lst_m2d_39/while?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Dinputs_1'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F2
conv2d_18/Relu?
conv_lst_m2d_38/zeros_like	ZerosLikeinputs_0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_38/zeros_like?
%conv_lst_m2d_38/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_38/Sum/reduction_indices?
conv_lst_m2d_38/SumSumconv_lst_m2d_38/zeros_like:y:0.conv_lst_m2d_38/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????2
conv_lst_m2d_38/Sum?
conv_lst_m2d_38/zerosConst*&
_output_shapes
:F*
dtype0*%
valueBF*    2
conv_lst_m2d_38/zeros?
conv_lst_m2d_38/convolutionConv2Dconv_lst_m2d_38/Sum:output:0conv_lst_m2d_38/zeros:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution?
conv_lst_m2d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_38/transpose/perm?
conv_lst_m2d_38/transpose	Transposeinputs_0'conv_lst_m2d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????2
conv_lst_m2d_38/transpose{
conv_lst_m2d_38/ShapeShapeconv_lst_m2d_38/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_38/Shape?
#conv_lst_m2d_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_38/strided_slice/stack?
%conv_lst_m2d_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_38/strided_slice/stack_1?
%conv_lst_m2d_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_38/strided_slice/stack_2?
conv_lst_m2d_38/strided_sliceStridedSliceconv_lst_m2d_38/Shape:output:0,conv_lst_m2d_38/strided_slice/stack:output:0.conv_lst_m2d_38/strided_slice/stack_1:output:0.conv_lst_m2d_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_38/strided_slice?
+conv_lst_m2d_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_38/TensorArrayV2/element_shape?
conv_lst_m2d_38/TensorArrayV2TensorListReserve4conv_lst_m2d_38/TensorArrayV2/element_shape:output:0&conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_38/TensorArrayV2?
Econv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2G
Econv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_38/transpose:y:0Nconv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_38/strided_slice_1/stack?
'conv_lst_m2d_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_1/stack_1?
'conv_lst_m2d_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_1/stack_2?
conv_lst_m2d_38/strided_slice_1StridedSliceconv_lst_m2d_38/transpose:y:0.conv_lst_m2d_38/strided_slice_1/stack:output:00conv_lst_m2d_38/strided_slice_1/stack_1:output:00conv_lst_m2d_38/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*
shrink_axis_mask2!
conv_lst_m2d_38/strided_slice_1?
conv_lst_m2d_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_38/split/split_dim?
$conv_lst_m2d_38/split/ReadVariableOpReadVariableOp-conv_lst_m2d_38_split_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$conv_lst_m2d_38/split/ReadVariableOp?
conv_lst_m2d_38/splitSplit(conv_lst_m2d_38/split/split_dim:output:0,conv_lst_m2d_38/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_38/split?
!conv_lst_m2d_38/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_38/split_1/split_dim?
&conv_lst_m2d_38/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_38_split_1_readvariableop_resource*'
_output_shapes
:F?*
dtype02(
&conv_lst_m2d_38/split_1/ReadVariableOp?
conv_lst_m2d_38/split_1Split*conv_lst_m2d_38/split_1/split_dim:output:0.conv_lst_m2d_38/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_38/split_1?
!conv_lst_m2d_38/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_38/split_2/split_dim?
&conv_lst_m2d_38/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_38_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_38/split_2/ReadVariableOp?
conv_lst_m2d_38/split_2Split*conv_lst_m2d_38/split_2/split_dim:output:0.conv_lst_m2d_38/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_38/split_2?
conv_lst_m2d_38/convolution_1Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_1?
conv_lst_m2d_38/BiasAddBiasAdd&conv_lst_m2d_38/convolution_1:output:0 conv_lst_m2d_38/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd?
conv_lst_m2d_38/convolution_2Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_2?
conv_lst_m2d_38/BiasAdd_1BiasAdd&conv_lst_m2d_38/convolution_2:output:0 conv_lst_m2d_38/split_2:output:1*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_1?
conv_lst_m2d_38/convolution_3Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_3?
conv_lst_m2d_38/BiasAdd_2BiasAdd&conv_lst_m2d_38/convolution_3:output:0 conv_lst_m2d_38/split_2:output:2*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_2?
conv_lst_m2d_38/convolution_4Conv2D(conv_lst_m2d_38/strided_slice_1:output:0conv_lst_m2d_38/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2
conv_lst_m2d_38/convolution_4?
conv_lst_m2d_38/BiasAdd_3BiasAdd&conv_lst_m2d_38/convolution_4:output:0 conv_lst_m2d_38/split_2:output:3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/BiasAdd_3?
conv_lst_m2d_38/convolution_5Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_5?
conv_lst_m2d_38/convolution_6Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_6?
conv_lst_m2d_38/convolution_7Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_7?
conv_lst_m2d_38/convolution_8Conv2D$conv_lst_m2d_38/convolution:output:0 conv_lst_m2d_38/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2
conv_lst_m2d_38/convolution_8?
conv_lst_m2d_38/addAddV2 conv_lst_m2d_38/BiasAdd:output:0&conv_lst_m2d_38/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/adds
conv_lst_m2d_38/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Constw
conv_lst_m2d_38/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_1?
conv_lst_m2d_38/MulMulconv_lst_m2d_38/add:z:0conv_lst_m2d_38/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul?
conv_lst_m2d_38/Add_1AddV2conv_lst_m2d_38/Mul:z:0 conv_lst_m2d_38/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_1?
'conv_lst_m2d_38/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_38/clip_by_value/Minimum/y?
%conv_lst_m2d_38/clip_by_value/MinimumMinimumconv_lst_m2d_38/Add_1:z:00conv_lst_m2d_38/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/clip_by_value/Minimum?
conv_lst_m2d_38/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_38/clip_by_value/y?
conv_lst_m2d_38/clip_by_valueMaximum)conv_lst_m2d_38/clip_by_value/Minimum:z:0(conv_lst_m2d_38/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/clip_by_value?
conv_lst_m2d_38/add_2AddV2"conv_lst_m2d_38/BiasAdd_1:output:0&conv_lst_m2d_38/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_2w
conv_lst_m2d_38/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Const_2w
conv_lst_m2d_38/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_3?
conv_lst_m2d_38/Mul_1Mulconv_lst_m2d_38/add_2:z:0 conv_lst_m2d_38/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul_1?
conv_lst_m2d_38/Add_3AddV2conv_lst_m2d_38/Mul_1:z:0 conv_lst_m2d_38/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_3?
)conv_lst_m2d_38/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_38/clip_by_value_1/Minimum/y?
'conv_lst_m2d_38/clip_by_value_1/MinimumMinimumconv_lst_m2d_38/Add_3:z:02conv_lst_m2d_38/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_38/clip_by_value_1/Minimum?
!conv_lst_m2d_38/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_38/clip_by_value_1/y?
conv_lst_m2d_38/clip_by_value_1Maximum+conv_lst_m2d_38/clip_by_value_1/Minimum:z:0*conv_lst_m2d_38/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/clip_by_value_1?
conv_lst_m2d_38/mul_2Mul#conv_lst_m2d_38/clip_by_value_1:z:0$conv_lst_m2d_38/convolution:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_2?
conv_lst_m2d_38/add_4AddV2"conv_lst_m2d_38/BiasAdd_2:output:0&conv_lst_m2d_38/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_4?
conv_lst_m2d_38/ReluReluconv_lst_m2d_38/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Relu?
conv_lst_m2d_38/mul_3Mul!conv_lst_m2d_38/clip_by_value:z:0"conv_lst_m2d_38/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_3?
conv_lst_m2d_38/add_5AddV2conv_lst_m2d_38/mul_2:z:0conv_lst_m2d_38/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_5?
conv_lst_m2d_38/add_6AddV2"conv_lst_m2d_38/BiasAdd_3:output:0&conv_lst_m2d_38/convolution_8:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/add_6w
conv_lst_m2d_38/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/Const_4w
conv_lst_m2d_38/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/Const_5?
conv_lst_m2d_38/Mul_4Mulconv_lst_m2d_38/add_6:z:0 conv_lst_m2d_38/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Mul_4?
conv_lst_m2d_38/Add_7AddV2conv_lst_m2d_38/Mul_4:z:0 conv_lst_m2d_38/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Add_7?
)conv_lst_m2d_38/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_38/clip_by_value_2/Minimum/y?
'conv_lst_m2d_38/clip_by_value_2/MinimumMinimumconv_lst_m2d_38/Add_7:z:02conv_lst_m2d_38/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2)
'conv_lst_m2d_38/clip_by_value_2/Minimum?
!conv_lst_m2d_38/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_38/clip_by_value_2/y?
conv_lst_m2d_38/clip_by_value_2Maximum+conv_lst_m2d_38/clip_by_value_2/Minimum:z:0*conv_lst_m2d_38/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/clip_by_value_2?
conv_lst_m2d_38/Relu_1Reluconv_lst_m2d_38/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/Relu_1?
conv_lst_m2d_38/mul_5Mul#conv_lst_m2d_38/clip_by_value_2:z:0$conv_lst_m2d_38/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/mul_5?
-conv_lst_m2d_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2/
-conv_lst_m2d_38/TensorArrayV2_1/element_shape?
conv_lst_m2d_38/TensorArrayV2_1TensorListReserve6conv_lst_m2d_38/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_38/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_38/TensorArrayV2_1n
conv_lst_m2d_38/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_38/time?
(conv_lst_m2d_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_38/while/maximum_iterations?
"conv_lst_m2d_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_38/while/loop_counter?
conv_lst_m2d_38/whileWhile+conv_lst_m2d_38/while/loop_counter:output:01conv_lst_m2d_38/while/maximum_iterations:output:0conv_lst_m2d_38/time:output:0(conv_lst_m2d_38/TensorArrayV2_1:handle:0$conv_lst_m2d_38/convolution:output:0$conv_lst_m2d_38/convolution:output:0&conv_lst_m2d_38/strided_slice:output:0Gconv_lst_m2d_38/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_38_split_readvariableop_resource/conv_lst_m2d_38_split_1_readvariableop_resource/conv_lst_m2d_38_split_2_readvariableop_resource*
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
"conv_lst_m2d_38_while_body_3238557*.
cond&R$
"conv_lst_m2d_38_while_cond_3238556*[
output_shapesJ
H: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
conv_lst_m2d_38/while?
@conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2B
@conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_38/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_38/while:output:3Iconv_lst_m2d_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????F*
element_dtype024
2conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_38/strided_slice_2/stack?
'conv_lst_m2d_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_38/strided_slice_2/stack_1?
'conv_lst_m2d_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_38/strided_slice_2/stack_2?
conv_lst_m2d_38/strided_slice_2StridedSlice;conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_38/strided_slice_2/stack:output:00conv_lst_m2d_38/strided_slice_2/stack_1:output:00conv_lst_m2d_38/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_38/strided_slice_2?
 conv_lst_m2d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_38/transpose_1/perm?
conv_lst_m2d_38/transpose_1	Transpose;conv_lst_m2d_38/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_38/transpose_1?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:FK*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K2
conv2d_19/Relu?
conv_lst_m2d_39/zeros_like	ZerosLikeconv_lst_m2d_38/transpose_1:y:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_39/zeros_like?
%conv_lst_m2d_39/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_39/Sum/reduction_indices?
conv_lst_m2d_39/SumSumconv_lst_m2d_39/zeros_like:y:0.conv_lst_m2d_39/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_39/Sum?
%conv_lst_m2d_39/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"      F   K   2'
%conv_lst_m2d_39/zeros/shape_as_tensor
conv_lst_m2d_39/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_lst_m2d_39/zeros/Const?
conv_lst_m2d_39/zerosFill.conv_lst_m2d_39/zeros/shape_as_tensor:output:0$conv_lst_m2d_39/zeros/Const:output:0*
T0*&
_output_shapes
:FK2
conv_lst_m2d_39/zeros?
conv_lst_m2d_39/convolutionConv2Dconv_lst_m2d_39/Sum:output:0conv_lst_m2d_39/zeros:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution?
conv_lst_m2d_39/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2 
conv_lst_m2d_39/transpose/perm?
conv_lst_m2d_39/transpose	Transposeconv_lst_m2d_38/transpose_1:y:0'conv_lst_m2d_39/transpose/perm:output:0*
T0*3
_output_shapes!
:?????????F2
conv_lst_m2d_39/transpose{
conv_lst_m2d_39/ShapeShapeconv_lst_m2d_39/transpose:y:0*
T0*
_output_shapes
:2
conv_lst_m2d_39/Shape?
#conv_lst_m2d_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv_lst_m2d_39/strided_slice/stack?
%conv_lst_m2d_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_39/strided_slice/stack_1?
%conv_lst_m2d_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv_lst_m2d_39/strided_slice/stack_2?
conv_lst_m2d_39/strided_sliceStridedSliceconv_lst_m2d_39/Shape:output:0,conv_lst_m2d_39/strided_slice/stack:output:0.conv_lst_m2d_39/strided_slice/stack_1:output:0.conv_lst_m2d_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_lst_m2d_39/strided_slice?
+conv_lst_m2d_39/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+conv_lst_m2d_39/TensorArrayV2/element_shape?
conv_lst_m2d_39/TensorArrayV2TensorListReserve4conv_lst_m2d_39/TensorArrayV2/element_shape:output:0&conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
conv_lst_m2d_39/TensorArrayV2?
Econv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2G
Econv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape?
7conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lst_m2d_39/transpose:y:0Nconv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7conv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor?
%conv_lst_m2d_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%conv_lst_m2d_39/strided_slice_1/stack?
'conv_lst_m2d_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_1/stack_1?
'conv_lst_m2d_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_1/stack_2?
conv_lst_m2d_39/strided_slice_1StridedSliceconv_lst_m2d_39/transpose:y:0.conv_lst_m2d_39/strided_slice_1/stack:output:00conv_lst_m2d_39/strided_slice_1/stack_1:output:00conv_lst_m2d_39/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????F*
shrink_axis_mask2!
conv_lst_m2d_39/strided_slice_1?
conv_lst_m2d_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
conv_lst_m2d_39/split/split_dim?
$conv_lst_m2d_39/split/ReadVariableOpReadVariableOp-conv_lst_m2d_39_split_readvariableop_resource*'
_output_shapes
:F?*
dtype02&
$conv_lst_m2d_39/split/ReadVariableOp?
conv_lst_m2d_39/splitSplit(conv_lst_m2d_39/split/split_dim:output:0,conv_lst_m2d_39/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_39/split?
!conv_lst_m2d_39/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!conv_lst_m2d_39/split_1/split_dim?
&conv_lst_m2d_39/split_1/ReadVariableOpReadVariableOp/conv_lst_m2d_39_split_1_readvariableop_resource*'
_output_shapes
:K?*
dtype02(
&conv_lst_m2d_39/split_1/ReadVariableOp?
conv_lst_m2d_39/split_1Split*conv_lst_m2d_39/split_1/split_dim:output:0.conv_lst_m2d_39/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_39/split_1?
!conv_lst_m2d_39/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv_lst_m2d_39/split_2/split_dim?
&conv_lst_m2d_39/split_2/ReadVariableOpReadVariableOp/conv_lst_m2d_39_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&conv_lst_m2d_39/split_2/ReadVariableOp?
conv_lst_m2d_39/split_2Split*conv_lst_m2d_39/split_2/split_dim:output:0.conv_lst_m2d_39/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_39/split_2?
conv_lst_m2d_39/convolution_1Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_1?
conv_lst_m2d_39/BiasAddBiasAdd&conv_lst_m2d_39/convolution_1:output:0 conv_lst_m2d_39/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd?
conv_lst_m2d_39/convolution_2Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_2?
conv_lst_m2d_39/BiasAdd_1BiasAdd&conv_lst_m2d_39/convolution_2:output:0 conv_lst_m2d_39/split_2:output:1*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_1?
conv_lst_m2d_39/convolution_3Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_3?
conv_lst_m2d_39/BiasAdd_2BiasAdd&conv_lst_m2d_39/convolution_3:output:0 conv_lst_m2d_39/split_2:output:2*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_2?
conv_lst_m2d_39/convolution_4Conv2D(conv_lst_m2d_39/strided_slice_1:output:0conv_lst_m2d_39/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2
conv_lst_m2d_39/convolution_4?
conv_lst_m2d_39/BiasAdd_3BiasAdd&conv_lst_m2d_39/convolution_4:output:0 conv_lst_m2d_39/split_2:output:3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/BiasAdd_3?
conv_lst_m2d_39/convolution_5Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_5?
conv_lst_m2d_39/convolution_6Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_6?
conv_lst_m2d_39/convolution_7Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_7?
conv_lst_m2d_39/convolution_8Conv2D$conv_lst_m2d_39/convolution:output:0 conv_lst_m2d_39/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2
conv_lst_m2d_39/convolution_8?
conv_lst_m2d_39/addAddV2 conv_lst_m2d_39/BiasAdd:output:0&conv_lst_m2d_39/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/adds
conv_lst_m2d_39/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Constw
conv_lst_m2d_39/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_1?
conv_lst_m2d_39/MulMulconv_lst_m2d_39/add:z:0conv_lst_m2d_39/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul?
conv_lst_m2d_39/Add_1AddV2conv_lst_m2d_39/Mul:z:0 conv_lst_m2d_39/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_1?
'conv_lst_m2d_39/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'conv_lst_m2d_39/clip_by_value/Minimum/y?
%conv_lst_m2d_39/clip_by_value/MinimumMinimumconv_lst_m2d_39/Add_1:z:00conv_lst_m2d_39/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/clip_by_value/Minimum?
conv_lst_m2d_39/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
conv_lst_m2d_39/clip_by_value/y?
conv_lst_m2d_39/clip_by_valueMaximum)conv_lst_m2d_39/clip_by_value/Minimum:z:0(conv_lst_m2d_39/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/clip_by_value?
conv_lst_m2d_39/add_2AddV2"conv_lst_m2d_39/BiasAdd_1:output:0&conv_lst_m2d_39/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_2w
conv_lst_m2d_39/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Const_2w
conv_lst_m2d_39/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_3?
conv_lst_m2d_39/Mul_1Mulconv_lst_m2d_39/add_2:z:0 conv_lst_m2d_39/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul_1?
conv_lst_m2d_39/Add_3AddV2conv_lst_m2d_39/Mul_1:z:0 conv_lst_m2d_39/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_3?
)conv_lst_m2d_39/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_39/clip_by_value_1/Minimum/y?
'conv_lst_m2d_39/clip_by_value_1/MinimumMinimumconv_lst_m2d_39/Add_3:z:02conv_lst_m2d_39/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_39/clip_by_value_1/Minimum?
!conv_lst_m2d_39/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_39/clip_by_value_1/y?
conv_lst_m2d_39/clip_by_value_1Maximum+conv_lst_m2d_39/clip_by_value_1/Minimum:z:0*conv_lst_m2d_39/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/clip_by_value_1?
conv_lst_m2d_39/mul_2Mul#conv_lst_m2d_39/clip_by_value_1:z:0$conv_lst_m2d_39/convolution:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_2?
conv_lst_m2d_39/add_4AddV2"conv_lst_m2d_39/BiasAdd_2:output:0&conv_lst_m2d_39/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_4?
conv_lst_m2d_39/ReluReluconv_lst_m2d_39/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Relu?
conv_lst_m2d_39/mul_3Mul!conv_lst_m2d_39/clip_by_value:z:0"conv_lst_m2d_39/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_3?
conv_lst_m2d_39/add_5AddV2conv_lst_m2d_39/mul_2:z:0conv_lst_m2d_39/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_5?
conv_lst_m2d_39/add_6AddV2"conv_lst_m2d_39/BiasAdd_3:output:0&conv_lst_m2d_39/convolution_8:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/add_6w
conv_lst_m2d_39/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/Const_4w
conv_lst_m2d_39/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/Const_5?
conv_lst_m2d_39/Mul_4Mulconv_lst_m2d_39/add_6:z:0 conv_lst_m2d_39/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Mul_4?
conv_lst_m2d_39/Add_7AddV2conv_lst_m2d_39/Mul_4:z:0 conv_lst_m2d_39/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Add_7?
)conv_lst_m2d_39/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)conv_lst_m2d_39/clip_by_value_2/Minimum/y?
'conv_lst_m2d_39/clip_by_value_2/MinimumMinimumconv_lst_m2d_39/Add_7:z:02conv_lst_m2d_39/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2)
'conv_lst_m2d_39/clip_by_value_2/Minimum?
!conv_lst_m2d_39/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv_lst_m2d_39/clip_by_value_2/y?
conv_lst_m2d_39/clip_by_value_2Maximum+conv_lst_m2d_39/clip_by_value_2/Minimum:z:0*conv_lst_m2d_39/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/clip_by_value_2?
conv_lst_m2d_39/Relu_1Reluconv_lst_m2d_39/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/Relu_1?
conv_lst_m2d_39/mul_5Mul#conv_lst_m2d_39/clip_by_value_2:z:0$conv_lst_m2d_39/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/mul_5?
-conv_lst_m2d_39/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2/
-conv_lst_m2d_39/TensorArrayV2_1/element_shape?
conv_lst_m2d_39/TensorArrayV2_1TensorListReserve6conv_lst_m2d_39/TensorArrayV2_1/element_shape:output:0&conv_lst_m2d_39/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
conv_lst_m2d_39/TensorArrayV2_1n
conv_lst_m2d_39/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
conv_lst_m2d_39/time?
(conv_lst_m2d_39/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(conv_lst_m2d_39/while/maximum_iterations?
"conv_lst_m2d_39/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"conv_lst_m2d_39/while/loop_counter?
conv_lst_m2d_39/whileWhile+conv_lst_m2d_39/while/loop_counter:output:01conv_lst_m2d_39/while/maximum_iterations:output:0conv_lst_m2d_39/time:output:0(conv_lst_m2d_39/TensorArrayV2_1:handle:0$conv_lst_m2d_39/convolution:output:0$conv_lst_m2d_39/convolution:output:0&conv_lst_m2d_39/strided_slice:output:0Gconv_lst_m2d_39/TensorArrayUnstack/TensorListFromTensor:output_handle:0-conv_lst_m2d_39_split_readvariableop_resource/conv_lst_m2d_39_split_1_readvariableop_resource/conv_lst_m2d_39_split_2_readvariableop_resource*
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
"conv_lst_m2d_39_while_body_3238782*.
cond&R$
"conv_lst_m2d_39_while_cond_3238781*[
output_shapesJ
H: : : : :?????????K:?????????K: : : : : *
parallel_iterations 2
conv_lst_m2d_39/while?
@conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      K   2B
@conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape?
2conv_lst_m2d_39/TensorArrayV2Stack/TensorListStackTensorListStackconv_lst_m2d_39/while:output:3Iconv_lst_m2d_39/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:?????????K*
element_dtype024
2conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack?
%conv_lst_m2d_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv_lst_m2d_39/strided_slice_2/stack?
'conv_lst_m2d_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'conv_lst_m2d_39/strided_slice_2/stack_1?
'conv_lst_m2d_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'conv_lst_m2d_39/strided_slice_2/stack_2?
conv_lst_m2d_39/strided_slice_2StridedSlice;conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:0.conv_lst_m2d_39/strided_slice_2/stack:output:00conv_lst_m2d_39/strided_slice_2/stack_1:output:00conv_lst_m2d_39/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????K*
shrink_axis_mask2!
conv_lst_m2d_39/strided_slice_2?
 conv_lst_m2d_39/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 conv_lst_m2d_39/transpose_1/perm?
conv_lst_m2d_39/transpose_1	Transpose;conv_lst_m2d_39/TensorArrayV2Stack/TensorListStack:tensor:0)conv_lst_m2d_39/transpose_1/perm:output:0*
T0*3
_output_shapes!
:?????????K2
conv_lst_m2d_39/transpose_1u
flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"????K   2
flatten_29/Const?
flatten_29/ReshapeReshapeconv2d_19/Relu:activations:0flatten_29/Const:output:0*
T0*'
_output_shapes
:?????????K2
flatten_29/Reshapeu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_28/Const?
flatten_28/ReshapeReshapeconv_lst_m2d_39/transpose_1:y:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_28/Reshape?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMulflatten_28/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_66/BiasAdd?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulflatten_29/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_67/BiasAdd?

add_19/addAddV2dense_66/BiasAdd:output:0dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

add_19/add?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuladd_19/add:z:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_68/BiasAdds
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_68/Relu?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/BiasAdd|
dense_69/SoftmaxSoftmaxdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_69/Softmaxu
IdentityIdentitydense_69/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp%^conv_lst_m2d_38/split/ReadVariableOp'^conv_lst_m2d_38/split_1/ReadVariableOp'^conv_lst_m2d_38/split_2/ReadVariableOp^conv_lst_m2d_38/while%^conv_lst_m2d_39/split/ReadVariableOp'^conv_lst_m2d_39/split_1/ReadVariableOp'^conv_lst_m2d_39/split_2/ReadVariableOp^conv_lst_m2d_39/while ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2L
$conv_lst_m2d_38/split/ReadVariableOp$conv_lst_m2d_38/split/ReadVariableOp2P
&conv_lst_m2d_38/split_1/ReadVariableOp&conv_lst_m2d_38/split_1/ReadVariableOp2P
&conv_lst_m2d_38/split_2/ReadVariableOp&conv_lst_m2d_38/split_2/ReadVariableOp2.
conv_lst_m2d_38/whileconv_lst_m2d_38/while2L
$conv_lst_m2d_39/split/ReadVariableOp$conv_lst_m2d_39/split/ReadVariableOp2P
&conv_lst_m2d_39/split_1/ReadVariableOp&conv_lst_m2d_39/split_1/ReadVariableOp2P
&conv_lst_m2d_39/split_2/ReadVariableOp&conv_lst_m2d_39/split_2/ReadVariableOp2.
conv_lst_m2d_39/whileconv_lst_m2d_39/while2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp:] Y
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
??
?
"conv_lst_m2d_39_while_body_3238782<
8conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counterB
>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations%
!conv_lst_m2d_39_while_placeholder'
#conv_lst_m2d_39_while_placeholder_1'
#conv_lst_m2d_39_while_placeholder_2'
#conv_lst_m2d_39_while_placeholder_39
5conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice_0w
sconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_39_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_39_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_39_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_39_while_identity$
 conv_lst_m2d_39_while_identity_1$
 conv_lst_m2d_39_while_identity_2$
 conv_lst_m2d_39_while_identity_3$
 conv_lst_m2d_39_while_identity_4$
 conv_lst_m2d_39_while_identity_57
3conv_lst_m2d_39_while_conv_lst_m2d_39_strided_sliceu
qconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_39_while_split_readvariableop_resource:F?P
5conv_lst_m2d_39_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_39_while_split_2_readvariableop_resource:	???*conv_lst_m2d_39/while/split/ReadVariableOp?,conv_lst_m2d_39/while/split_1/ReadVariableOp?,conv_lst_m2d_39/while/split_2/ReadVariableOp?
Gconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_39_while_placeholderPconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_39/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_39/while/split/split_dim?
*conv_lst_m2d_39/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_39_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_39/while/split/ReadVariableOp?
conv_lst_m2d_39/while/splitSplit.conv_lst_m2d_39/while/split/split_dim:output:02conv_lst_m2d_39/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_39/while/split?
'conv_lst_m2d_39/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_39/while/split_1/split_dim?
,conv_lst_m2d_39/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_39_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_39/while/split_1/ReadVariableOp?
conv_lst_m2d_39/while/split_1Split0conv_lst_m2d_39/while/split_1/split_dim:output:04conv_lst_m2d_39/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_39/while/split_1?
'conv_lst_m2d_39/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_39/while/split_2/split_dim?
,conv_lst_m2d_39/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_39_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_39/while/split_2/ReadVariableOp?
conv_lst_m2d_39/while/split_2Split0conv_lst_m2d_39/while/split_2/split_dim:output:04conv_lst_m2d_39/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_39/while/split_2?
!conv_lst_m2d_39/while/convolutionConv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_39/while/convolution?
conv_lst_m2d_39/while/BiasAddBiasAdd*conv_lst_m2d_39/while/convolution:output:0&conv_lst_m2d_39/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/BiasAdd?
#conv_lst_m2d_39/while/convolution_1Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_1?
conv_lst_m2d_39/while/BiasAdd_1BiasAdd,conv_lst_m2d_39/while/convolution_1:output:0&conv_lst_m2d_39/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_1?
#conv_lst_m2d_39/while/convolution_2Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_2?
conv_lst_m2d_39/while/BiasAdd_2BiasAdd,conv_lst_m2d_39/while/convolution_2:output:0&conv_lst_m2d_39/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_2?
#conv_lst_m2d_39/while/convolution_3Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_3?
conv_lst_m2d_39/while/BiasAdd_3BiasAdd,conv_lst_m2d_39/while/convolution_3:output:0&conv_lst_m2d_39/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_3?
#conv_lst_m2d_39/while/convolution_4Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_4?
#conv_lst_m2d_39/while/convolution_5Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_5?
#conv_lst_m2d_39/while/convolution_6Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_6?
#conv_lst_m2d_39/while/convolution_7Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_7?
conv_lst_m2d_39/while/addAddV2&conv_lst_m2d_39/while/BiasAdd:output:0,conv_lst_m2d_39/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add
conv_lst_m2d_39/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const?
conv_lst_m2d_39/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_1?
conv_lst_m2d_39/while/MulMulconv_lst_m2d_39/while/add:z:0$conv_lst_m2d_39/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul?
conv_lst_m2d_39/while/Add_1AddV2conv_lst_m2d_39/while/Mul:z:0&conv_lst_m2d_39/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_1?
-conv_lst_m2d_39/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_39/while/clip_by_value/Minimum/y?
+conv_lst_m2d_39/while/clip_by_value/MinimumMinimumconv_lst_m2d_39/while/Add_1:z:06conv_lst_m2d_39/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_39/while/clip_by_value/Minimum?
%conv_lst_m2d_39/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_39/while/clip_by_value/y?
#conv_lst_m2d_39/while/clip_by_valueMaximum/conv_lst_m2d_39/while/clip_by_value/Minimum:z:0.conv_lst_m2d_39/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_39/while/clip_by_value?
conv_lst_m2d_39/while/add_2AddV2(conv_lst_m2d_39/while/BiasAdd_1:output:0,conv_lst_m2d_39/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_2?
conv_lst_m2d_39/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const_2?
conv_lst_m2d_39/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_3?
conv_lst_m2d_39/while/Mul_1Mulconv_lst_m2d_39/while/add_2:z:0&conv_lst_m2d_39/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul_1?
conv_lst_m2d_39/while/Add_3AddV2conv_lst_m2d_39/while/Mul_1:z:0&conv_lst_m2d_39/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_3?
/conv_lst_m2d_39/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_39/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_39/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_39/while/Add_3:z:08conv_lst_m2d_39/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_39/while/clip_by_value_1/Minimum?
'conv_lst_m2d_39/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_39/while/clip_by_value_1/y?
%conv_lst_m2d_39/while/clip_by_value_1Maximum1conv_lst_m2d_39/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_39/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/while/clip_by_value_1?
conv_lst_m2d_39/while/mul_2Mul)conv_lst_m2d_39/while/clip_by_value_1:z:0#conv_lst_m2d_39_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_2?
conv_lst_m2d_39/while/add_4AddV2(conv_lst_m2d_39/while/BiasAdd_2:output:0,conv_lst_m2d_39/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_4?
conv_lst_m2d_39/while/ReluReluconv_lst_m2d_39/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Relu?
conv_lst_m2d_39/while/mul_3Mul'conv_lst_m2d_39/while/clip_by_value:z:0(conv_lst_m2d_39/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_3?
conv_lst_m2d_39/while/add_5AddV2conv_lst_m2d_39/while/mul_2:z:0conv_lst_m2d_39/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_5?
conv_lst_m2d_39/while/add_6AddV2(conv_lst_m2d_39/while/BiasAdd_3:output:0,conv_lst_m2d_39/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_6?
conv_lst_m2d_39/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const_4?
conv_lst_m2d_39/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_5?
conv_lst_m2d_39/while/Mul_4Mulconv_lst_m2d_39/while/add_6:z:0&conv_lst_m2d_39/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul_4?
conv_lst_m2d_39/while/Add_7AddV2conv_lst_m2d_39/while/Mul_4:z:0&conv_lst_m2d_39/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_7?
/conv_lst_m2d_39/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_39/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_39/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_39/while/Add_7:z:08conv_lst_m2d_39/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_39/while/clip_by_value_2/Minimum?
'conv_lst_m2d_39/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_39/while/clip_by_value_2/y?
%conv_lst_m2d_39/while/clip_by_value_2Maximum1conv_lst_m2d_39/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_39/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/while/clip_by_value_2?
conv_lst_m2d_39/while/Relu_1Reluconv_lst_m2d_39/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Relu_1?
conv_lst_m2d_39/while/mul_5Mul)conv_lst_m2d_39/while/clip_by_value_2:z:0*conv_lst_m2d_39/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_5?
:conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_39_while_placeholder_1!conv_lst_m2d_39_while_placeholderconv_lst_m2d_39/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_39/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_39/while/add_8/y?
conv_lst_m2d_39/while/add_8AddV2!conv_lst_m2d_39_while_placeholder&conv_lst_m2d_39/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/add_8?
conv_lst_m2d_39/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_39/while/add_9/y?
conv_lst_m2d_39/while/add_9AddV28conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counter&conv_lst_m2d_39/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/add_9?
conv_lst_m2d_39/while/IdentityIdentityconv_lst_m2d_39/while/add_9:z:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_39/while/Identity?
 conv_lst_m2d_39/while/Identity_1Identity>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_1?
 conv_lst_m2d_39/while/Identity_2Identityconv_lst_m2d_39/while/add_8:z:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_2?
 conv_lst_m2d_39/while/Identity_3IdentityJconv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_3?
 conv_lst_m2d_39/while/Identity_4Identityconv_lst_m2d_39/while/mul_5:z:0^conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_39/while/Identity_4?
 conv_lst_m2d_39/while/Identity_5Identityconv_lst_m2d_39/while/add_5:z:0^conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_39/while/Identity_5?
conv_lst_m2d_39/while/NoOpNoOp+^conv_lst_m2d_39/while/split/ReadVariableOp-^conv_lst_m2d_39/while/split_1/ReadVariableOp-^conv_lst_m2d_39/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_39/while/NoOp"l
3conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice5conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice_0"I
conv_lst_m2d_39_while_identity'conv_lst_m2d_39/while/Identity:output:0"M
 conv_lst_m2d_39_while_identity_1)conv_lst_m2d_39/while/Identity_1:output:0"M
 conv_lst_m2d_39_while_identity_2)conv_lst_m2d_39/while/Identity_2:output:0"M
 conv_lst_m2d_39_while_identity_3)conv_lst_m2d_39/while/Identity_3:output:0"M
 conv_lst_m2d_39_while_identity_4)conv_lst_m2d_39/while/Identity_4:output:0"M
 conv_lst_m2d_39_while_identity_5)conv_lst_m2d_39/while/Identity_5:output:0"p
5conv_lst_m2d_39_while_split_1_readvariableop_resource7conv_lst_m2d_39_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_39_while_split_2_readvariableop_resource7conv_lst_m2d_39_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_39_while_split_readvariableop_resource5conv_lst_m2d_39_while_split_readvariableop_resource_0"?
qconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_39/while/split/ReadVariableOp*conv_lst_m2d_39/while/split/ReadVariableOp2\
,conv_lst_m2d_39/while/split_1/ReadVariableOp,conv_lst_m2d_39/while/split_1/ReadVariableOp2\
,conv_lst_m2d_39/while/split_2/ReadVariableOp,conv_lst_m2d_39/while/split_2/ReadVariableOp: 
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
while_body_3240689
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239916

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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32368522
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
?D
?
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241131

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
?9
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3236129

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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32359972
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
while_body_3236061*
condR
while_cond_3236060*[
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
?
m
C__inference_add_19_layer_call_and_return_conditional_losses_3236914

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
?
?
3__inference_conv_lstm_cell_39_layer_call_fn_3241165

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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32359972
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
while_cond_3237157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3237157___redundant_placeholder05
1while_while_cond_3237157___redundant_placeholder15
1while_while_cond_3237157___redundant_placeholder25
1while_while_cond_3237157___redundant_placeholder3
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
while_body_3239517
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
?q
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240371
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
while_body_3240245*
condR
while_cond_3240244*[
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
?o
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239423
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
while_body_3239297*
condR
while_cond_3239296*[
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
?
?
%__inference_signature_wrapper_3237887
conv2d_18_input
conv_lst_m2d_38_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_38_inputconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_32350572
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
_user_specified_nameconv2d_18_input:jf
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_38_input
?e
?
while_body_3237158
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239905
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32361292
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
?
1__inference_conv_lst_m2d_38_layer_call_fn_3238983

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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32375362
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3240947

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
?
F__inference_conv2d_19_layer_call_and_return_conditional_losses_3236625

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
?e
?
while_body_3239297
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
while_cond_3235172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3235172___redundant_placeholder05
1while_while_cond_3235172___redundant_placeholder15
1while_while_cond_3235172___redundant_placeholder25
1while_while_cond_3235172___redundant_placeholder3
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240593

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
while_body_3240467*
condR
while_cond_3240466*[
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
+model_19_conv_lst_m2d_38_while_body_3234675N
Jmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_loop_counterT
Pmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_maximum_iterations.
*model_19_conv_lst_m2d_38_while_placeholder0
,model_19_conv_lst_m2d_38_while_placeholder_10
,model_19_conv_lst_m2d_38_while_placeholder_20
,model_19_conv_lst_m2d_38_while_placeholder_3K
Gmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_strided_slice_0?
?model_19_conv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0Y
>model_19_conv_lst_m2d_38_while_split_readvariableop_resource_0:?[
@model_19_conv_lst_m2d_38_while_split_1_readvariableop_resource_0:F?O
@model_19_conv_lst_m2d_38_while_split_2_readvariableop_resource_0:	?+
'model_19_conv_lst_m2d_38_while_identity-
)model_19_conv_lst_m2d_38_while_identity_1-
)model_19_conv_lst_m2d_38_while_identity_2-
)model_19_conv_lst_m2d_38_while_identity_3-
)model_19_conv_lst_m2d_38_while_identity_4-
)model_19_conv_lst_m2d_38_while_identity_5I
Emodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_strided_slice?
?model_19_conv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensorW
<model_19_conv_lst_m2d_38_while_split_readvariableop_resource:?Y
>model_19_conv_lst_m2d_38_while_split_1_readvariableop_resource:F?M
>model_19_conv_lst_m2d_38_while_split_2_readvariableop_resource:	???3model_19/conv_lst_m2d_38/while/split/ReadVariableOp?5model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp?5model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp?
Pmodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2R
Pmodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_19_conv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0*model_19_conv_lst_m2d_38_while_placeholderYmodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02D
Bmodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem?
.model_19/conv_lst_m2d_38/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_19/conv_lst_m2d_38/while/split/split_dim?
3model_19/conv_lst_m2d_38/while/split/ReadVariableOpReadVariableOp>model_19_conv_lst_m2d_38_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype025
3model_19/conv_lst_m2d_38/while/split/ReadVariableOp?
$model_19/conv_lst_m2d_38/while/splitSplit7model_19/conv_lst_m2d_38/while/split/split_dim:output:0;model_19/conv_lst_m2d_38/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2&
$model_19/conv_lst_m2d_38/while/split?
0model_19/conv_lst_m2d_38/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_19/conv_lst_m2d_38/while/split_1/split_dim?
5model_19/conv_lst_m2d_38/while/split_1/ReadVariableOpReadVariableOp@model_19_conv_lst_m2d_38_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype027
5model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp?
&model_19/conv_lst_m2d_38/while/split_1Split9model_19/conv_lst_m2d_38/while/split_1/split_dim:output:0=model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2(
&model_19/conv_lst_m2d_38/while/split_1?
0model_19/conv_lst_m2d_38/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_19/conv_lst_m2d_38/while/split_2/split_dim?
5model_19/conv_lst_m2d_38/while/split_2/ReadVariableOpReadVariableOp@model_19_conv_lst_m2d_38_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp?
&model_19/conv_lst_m2d_38/while/split_2Split9model_19/conv_lst_m2d_38/while/split_2/split_dim:output:0=model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2(
&model_19/conv_lst_m2d_38/while/split_2?
*model_19/conv_lst_m2d_38/while/convolutionConv2DImodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_38/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2,
*model_19/conv_lst_m2d_38/while/convolution?
&model_19/conv_lst_m2d_38/while/BiasAddBiasAdd3model_19/conv_lst_m2d_38/while/convolution:output:0/model_19/conv_lst_m2d_38/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2(
&model_19/conv_lst_m2d_38/while/BiasAdd?
,model_19/conv_lst_m2d_38/while/convolution_1Conv2DImodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_38/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_1?
(model_19/conv_lst_m2d_38/while/BiasAdd_1BiasAdd5model_19/conv_lst_m2d_38/while/convolution_1:output:0/model_19/conv_lst_m2d_38/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2*
(model_19/conv_lst_m2d_38/while/BiasAdd_1?
,model_19/conv_lst_m2d_38/while/convolution_2Conv2DImodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_38/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_2?
(model_19/conv_lst_m2d_38/while/BiasAdd_2BiasAdd5model_19/conv_lst_m2d_38/while/convolution_2:output:0/model_19/conv_lst_m2d_38/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2*
(model_19/conv_lst_m2d_38/while/BiasAdd_2?
,model_19/conv_lst_m2d_38/while/convolution_3Conv2DImodel_19/conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_38/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_3?
(model_19/conv_lst_m2d_38/while/BiasAdd_3BiasAdd5model_19/conv_lst_m2d_38/while/convolution_3:output:0/model_19/conv_lst_m2d_38/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2*
(model_19/conv_lst_m2d_38/while/BiasAdd_3?
,model_19/conv_lst_m2d_38/while/convolution_4Conv2D,model_19_conv_lst_m2d_38_while_placeholder_2/model_19/conv_lst_m2d_38/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_4?
,model_19/conv_lst_m2d_38/while/convolution_5Conv2D,model_19_conv_lst_m2d_38_while_placeholder_2/model_19/conv_lst_m2d_38/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_5?
,model_19/conv_lst_m2d_38/while/convolution_6Conv2D,model_19_conv_lst_m2d_38_while_placeholder_2/model_19/conv_lst_m2d_38/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_6?
,model_19/conv_lst_m2d_38/while/convolution_7Conv2D,model_19_conv_lst_m2d_38_while_placeholder_2/model_19/conv_lst_m2d_38/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_38/while/convolution_7?
"model_19/conv_lst_m2d_38/while/addAddV2/model_19/conv_lst_m2d_38/while/BiasAdd:output:05model_19/conv_lst_m2d_38/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2$
"model_19/conv_lst_m2d_38/while/add?
$model_19/conv_lst_m2d_38/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_19/conv_lst_m2d_38/while/Const?
&model_19/conv_lst_m2d_38/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_38/while/Const_1?
"model_19/conv_lst_m2d_38/while/MulMul&model_19/conv_lst_m2d_38/while/add:z:0-model_19/conv_lst_m2d_38/while/Const:output:0*
T0*/
_output_shapes
:?????????F2$
"model_19/conv_lst_m2d_38/while/Mul?
$model_19/conv_lst_m2d_38/while/Add_1AddV2&model_19/conv_lst_m2d_38/while/Mul:z:0/model_19/conv_lst_m2d_38/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/Add_1?
6model_19/conv_lst_m2d_38/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_19/conv_lst_m2d_38/while/clip_by_value/Minimum/y?
4model_19/conv_lst_m2d_38/while/clip_by_value/MinimumMinimum(model_19/conv_lst_m2d_38/while/Add_1:z:0?model_19/conv_lst_m2d_38/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F26
4model_19/conv_lst_m2d_38/while/clip_by_value/Minimum?
.model_19/conv_lst_m2d_38/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_19/conv_lst_m2d_38/while/clip_by_value/y?
,model_19/conv_lst_m2d_38/while/clip_by_valueMaximum8model_19/conv_lst_m2d_38/while/clip_by_value/Minimum:z:07model_19/conv_lst_m2d_38/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2.
,model_19/conv_lst_m2d_38/while/clip_by_value?
$model_19/conv_lst_m2d_38/while/add_2AddV21model_19/conv_lst_m2d_38/while/BiasAdd_1:output:05model_19/conv_lst_m2d_38/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/add_2?
&model_19/conv_lst_m2d_38/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_19/conv_lst_m2d_38/while/Const_2?
&model_19/conv_lst_m2d_38/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_38/while/Const_3?
$model_19/conv_lst_m2d_38/while/Mul_1Mul(model_19/conv_lst_m2d_38/while/add_2:z:0/model_19/conv_lst_m2d_38/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/Mul_1?
$model_19/conv_lst_m2d_38/while/Add_3AddV2(model_19/conv_lst_m2d_38/while/Mul_1:z:0/model_19/conv_lst_m2d_38/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/Add_3?
8model_19/conv_lst_m2d_38/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_19/conv_lst_m2d_38/while/clip_by_value_1/Minimum/y?
6model_19/conv_lst_m2d_38/while/clip_by_value_1/MinimumMinimum(model_19/conv_lst_m2d_38/while/Add_3:z:0Amodel_19/conv_lst_m2d_38/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_19/conv_lst_m2d_38/while/clip_by_value_1/Minimum?
0model_19/conv_lst_m2d_38/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_19/conv_lst_m2d_38/while/clip_by_value_1/y?
.model_19/conv_lst_m2d_38/while/clip_by_value_1Maximum:model_19/conv_lst_m2d_38/while/clip_by_value_1/Minimum:z:09model_19/conv_lst_m2d_38/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_19/conv_lst_m2d_38/while/clip_by_value_1?
$model_19/conv_lst_m2d_38/while/mul_2Mul2model_19/conv_lst_m2d_38/while/clip_by_value_1:z:0,model_19_conv_lst_m2d_38_while_placeholder_3*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/mul_2?
$model_19/conv_lst_m2d_38/while/add_4AddV21model_19/conv_lst_m2d_38/while/BiasAdd_2:output:05model_19/conv_lst_m2d_38/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/add_4?
#model_19/conv_lst_m2d_38/while/ReluRelu(model_19/conv_lst_m2d_38/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2%
#model_19/conv_lst_m2d_38/while/Relu?
$model_19/conv_lst_m2d_38/while/mul_3Mul0model_19/conv_lst_m2d_38/while/clip_by_value:z:01model_19/conv_lst_m2d_38/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/mul_3?
$model_19/conv_lst_m2d_38/while/add_5AddV2(model_19/conv_lst_m2d_38/while/mul_2:z:0(model_19/conv_lst_m2d_38/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/add_5?
$model_19/conv_lst_m2d_38/while/add_6AddV21model_19/conv_lst_m2d_38/while/BiasAdd_3:output:05model_19/conv_lst_m2d_38/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/add_6?
&model_19/conv_lst_m2d_38/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_19/conv_lst_m2d_38/while/Const_4?
&model_19/conv_lst_m2d_38/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_38/while/Const_5?
$model_19/conv_lst_m2d_38/while/Mul_4Mul(model_19/conv_lst_m2d_38/while/add_6:z:0/model_19/conv_lst_m2d_38/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/Mul_4?
$model_19/conv_lst_m2d_38/while/Add_7AddV2(model_19/conv_lst_m2d_38/while/Mul_4:z:0/model_19/conv_lst_m2d_38/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/Add_7?
8model_19/conv_lst_m2d_38/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_19/conv_lst_m2d_38/while/clip_by_value_2/Minimum/y?
6model_19/conv_lst_m2d_38/while/clip_by_value_2/MinimumMinimum(model_19/conv_lst_m2d_38/while/Add_7:z:0Amodel_19/conv_lst_m2d_38/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F28
6model_19/conv_lst_m2d_38/while/clip_by_value_2/Minimum?
0model_19/conv_lst_m2d_38/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_19/conv_lst_m2d_38/while/clip_by_value_2/y?
.model_19/conv_lst_m2d_38/while/clip_by_value_2Maximum:model_19/conv_lst_m2d_38/while/clip_by_value_2/Minimum:z:09model_19/conv_lst_m2d_38/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F20
.model_19/conv_lst_m2d_38/while/clip_by_value_2?
%model_19/conv_lst_m2d_38/while/Relu_1Relu(model_19/conv_lst_m2d_38/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2'
%model_19/conv_lst_m2d_38/while/Relu_1?
$model_19/conv_lst_m2d_38/while/mul_5Mul2model_19/conv_lst_m2d_38/while/clip_by_value_2:z:03model_19/conv_lst_m2d_38/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2&
$model_19/conv_lst_m2d_38/while/mul_5?
Cmodel_19/conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_19_conv_lst_m2d_38_while_placeholder_1*model_19_conv_lst_m2d_38_while_placeholder(model_19/conv_lst_m2d_38/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_19/conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem?
&model_19/conv_lst_m2d_38/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_19/conv_lst_m2d_38/while/add_8/y?
$model_19/conv_lst_m2d_38/while/add_8AddV2*model_19_conv_lst_m2d_38_while_placeholder/model_19/conv_lst_m2d_38/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_19/conv_lst_m2d_38/while/add_8?
&model_19/conv_lst_m2d_38/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_19/conv_lst_m2d_38/while/add_9/y?
$model_19/conv_lst_m2d_38/while/add_9AddV2Jmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_loop_counter/model_19/conv_lst_m2d_38/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_19/conv_lst_m2d_38/while/add_9?
'model_19/conv_lst_m2d_38/while/IdentityIdentity(model_19/conv_lst_m2d_38/while/add_9:z:0$^model_19/conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2)
'model_19/conv_lst_m2d_38/while/Identity?
)model_19/conv_lst_m2d_38/while/Identity_1IdentityPmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_maximum_iterations$^model_19/conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_38/while/Identity_1?
)model_19/conv_lst_m2d_38/while/Identity_2Identity(model_19/conv_lst_m2d_38/while/add_8:z:0$^model_19/conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_38/while/Identity_2?
)model_19/conv_lst_m2d_38/while/Identity_3IdentitySmodel_19/conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_19/conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_38/while/Identity_3?
)model_19/conv_lst_m2d_38/while/Identity_4Identity(model_19/conv_lst_m2d_38/while/mul_5:z:0$^model_19/conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_19/conv_lst_m2d_38/while/Identity_4?
)model_19/conv_lst_m2d_38/while/Identity_5Identity(model_19/conv_lst_m2d_38/while/add_5:z:0$^model_19/conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2+
)model_19/conv_lst_m2d_38/while/Identity_5?
#model_19/conv_lst_m2d_38/while/NoOpNoOp4^model_19/conv_lst_m2d_38/while/split/ReadVariableOp6^model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp6^model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_19/conv_lst_m2d_38/while/NoOp"[
'model_19_conv_lst_m2d_38_while_identity0model_19/conv_lst_m2d_38/while/Identity:output:0"_
)model_19_conv_lst_m2d_38_while_identity_12model_19/conv_lst_m2d_38/while/Identity_1:output:0"_
)model_19_conv_lst_m2d_38_while_identity_22model_19/conv_lst_m2d_38/while/Identity_2:output:0"_
)model_19_conv_lst_m2d_38_while_identity_32model_19/conv_lst_m2d_38/while/Identity_3:output:0"_
)model_19_conv_lst_m2d_38_while_identity_42model_19/conv_lst_m2d_38/while/Identity_4:output:0"_
)model_19_conv_lst_m2d_38_while_identity_52model_19/conv_lst_m2d_38/while/Identity_5:output:0"?
Emodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_strided_sliceGmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_strided_slice_0"?
>model_19_conv_lst_m2d_38_while_split_1_readvariableop_resource@model_19_conv_lst_m2d_38_while_split_1_readvariableop_resource_0"?
>model_19_conv_lst_m2d_38_while_split_2_readvariableop_resource@model_19_conv_lst_m2d_38_while_split_2_readvariableop_resource_0"~
<model_19_conv_lst_m2d_38_while_split_readvariableop_resource>model_19_conv_lst_m2d_38_while_split_readvariableop_resource_0"?
?model_19_conv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor?model_19_conv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2j
3model_19/conv_lst_m2d_38/while/split/ReadVariableOp3model_19/conv_lst_m2d_38/while/split/ReadVariableOp2n
5model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp5model_19/conv_lst_m2d_38/while/split_1/ReadVariableOp2n
5model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp5model_19/conv_lst_m2d_38/while/split_2/ReadVariableOp: 
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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3235347

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
?$
?
while_body_3235823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3235847_0:F?*
while_3235849_0:K?
while_3235851_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3235847:F?(
while_3235849:K?
while_3235851:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3235847_0while_3235849_0while_3235851_0*
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32358092
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
while_3235847while_3235847_0" 
while_3235849while_3235849_0" 
while_3235851while_3235851_0")
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
E__inference_dense_66_layer_call_and_return_conditional_losses_3236886

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
while_body_3239737
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
E__inference_dense_66_layer_call_and_return_conditional_losses_3240876

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
?
?
"conv_lst_m2d_38_while_cond_3238556<
8conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counterB
>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations%
!conv_lst_m2d_38_while_placeholder'
#conv_lst_m2d_38_while_placeholder_1'
#conv_lst_m2d_38_while_placeholder_2'
#conv_lst_m2d_38_while_placeholder_3<
8conv_lst_m2d_38_while_less_conv_lst_m2d_38_strided_sliceU
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238556___redundant_placeholder0U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238556___redundant_placeholder1U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238556___redundant_placeholder2U
Qconv_lst_m2d_38_while_conv_lst_m2d_38_while_cond_3238556___redundant_placeholder3"
conv_lst_m2d_38_while_identity
?
conv_lst_m2d_38/while/LessLess!conv_lst_m2d_38_while_placeholder8conv_lst_m2d_38_while_less_conv_lst_m2d_38_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/Less?
conv_lst_m2d_38/while/IdentityIdentityconv_lst_m2d_38/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_38/while/Identity"I
conv_lst_m2d_38_while_identity'conv_lst_m2d_38/while/Identity:output:0*(
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
?$
?
while_body_3236061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3236085_0:F?*
while_3236087_0:K?
while_3236089_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3236085:F?(
while_3236087:K?
while_3236089:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3236085_0while_3236087_0while_3236089_0*
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32359972
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
while_3236085while_3236085_0" 
while_3236087while_3236087_0" 
while_3236089while_3236089_0")
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
while_cond_3239296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3239296___redundant_placeholder05
1while_while_cond_3239296___redundant_placeholder15
1while_while_cond_3239296___redundant_placeholder25
1while_while_cond_3239296___redundant_placeholder3
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
?o
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239643

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
while_body_3239517*
condR
while_cond_3239516*[
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
??
?
+model_19_conv_lst_m2d_39_while_body_3234900N
Jmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_loop_counterT
Pmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_maximum_iterations.
*model_19_conv_lst_m2d_39_while_placeholder0
,model_19_conv_lst_m2d_39_while_placeholder_10
,model_19_conv_lst_m2d_39_while_placeholder_20
,model_19_conv_lst_m2d_39_while_placeholder_3K
Gmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_strided_slice_0?
?model_19_conv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0Y
>model_19_conv_lst_m2d_39_while_split_readvariableop_resource_0:F?[
@model_19_conv_lst_m2d_39_while_split_1_readvariableop_resource_0:K?O
@model_19_conv_lst_m2d_39_while_split_2_readvariableop_resource_0:	?+
'model_19_conv_lst_m2d_39_while_identity-
)model_19_conv_lst_m2d_39_while_identity_1-
)model_19_conv_lst_m2d_39_while_identity_2-
)model_19_conv_lst_m2d_39_while_identity_3-
)model_19_conv_lst_m2d_39_while_identity_4-
)model_19_conv_lst_m2d_39_while_identity_5I
Emodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_strided_slice?
?model_19_conv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensorW
<model_19_conv_lst_m2d_39_while_split_readvariableop_resource:F?Y
>model_19_conv_lst_m2d_39_while_split_1_readvariableop_resource:K?M
>model_19_conv_lst_m2d_39_while_split_2_readvariableop_resource:	???3model_19/conv_lst_m2d_39/while/split/ReadVariableOp?5model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp?5model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp?
Pmodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2R
Pmodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Bmodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_19_conv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0*model_19_conv_lst_m2d_39_while_placeholderYmodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02D
Bmodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem?
.model_19/conv_lst_m2d_39/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.model_19/conv_lst_m2d_39/while/split/split_dim?
3model_19/conv_lst_m2d_39/while/split/ReadVariableOpReadVariableOp>model_19_conv_lst_m2d_39_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype025
3model_19/conv_lst_m2d_39/while/split/ReadVariableOp?
$model_19/conv_lst_m2d_39/while/splitSplit7model_19/conv_lst_m2d_39/while/split/split_dim:output:0;model_19/conv_lst_m2d_39/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2&
$model_19/conv_lst_m2d_39/while/split?
0model_19/conv_lst_m2d_39/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_19/conv_lst_m2d_39/while/split_1/split_dim?
5model_19/conv_lst_m2d_39/while/split_1/ReadVariableOpReadVariableOp@model_19_conv_lst_m2d_39_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype027
5model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp?
&model_19/conv_lst_m2d_39/while/split_1Split9model_19/conv_lst_m2d_39/while/split_1/split_dim:output:0=model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2(
&model_19/conv_lst_m2d_39/while/split_1?
0model_19/conv_lst_m2d_39/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_19/conv_lst_m2d_39/while/split_2/split_dim?
5model_19/conv_lst_m2d_39/while/split_2/ReadVariableOpReadVariableOp@model_19_conv_lst_m2d_39_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp?
&model_19/conv_lst_m2d_39/while/split_2Split9model_19/conv_lst_m2d_39/while/split_2/split_dim:output:0=model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2(
&model_19/conv_lst_m2d_39/while/split_2?
*model_19/conv_lst_m2d_39/while/convolutionConv2DImodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_39/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2,
*model_19/conv_lst_m2d_39/while/convolution?
&model_19/conv_lst_m2d_39/while/BiasAddBiasAdd3model_19/conv_lst_m2d_39/while/convolution:output:0/model_19/conv_lst_m2d_39/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2(
&model_19/conv_lst_m2d_39/while/BiasAdd?
,model_19/conv_lst_m2d_39/while/convolution_1Conv2DImodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_39/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_1?
(model_19/conv_lst_m2d_39/while/BiasAdd_1BiasAdd5model_19/conv_lst_m2d_39/while/convolution_1:output:0/model_19/conv_lst_m2d_39/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2*
(model_19/conv_lst_m2d_39/while/BiasAdd_1?
,model_19/conv_lst_m2d_39/while/convolution_2Conv2DImodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_39/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_2?
(model_19/conv_lst_m2d_39/while/BiasAdd_2BiasAdd5model_19/conv_lst_m2d_39/while/convolution_2:output:0/model_19/conv_lst_m2d_39/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2*
(model_19/conv_lst_m2d_39/while/BiasAdd_2?
,model_19/conv_lst_m2d_39/while/convolution_3Conv2DImodel_19/conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0-model_19/conv_lst_m2d_39/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_3?
(model_19/conv_lst_m2d_39/while/BiasAdd_3BiasAdd5model_19/conv_lst_m2d_39/while/convolution_3:output:0/model_19/conv_lst_m2d_39/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2*
(model_19/conv_lst_m2d_39/while/BiasAdd_3?
,model_19/conv_lst_m2d_39/while/convolution_4Conv2D,model_19_conv_lst_m2d_39_while_placeholder_2/model_19/conv_lst_m2d_39/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_4?
,model_19/conv_lst_m2d_39/while/convolution_5Conv2D,model_19_conv_lst_m2d_39_while_placeholder_2/model_19/conv_lst_m2d_39/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_5?
,model_19/conv_lst_m2d_39/while/convolution_6Conv2D,model_19_conv_lst_m2d_39_while_placeholder_2/model_19/conv_lst_m2d_39/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_6?
,model_19/conv_lst_m2d_39/while/convolution_7Conv2D,model_19_conv_lst_m2d_39_while_placeholder_2/model_19/conv_lst_m2d_39/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2.
,model_19/conv_lst_m2d_39/while/convolution_7?
"model_19/conv_lst_m2d_39/while/addAddV2/model_19/conv_lst_m2d_39/while/BiasAdd:output:05model_19/conv_lst_m2d_39/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2$
"model_19/conv_lst_m2d_39/while/add?
$model_19/conv_lst_m2d_39/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$model_19/conv_lst_m2d_39/while/Const?
&model_19/conv_lst_m2d_39/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_39/while/Const_1?
"model_19/conv_lst_m2d_39/while/MulMul&model_19/conv_lst_m2d_39/while/add:z:0-model_19/conv_lst_m2d_39/while/Const:output:0*
T0*/
_output_shapes
:?????????K2$
"model_19/conv_lst_m2d_39/while/Mul?
$model_19/conv_lst_m2d_39/while/Add_1AddV2&model_19/conv_lst_m2d_39/while/Mul:z:0/model_19/conv_lst_m2d_39/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/Add_1?
6model_19/conv_lst_m2d_39/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6model_19/conv_lst_m2d_39/while/clip_by_value/Minimum/y?
4model_19/conv_lst_m2d_39/while/clip_by_value/MinimumMinimum(model_19/conv_lst_m2d_39/while/Add_1:z:0?model_19/conv_lst_m2d_39/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K26
4model_19/conv_lst_m2d_39/while/clip_by_value/Minimum?
.model_19/conv_lst_m2d_39/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.model_19/conv_lst_m2d_39/while/clip_by_value/y?
,model_19/conv_lst_m2d_39/while/clip_by_valueMaximum8model_19/conv_lst_m2d_39/while/clip_by_value/Minimum:z:07model_19/conv_lst_m2d_39/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2.
,model_19/conv_lst_m2d_39/while/clip_by_value?
$model_19/conv_lst_m2d_39/while/add_2AddV21model_19/conv_lst_m2d_39/while/BiasAdd_1:output:05model_19/conv_lst_m2d_39/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/add_2?
&model_19/conv_lst_m2d_39/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_19/conv_lst_m2d_39/while/Const_2?
&model_19/conv_lst_m2d_39/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_39/while/Const_3?
$model_19/conv_lst_m2d_39/while/Mul_1Mul(model_19/conv_lst_m2d_39/while/add_2:z:0/model_19/conv_lst_m2d_39/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/Mul_1?
$model_19/conv_lst_m2d_39/while/Add_3AddV2(model_19/conv_lst_m2d_39/while/Mul_1:z:0/model_19/conv_lst_m2d_39/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/Add_3?
8model_19/conv_lst_m2d_39/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_19/conv_lst_m2d_39/while/clip_by_value_1/Minimum/y?
6model_19/conv_lst_m2d_39/while/clip_by_value_1/MinimumMinimum(model_19/conv_lst_m2d_39/while/Add_3:z:0Amodel_19/conv_lst_m2d_39/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_19/conv_lst_m2d_39/while/clip_by_value_1/Minimum?
0model_19/conv_lst_m2d_39/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_19/conv_lst_m2d_39/while/clip_by_value_1/y?
.model_19/conv_lst_m2d_39/while/clip_by_value_1Maximum:model_19/conv_lst_m2d_39/while/clip_by_value_1/Minimum:z:09model_19/conv_lst_m2d_39/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_19/conv_lst_m2d_39/while/clip_by_value_1?
$model_19/conv_lst_m2d_39/while/mul_2Mul2model_19/conv_lst_m2d_39/while/clip_by_value_1:z:0,model_19_conv_lst_m2d_39_while_placeholder_3*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/mul_2?
$model_19/conv_lst_m2d_39/while/add_4AddV21model_19/conv_lst_m2d_39/while/BiasAdd_2:output:05model_19/conv_lst_m2d_39/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/add_4?
#model_19/conv_lst_m2d_39/while/ReluRelu(model_19/conv_lst_m2d_39/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2%
#model_19/conv_lst_m2d_39/while/Relu?
$model_19/conv_lst_m2d_39/while/mul_3Mul0model_19/conv_lst_m2d_39/while/clip_by_value:z:01model_19/conv_lst_m2d_39/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/mul_3?
$model_19/conv_lst_m2d_39/while/add_5AddV2(model_19/conv_lst_m2d_39/while/mul_2:z:0(model_19/conv_lst_m2d_39/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/add_5?
$model_19/conv_lst_m2d_39/while/add_6AddV21model_19/conv_lst_m2d_39/while/BiasAdd_3:output:05model_19/conv_lst_m2d_39/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/add_6?
&model_19/conv_lst_m2d_39/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&model_19/conv_lst_m2d_39/while/Const_4?
&model_19/conv_lst_m2d_39/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&model_19/conv_lst_m2d_39/while/Const_5?
$model_19/conv_lst_m2d_39/while/Mul_4Mul(model_19/conv_lst_m2d_39/while/add_6:z:0/model_19/conv_lst_m2d_39/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/Mul_4?
$model_19/conv_lst_m2d_39/while/Add_7AddV2(model_19/conv_lst_m2d_39/while/Mul_4:z:0/model_19/conv_lst_m2d_39/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/Add_7?
8model_19/conv_lst_m2d_39/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model_19/conv_lst_m2d_39/while/clip_by_value_2/Minimum/y?
6model_19/conv_lst_m2d_39/while/clip_by_value_2/MinimumMinimum(model_19/conv_lst_m2d_39/while/Add_7:z:0Amodel_19/conv_lst_m2d_39/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K28
6model_19/conv_lst_m2d_39/while/clip_by_value_2/Minimum?
0model_19/conv_lst_m2d_39/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0model_19/conv_lst_m2d_39/while/clip_by_value_2/y?
.model_19/conv_lst_m2d_39/while/clip_by_value_2Maximum:model_19/conv_lst_m2d_39/while/clip_by_value_2/Minimum:z:09model_19/conv_lst_m2d_39/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K20
.model_19/conv_lst_m2d_39/while/clip_by_value_2?
%model_19/conv_lst_m2d_39/while/Relu_1Relu(model_19/conv_lst_m2d_39/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2'
%model_19/conv_lst_m2d_39/while/Relu_1?
$model_19/conv_lst_m2d_39/while/mul_5Mul2model_19/conv_lst_m2d_39/while/clip_by_value_2:z:03model_19/conv_lst_m2d_39/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2&
$model_19/conv_lst_m2d_39/while/mul_5?
Cmodel_19/conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem,model_19_conv_lst_m2d_39_while_placeholder_1*model_19_conv_lst_m2d_39_while_placeholder(model_19/conv_lst_m2d_39/while/mul_5:z:0*
_output_shapes
: *
element_dtype02E
Cmodel_19/conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem?
&model_19/conv_lst_m2d_39/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_19/conv_lst_m2d_39/while/add_8/y?
$model_19/conv_lst_m2d_39/while/add_8AddV2*model_19_conv_lst_m2d_39_while_placeholder/model_19/conv_lst_m2d_39/while/add_8/y:output:0*
T0*
_output_shapes
: 2&
$model_19/conv_lst_m2d_39/while/add_8?
&model_19/conv_lst_m2d_39/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_19/conv_lst_m2d_39/while/add_9/y?
$model_19/conv_lst_m2d_39/while/add_9AddV2Jmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_loop_counter/model_19/conv_lst_m2d_39/while/add_9/y:output:0*
T0*
_output_shapes
: 2&
$model_19/conv_lst_m2d_39/while/add_9?
'model_19/conv_lst_m2d_39/while/IdentityIdentity(model_19/conv_lst_m2d_39/while/add_9:z:0$^model_19/conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2)
'model_19/conv_lst_m2d_39/while/Identity?
)model_19/conv_lst_m2d_39/while/Identity_1IdentityPmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_while_maximum_iterations$^model_19/conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_39/while/Identity_1?
)model_19/conv_lst_m2d_39/while/Identity_2Identity(model_19/conv_lst_m2d_39/while/add_8:z:0$^model_19/conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_39/while/Identity_2?
)model_19/conv_lst_m2d_39/while/Identity_3IdentitySmodel_19/conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^model_19/conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2+
)model_19/conv_lst_m2d_39/while/Identity_3?
)model_19/conv_lst_m2d_39/while/Identity_4Identity(model_19/conv_lst_m2d_39/while/mul_5:z:0$^model_19/conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_19/conv_lst_m2d_39/while/Identity_4?
)model_19/conv_lst_m2d_39/while/Identity_5Identity(model_19/conv_lst_m2d_39/while/add_5:z:0$^model_19/conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2+
)model_19/conv_lst_m2d_39/while/Identity_5?
#model_19/conv_lst_m2d_39/while/NoOpNoOp4^model_19/conv_lst_m2d_39/while/split/ReadVariableOp6^model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp6^model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2%
#model_19/conv_lst_m2d_39/while/NoOp"[
'model_19_conv_lst_m2d_39_while_identity0model_19/conv_lst_m2d_39/while/Identity:output:0"_
)model_19_conv_lst_m2d_39_while_identity_12model_19/conv_lst_m2d_39/while/Identity_1:output:0"_
)model_19_conv_lst_m2d_39_while_identity_22model_19/conv_lst_m2d_39/while/Identity_2:output:0"_
)model_19_conv_lst_m2d_39_while_identity_32model_19/conv_lst_m2d_39/while/Identity_3:output:0"_
)model_19_conv_lst_m2d_39_while_identity_42model_19/conv_lst_m2d_39/while/Identity_4:output:0"_
)model_19_conv_lst_m2d_39_while_identity_52model_19/conv_lst_m2d_39/while/Identity_5:output:0"?
Emodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_strided_sliceGmodel_19_conv_lst_m2d_39_while_model_19_conv_lst_m2d_39_strided_slice_0"?
>model_19_conv_lst_m2d_39_while_split_1_readvariableop_resource@model_19_conv_lst_m2d_39_while_split_1_readvariableop_resource_0"?
>model_19_conv_lst_m2d_39_while_split_2_readvariableop_resource@model_19_conv_lst_m2d_39_while_split_2_readvariableop_resource_0"~
<model_19_conv_lst_m2d_39_while_split_readvariableop_resource>model_19_conv_lst_m2d_39_while_split_readvariableop_resource_0"?
?model_19_conv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor?model_19_conv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_model_19_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2j
3model_19/conv_lst_m2d_39/while/split/ReadVariableOp3model_19/conv_lst_m2d_39/while/split/ReadVariableOp2n
5model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp5model_19/conv_lst_m2d_39/while/split_1/ReadVariableOp2n
5model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp5model_19/conv_lst_m2d_39/while/split_2/ReadVariableOp: 
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3236944

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
?
?
*__inference_model_19_layer_call_fn_3237733
conv_lst_m2d_38_input
conv2d_18_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_38_inputconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
E__inference_model_19_layer_call_and_return_conditional_losses_32376522
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
_user_specified_nameconv_lst_m2d_38_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_18_input
?:
?
E__inference_model_19_layer_call_and_return_conditional_losses_3237785
conv_lst_m2d_38_input
conv2d_18_input+
conv2d_18_3237737:F
conv2d_18_3237739:F2
conv_lst_m2d_38_3237742:?2
conv_lst_m2d_38_3237744:F?&
conv_lst_m2d_38_3237746:	?+
conv2d_19_3237749:FK
conv2d_19_3237751:K2
conv_lst_m2d_39_3237754:F?2
conv_lst_m2d_39_3237756:K?&
conv_lst_m2d_39_3237758:	?#
dense_66_3237763:	?2
dense_66_3237765:2"
dense_67_3237768:K2
dense_67_3237770:2"
dense_68_3237774:22
dense_68_3237776:2"
dense_69_3237779:2
dense_69_3237781:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?'conv_lst_m2d_38/StatefulPartitionedCall?'conv_lst_m2d_39/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_3237737conv2d_18_3237739*
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_32363812#
!conv2d_18/StatefulPartitionedCall?
'conv_lst_m2d_38/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_38_inputconv_lst_m2d_38_3237742conv_lst_m2d_38_3237744conv_lst_m2d_38_3237746*
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32366062)
'conv_lst_m2d_38/StatefulPartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_3237749conv2d_19_3237751*
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_32366252#
!conv2d_19/StatefulPartitionedCall?
'conv_lst_m2d_39/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_38/StatefulPartitionedCall:output:0conv_lst_m2d_39_3237754conv_lst_m2d_39_3237756conv_lst_m2d_39_3237758*
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32368522)
'conv_lst_m2d_39/StatefulPartitionedCall?
flatten_29/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
G__inference_flatten_29_layer_call_and_return_conditional_losses_32368662
flatten_29/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall0conv_lst_m2d_39/StatefulPartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_32368742
flatten_28/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_66_3237763dense_66_3237765*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_32368862"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_67_3237768dense_67_3237770*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_32369022"
 dense_67/StatefulPartitionedCall?
add_19/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0)dense_67/StatefulPartitionedCall:output:0*
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
C__inference_add_19_layer_call_and_return_conditional_losses_32369142
add_19/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCalladd_19/PartitionedCall:output:0dense_68_3237774dense_68_3237776*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_32369272"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_3237779dense_69_3237781*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_32369442"
 dense_69/StatefulPartitionedCall?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall(^conv_lst_m2d_38/StatefulPartitionedCall(^conv_lst_m2d_39/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2R
'conv_lst_m2d_38/StatefulPartitionedCall'conv_lst_m2d_38/StatefulPartitionedCall2R
'conv_lst_m2d_39/StatefulPartitionedCall'conv_lst_m2d_39/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_38_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_18_input
?D
?
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3235159

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
?	
?
1__inference_conv_lst_m2d_38_layer_call_fn_3238950
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32352412
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
?o
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239203
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
while_body_3239077*
condR
while_cond_3239076*[
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
?$
?
while_body_3235173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3235197_0:?*
while_3235199_0:F?
while_3235201_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3235197:?(
while_3235199:F?
while_3235201:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3235197_0while_3235199_0while_3235201_0*
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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32351592
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
while_3235197while_3235197_0" 
while_3235199while_3235199_0" 
while_3235201while_3235201_0")
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
while_cond_3239076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3239076___redundant_placeholder05
1while_while_cond_3239076___redundant_placeholder15
1while_while_cond_3239076___redundant_placeholder25
1while_while_cond_3239076___redundant_placeholder3
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
1__inference_conv_lst_m2d_38_layer_call_fn_3238972

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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32366062
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
?
?
while_cond_3236725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3236725___redundant_placeholder05
1while_while_cond_3236725___redundant_placeholder15
1while_while_cond_3236725___redundant_placeholder25
1while_while_cond_3236725___redundant_placeholder3
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
E__inference_dense_67_layer_call_and_return_conditional_losses_3236902

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
?
?
*__inference_dense_66_layer_call_fn_3240866

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
E__inference_dense_66_layer_call_and_return_conditional_losses_32368862
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
?
H
,__inference_flatten_28_layer_call_fn_3240840

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
G__inference_flatten_28_layer_call_and_return_conditional_losses_32368742
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
?
c
G__inference_flatten_28_layer_call_and_return_conditional_losses_3240846

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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_3236381

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
?p
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3237284

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
while_body_3237158*
condR
while_cond_3237157*[
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
?e
?
while_body_3239077
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
??
?
"conv_lst_m2d_38_while_body_3238557<
8conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counterB
>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations%
!conv_lst_m2d_38_while_placeholder'
#conv_lst_m2d_38_while_placeholder_1'
#conv_lst_m2d_38_while_placeholder_2'
#conv_lst_m2d_38_while_placeholder_39
5conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice_0w
sconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_38_while_split_readvariableop_resource_0:?R
7conv_lst_m2d_38_while_split_1_readvariableop_resource_0:F?F
7conv_lst_m2d_38_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_38_while_identity$
 conv_lst_m2d_38_while_identity_1$
 conv_lst_m2d_38_while_identity_2$
 conv_lst_m2d_38_while_identity_3$
 conv_lst_m2d_38_while_identity_4$
 conv_lst_m2d_38_while_identity_57
3conv_lst_m2d_38_while_conv_lst_m2d_38_strided_sliceu
qconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_38_while_split_readvariableop_resource:?P
5conv_lst_m2d_38_while_split_1_readvariableop_resource:F?D
5conv_lst_m2d_38_while_split_2_readvariableop_resource:	???*conv_lst_m2d_38/while/split/ReadVariableOp?,conv_lst_m2d_38/while/split_1/ReadVariableOp?,conv_lst_m2d_38/while/split_2/ReadVariableOp?
Gconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2I
Gconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_38_while_placeholderPconv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????*
element_dtype02;
9conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_38/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_38/while/split/split_dim?
*conv_lst_m2d_38/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_38_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02,
*conv_lst_m2d_38/while/split/ReadVariableOp?
conv_lst_m2d_38/while/splitSplit.conv_lst_m2d_38/while/split/split_dim:output:02conv_lst_m2d_38/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:F:F:F:F*
	num_split2
conv_lst_m2d_38/while/split?
'conv_lst_m2d_38/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_38/while/split_1/split_dim?
,conv_lst_m2d_38/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_38_while_split_1_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02.
,conv_lst_m2d_38/while/split_1/ReadVariableOp?
conv_lst_m2d_38/while/split_1Split0conv_lst_m2d_38/while/split_1/split_dim:output:04conv_lst_m2d_38/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FF:FF:FF:FF*
	num_split2
conv_lst_m2d_38/while/split_1?
'conv_lst_m2d_38/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_38/while/split_2/split_dim?
,conv_lst_m2d_38/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_38_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_38/while/split_2/ReadVariableOp?
conv_lst_m2d_38/while/split_2Split0conv_lst_m2d_38/while/split_2/split_dim:output:04conv_lst_m2d_38/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
conv_lst_m2d_38/while/split_2?
!conv_lst_m2d_38/while/convolutionConv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:0*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2#
!conv_lst_m2d_38/while/convolution?
conv_lst_m2d_38/while/BiasAddBiasAdd*conv_lst_m2d_38/while/convolution:output:0&conv_lst_m2d_38/while/split_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/BiasAdd?
#conv_lst_m2d_38/while/convolution_1Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:1*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_1?
conv_lst_m2d_38/while/BiasAdd_1BiasAdd,conv_lst_m2d_38/while/convolution_1:output:0&conv_lst_m2d_38/while/split_2:output:1*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_1?
#conv_lst_m2d_38/while/convolution_2Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:2*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_2?
conv_lst_m2d_38/while/BiasAdd_2BiasAdd,conv_lst_m2d_38/while/convolution_2:output:0&conv_lst_m2d_38/while/split_2:output:2*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_2?
#conv_lst_m2d_38/while/convolution_3Conv2D@conv_lst_m2d_38/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_38/while/split:output:3*
T0*/
_output_shapes
:?????????F*
paddingVALID*
strides
2%
#conv_lst_m2d_38/while/convolution_3?
conv_lst_m2d_38/while/BiasAdd_3BiasAdd,conv_lst_m2d_38/while/convolution_3:output:0&conv_lst_m2d_38/while/split_2:output:3*
T0*/
_output_shapes
:?????????F2!
conv_lst_m2d_38/while/BiasAdd_3?
#conv_lst_m2d_38/while/convolution_4Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:0*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_4?
#conv_lst_m2d_38/while/convolution_5Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:1*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_5?
#conv_lst_m2d_38/while/convolution_6Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:2*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_6?
#conv_lst_m2d_38/while/convolution_7Conv2D#conv_lst_m2d_38_while_placeholder_2&conv_lst_m2d_38/while/split_1:output:3*
T0*/
_output_shapes
:?????????F*
paddingSAME*
strides
2%
#conv_lst_m2d_38/while/convolution_7?
conv_lst_m2d_38/while/addAddV2&conv_lst_m2d_38/while/BiasAdd:output:0,conv_lst_m2d_38/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add
conv_lst_m2d_38/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const?
conv_lst_m2d_38/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_1?
conv_lst_m2d_38/while/MulMulconv_lst_m2d_38/while/add:z:0$conv_lst_m2d_38/while/Const:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul?
conv_lst_m2d_38/while/Add_1AddV2conv_lst_m2d_38/while/Mul:z:0&conv_lst_m2d_38/while/Const_1:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_1?
-conv_lst_m2d_38/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_38/while/clip_by_value/Minimum/y?
+conv_lst_m2d_38/while/clip_by_value/MinimumMinimumconv_lst_m2d_38/while/Add_1:z:06conv_lst_m2d_38/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2-
+conv_lst_m2d_38/while/clip_by_value/Minimum?
%conv_lst_m2d_38/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_38/while/clip_by_value/y?
#conv_lst_m2d_38/while/clip_by_valueMaximum/conv_lst_m2d_38/while/clip_by_value/Minimum:z:0.conv_lst_m2d_38/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????F2%
#conv_lst_m2d_38/while/clip_by_value?
conv_lst_m2d_38/while/add_2AddV2(conv_lst_m2d_38/while/BiasAdd_1:output:0,conv_lst_m2d_38/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_2?
conv_lst_m2d_38/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const_2?
conv_lst_m2d_38/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_3?
conv_lst_m2d_38/while/Mul_1Mulconv_lst_m2d_38/while/add_2:z:0&conv_lst_m2d_38/while/Const_2:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul_1?
conv_lst_m2d_38/while/Add_3AddV2conv_lst_m2d_38/while/Mul_1:z:0&conv_lst_m2d_38/while/Const_3:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_3?
/conv_lst_m2d_38/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_38/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_38/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_38/while/Add_3:z:08conv_lst_m2d_38/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_38/while/clip_by_value_1/Minimum?
'conv_lst_m2d_38/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_38/while/clip_by_value_1/y?
%conv_lst_m2d_38/while/clip_by_value_1Maximum1conv_lst_m2d_38/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_38/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/while/clip_by_value_1?
conv_lst_m2d_38/while/mul_2Mul)conv_lst_m2d_38/while/clip_by_value_1:z:0#conv_lst_m2d_38_while_placeholder_3*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_2?
conv_lst_m2d_38/while/add_4AddV2(conv_lst_m2d_38/while/BiasAdd_2:output:0,conv_lst_m2d_38/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_4?
conv_lst_m2d_38/while/ReluReluconv_lst_m2d_38/while/add_4:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Relu?
conv_lst_m2d_38/while/mul_3Mul'conv_lst_m2d_38/while/clip_by_value:z:0(conv_lst_m2d_38/while/Relu:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_3?
conv_lst_m2d_38/while/add_5AddV2conv_lst_m2d_38/while/mul_2:z:0conv_lst_m2d_38/while/mul_3:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_5?
conv_lst_m2d_38/while/add_6AddV2(conv_lst_m2d_38/while/BiasAdd_3:output:0,conv_lst_m2d_38/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/add_6?
conv_lst_m2d_38/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_38/while/Const_4?
conv_lst_m2d_38/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_38/while/Const_5?
conv_lst_m2d_38/while/Mul_4Mulconv_lst_m2d_38/while/add_6:z:0&conv_lst_m2d_38/while/Const_4:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Mul_4?
conv_lst_m2d_38/while/Add_7AddV2conv_lst_m2d_38/while/Mul_4:z:0&conv_lst_m2d_38/while/Const_5:output:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Add_7?
/conv_lst_m2d_38/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_38/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_38/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_38/while/Add_7:z:08conv_lst_m2d_38/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????F2/
-conv_lst_m2d_38/while/clip_by_value_2/Minimum?
'conv_lst_m2d_38/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_38/while/clip_by_value_2/y?
%conv_lst_m2d_38/while/clip_by_value_2Maximum1conv_lst_m2d_38/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_38/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????F2'
%conv_lst_m2d_38/while/clip_by_value_2?
conv_lst_m2d_38/while/Relu_1Reluconv_lst_m2d_38/while/add_5:z:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/Relu_1?
conv_lst_m2d_38/while/mul_5Mul)conv_lst_m2d_38/while/clip_by_value_2:z:0*conv_lst_m2d_38/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????F2
conv_lst_m2d_38/while/mul_5?
:conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_38_while_placeholder_1!conv_lst_m2d_38_while_placeholderconv_lst_m2d_38/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_38/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_38/while/add_8/y?
conv_lst_m2d_38/while/add_8AddV2!conv_lst_m2d_38_while_placeholder&conv_lst_m2d_38/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/add_8?
conv_lst_m2d_38/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_38/while/add_9/y?
conv_lst_m2d_38/while/add_9AddV28conv_lst_m2d_38_while_conv_lst_m2d_38_while_loop_counter&conv_lst_m2d_38/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_38/while/add_9?
conv_lst_m2d_38/while/IdentityIdentityconv_lst_m2d_38/while/add_9:z:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_38/while/Identity?
 conv_lst_m2d_38/while/Identity_1Identity>conv_lst_m2d_38_while_conv_lst_m2d_38_while_maximum_iterations^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_1?
 conv_lst_m2d_38/while/Identity_2Identityconv_lst_m2d_38/while/add_8:z:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_2?
 conv_lst_m2d_38/while/Identity_3IdentityJconv_lst_m2d_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_38/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_38/while/Identity_3?
 conv_lst_m2d_38/while/Identity_4Identityconv_lst_m2d_38/while/mul_5:z:0^conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_38/while/Identity_4?
 conv_lst_m2d_38/while/Identity_5Identityconv_lst_m2d_38/while/add_5:z:0^conv_lst_m2d_38/while/NoOp*
T0*/
_output_shapes
:?????????F2"
 conv_lst_m2d_38/while/Identity_5?
conv_lst_m2d_38/while/NoOpNoOp+^conv_lst_m2d_38/while/split/ReadVariableOp-^conv_lst_m2d_38/while/split_1/ReadVariableOp-^conv_lst_m2d_38/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_38/while/NoOp"l
3conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice5conv_lst_m2d_38_while_conv_lst_m2d_38_strided_slice_0"I
conv_lst_m2d_38_while_identity'conv_lst_m2d_38/while/Identity:output:0"M
 conv_lst_m2d_38_while_identity_1)conv_lst_m2d_38/while/Identity_1:output:0"M
 conv_lst_m2d_38_while_identity_2)conv_lst_m2d_38/while/Identity_2:output:0"M
 conv_lst_m2d_38_while_identity_3)conv_lst_m2d_38/while/Identity_3:output:0"M
 conv_lst_m2d_38_while_identity_4)conv_lst_m2d_38/while/Identity_4:output:0"M
 conv_lst_m2d_38_while_identity_5)conv_lst_m2d_38/while/Identity_5:output:0"p
5conv_lst_m2d_38_while_split_1_readvariableop_resource7conv_lst_m2d_38_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_38_while_split_2_readvariableop_resource7conv_lst_m2d_38_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_38_while_split_readvariableop_resource5conv_lst_m2d_38_while_split_readvariableop_resource_0"?
qconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_38_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????F:?????????F: : : : : 2X
*conv_lst_m2d_38/while/split/ReadVariableOp*conv_lst_m2d_38/while/split/ReadVariableOp2\
,conv_lst_m2d_38/while/split_1/ReadVariableOp,conv_lst_m2d_38/while/split_1/ReadVariableOp2\
,conv_lst_m2d_38/while/split_2/ReadVariableOp,conv_lst_m2d_38/while/split_2/ReadVariableOp: 
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3235997

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
?e
?
while_body_3240245
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
while_cond_3237409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3237409___redundant_placeholder05
1while_while_cond_3237409___redundant_placeholder15
1while_while_cond_3237409___redundant_placeholder25
1while_while_cond_3237409___redundant_placeholder3
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
?
T
(__inference_add_19_layer_call_fn_3240901
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
C__inference_add_19_layer_call_and_return_conditional_losses_32369142
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
?
?
E__inference_dense_68_layer_call_and_return_conditional_losses_3240927

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
?9
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3235891

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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_32358092
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
while_body_3235823*
condR
while_cond_3235822*[
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
?e
?
while_body_3236726
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
?
?
*__inference_model_19_layer_call_fn_3237971
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
E__inference_model_19_layer_call_and_return_conditional_losses_32376522
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
?
?
+model_19_conv_lst_m2d_38_while_cond_3234674N
Jmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_loop_counterT
Pmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_maximum_iterations.
*model_19_conv_lst_m2d_38_while_placeholder0
,model_19_conv_lst_m2d_38_while_placeholder_10
,model_19_conv_lst_m2d_38_while_placeholder_20
,model_19_conv_lst_m2d_38_while_placeholder_3N
Jmodel_19_conv_lst_m2d_38_while_less_model_19_conv_lst_m2d_38_strided_sliceg
cmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_cond_3234674___redundant_placeholder0g
cmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_cond_3234674___redundant_placeholder1g
cmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_cond_3234674___redundant_placeholder2g
cmodel_19_conv_lst_m2d_38_while_model_19_conv_lst_m2d_38_while_cond_3234674___redundant_placeholder3+
'model_19_conv_lst_m2d_38_while_identity
?
#model_19/conv_lst_m2d_38/while/LessLess*model_19_conv_lst_m2d_38_while_placeholderJmodel_19_conv_lst_m2d_38_while_less_model_19_conv_lst_m2d_38_strided_slice*
T0*
_output_shapes
: 2%
#model_19/conv_lst_m2d_38/while/Less?
'model_19/conv_lst_m2d_38/while/IdentityIdentity'model_19/conv_lst_m2d_38/while/Less:z:0*
T0
*
_output_shapes
: 2)
'model_19/conv_lst_m2d_38/while/Identity"[
'model_19_conv_lst_m2d_38_while_identity0model_19/conv_lst_m2d_38/while/Identity:output:0*(
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
?7
?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3235241

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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32351592
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
while_body_3235173*
condR
while_cond_3235172*[
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
?
?
*__inference_model_19_layer_call_fn_3237929
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
E__inference_model_19_layer_call_and_return_conditional_losses_32369512
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
?
?
while_cond_3240244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3240244___redundant_placeholder05
1while_while_cond_3240244___redundant_placeholder15
1while_while_cond_3240244___redundant_placeholder25
1while_while_cond_3240244___redundant_placeholder3
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
?
c
G__inference_flatten_28_layer_call_and_return_conditional_losses_3236874

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
?D
?
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241056

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
?
c
G__inference_flatten_29_layer_call_and_return_conditional_losses_3240857

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
while_cond_3239516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3239516___redundant_placeholder05
1while_while_cond_3239516___redundant_placeholder15
1while_while_cond_3239516___redundant_placeholder25
1while_while_cond_3239516___redundant_placeholder3
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
while_cond_3236479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3236479___redundant_placeholder05
1while_while_cond_3236479___redundant_placeholder15
1while_while_cond_3236479___redundant_placeholder25
1while_while_cond_3236479___redundant_placeholder3
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
+__inference_conv2d_19_layer_call_fn_3240824

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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_32366252
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
?

?
E__inference_dense_67_layer_call_and_return_conditional_losses_3240895

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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_3240835

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
?$
?
while_body_3235409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_3235433_0:?*
while_3235435_0:F?
while_3235437_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_3235433:?(
while_3235435:F?
while_3235437:	???while/StatefulPartitionedCall?
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
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_3235433_0while_3235435_0while_3235437_0*
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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32353472
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
while_3235433while_3235433_0" 
while_3235435while_3235435_0" 
while_3235437while_3235437_0")
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
?
?
*__inference_model_19_layer_call_fn_3236990
conv_lst_m2d_38_input
conv2d_18_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_38_inputconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
E__inference_model_19_layer_call_and_return_conditional_losses_32369512
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
_user_specified_nameconv_lst_m2d_38_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_18_input
?:
?
E__inference_model_19_layer_call_and_return_conditional_losses_3237837
conv_lst_m2d_38_input
conv2d_18_input+
conv2d_18_3237789:F
conv2d_18_3237791:F2
conv_lst_m2d_38_3237794:?2
conv_lst_m2d_38_3237796:F?&
conv_lst_m2d_38_3237798:	?+
conv2d_19_3237801:FK
conv2d_19_3237803:K2
conv_lst_m2d_39_3237806:F?2
conv_lst_m2d_39_3237808:K?&
conv_lst_m2d_39_3237810:	?#
dense_66_3237815:	?2
dense_66_3237817:2"
dense_67_3237820:K2
dense_67_3237822:2"
dense_68_3237826:22
dense_68_3237828:2"
dense_69_3237831:2
dense_69_3237833:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?'conv_lst_m2d_38/StatefulPartitionedCall?'conv_lst_m2d_39/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_3237789conv2d_18_3237791*
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_32363812#
!conv2d_18/StatefulPartitionedCall?
'conv_lst_m2d_38/StatefulPartitionedCallStatefulPartitionedCallconv_lst_m2d_38_inputconv_lst_m2d_38_3237794conv_lst_m2d_38_3237796conv_lst_m2d_38_3237798*
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_32375362)
'conv_lst_m2d_38/StatefulPartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_3237801conv2d_19_3237803*
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_32366252#
!conv2d_19/StatefulPartitionedCall?
'conv_lst_m2d_39/StatefulPartitionedCallStatefulPartitionedCall0conv_lst_m2d_38/StatefulPartitionedCall:output:0conv_lst_m2d_39_3237806conv_lst_m2d_39_3237808conv_lst_m2d_39_3237810*
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_32372842)
'conv_lst_m2d_39/StatefulPartitionedCall?
flatten_29/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
G__inference_flatten_29_layer_call_and_return_conditional_losses_32368662
flatten_29/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall0conv_lst_m2d_39/StatefulPartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_32368742
flatten_28/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_66_3237815dense_66_3237817*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_32368862"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_67_3237820dense_67_3237822*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_32369022"
 dense_67/StatefulPartitionedCall?
add_19/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0)dense_67/StatefulPartitionedCall:output:0*
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
C__inference_add_19_layer_call_and_return_conditional_losses_32369142
add_19/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCalladd_19/PartitionedCall:output:0dense_68_3237826dense_68_3237828*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_32369272"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_3237831dense_69_3237833*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_32369442"
 dense_69/StatefulPartitionedCall?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall(^conv_lst_m2d_38/StatefulPartitionedCall(^conv_lst_m2d_39/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2R
'conv_lst_m2d_38/StatefulPartitionedCall'conv_lst_m2d_38/StatefulPartitionedCall2R
'conv_lst_m2d_39/StatefulPartitionedCall'conv_lst_m2d_39/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall:j f
3
_output_shapes!
:?????????
/
_user_specified_nameconv_lst_m2d_38_input:`\
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_18_input
?p
?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3236852

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
while_body_3236726*
condR
while_cond_3236725*[
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_3239883

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
?
?
while_cond_3240688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3240688___redundant_placeholder05
1while_while_cond_3240688___redundant_placeholder15
1while_while_cond_3240688___redundant_placeholder25
1while_while_cond_3240688___redundant_placeholder3
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
?
H
,__inference_flatten_29_layer_call_fn_3240851

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
G__inference_flatten_29_layer_call_and_return_conditional_losses_32368662
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
?
?
"conv_lst_m2d_39_while_cond_3238297<
8conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counterB
>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations%
!conv_lst_m2d_39_while_placeholder'
#conv_lst_m2d_39_while_placeholder_1'
#conv_lst_m2d_39_while_placeholder_2'
#conv_lst_m2d_39_while_placeholder_3<
8conv_lst_m2d_39_while_less_conv_lst_m2d_39_strided_sliceU
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238297___redundant_placeholder0U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238297___redundant_placeholder1U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238297___redundant_placeholder2U
Qconv_lst_m2d_39_while_conv_lst_m2d_39_while_cond_3238297___redundant_placeholder3"
conv_lst_m2d_39_while_identity
?
conv_lst_m2d_39/while/LessLess!conv_lst_m2d_39_while_placeholder8conv_lst_m2d_39_while_less_conv_lst_m2d_39_strided_slice*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/Less?
conv_lst_m2d_39/while/IdentityIdentityconv_lst_m2d_39/while/Less:z:0*
T0
*
_output_shapes
: 2 
conv_lst_m2d_39/while/Identity"I
conv_lst_m2d_39_while_identity'conv_lst_m2d_39/while/Identity:output:0*(
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
+__inference_conv2d_18_layer_call_fn_3239872

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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_32363812
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
while_body_3237410
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
?
o
C__inference_add_19_layer_call_and_return_conditional_losses_3240907
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
?
?
*__inference_dense_67_layer_call_fn_3240885

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
E__inference_dense_67_layer_call_and_return_conditional_losses_32369022
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
??
?
"conv_lst_m2d_39_while_body_3238298<
8conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counterB
>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations%
!conv_lst_m2d_39_while_placeholder'
#conv_lst_m2d_39_while_placeholder_1'
#conv_lst_m2d_39_while_placeholder_2'
#conv_lst_m2d_39_while_placeholder_39
5conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice_0w
sconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0P
5conv_lst_m2d_39_while_split_readvariableop_resource_0:F?R
7conv_lst_m2d_39_while_split_1_readvariableop_resource_0:K?F
7conv_lst_m2d_39_while_split_2_readvariableop_resource_0:	?"
conv_lst_m2d_39_while_identity$
 conv_lst_m2d_39_while_identity_1$
 conv_lst_m2d_39_while_identity_2$
 conv_lst_m2d_39_while_identity_3$
 conv_lst_m2d_39_while_identity_4$
 conv_lst_m2d_39_while_identity_57
3conv_lst_m2d_39_while_conv_lst_m2d_39_strided_sliceu
qconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensorN
3conv_lst_m2d_39_while_split_readvariableop_resource:F?P
5conv_lst_m2d_39_while_split_1_readvariableop_resource:K?D
5conv_lst_m2d_39_while_split_2_readvariableop_resource:	???*conv_lst_m2d_39/while/split/ReadVariableOp?,conv_lst_m2d_39/while/split_1/ReadVariableOp?,conv_lst_m2d_39/while/split_2/ReadVariableOp?
Gconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      F   2I
Gconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0!conv_lst_m2d_39_while_placeholderPconv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????F*
element_dtype02;
9conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem?
%conv_lst_m2d_39/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_lst_m2d_39/while/split/split_dim?
*conv_lst_m2d_39/while/split/ReadVariableOpReadVariableOp5conv_lst_m2d_39_while_split_readvariableop_resource_0*'
_output_shapes
:F?*
dtype02,
*conv_lst_m2d_39/while/split/ReadVariableOp?
conv_lst_m2d_39/while/splitSplit.conv_lst_m2d_39/while/split/split_dim:output:02conv_lst_m2d_39/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:FK:FK:FK:FK*
	num_split2
conv_lst_m2d_39/while/split?
'conv_lst_m2d_39/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'conv_lst_m2d_39/while/split_1/split_dim?
,conv_lst_m2d_39/while/split_1/ReadVariableOpReadVariableOp7conv_lst_m2d_39_while_split_1_readvariableop_resource_0*'
_output_shapes
:K?*
dtype02.
,conv_lst_m2d_39/while/split_1/ReadVariableOp?
conv_lst_m2d_39/while/split_1Split0conv_lst_m2d_39/while/split_1/split_dim:output:04conv_lst_m2d_39/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:KK:KK:KK:KK*
	num_split2
conv_lst_m2d_39/while/split_1?
'conv_lst_m2d_39/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_lst_m2d_39/while/split_2/split_dim?
,conv_lst_m2d_39/while/split_2/ReadVariableOpReadVariableOp7conv_lst_m2d_39_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02.
,conv_lst_m2d_39/while/split_2/ReadVariableOp?
conv_lst_m2d_39/while/split_2Split0conv_lst_m2d_39/while/split_2/split_dim:output:04conv_lst_m2d_39/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:K:K:K:K*
	num_split2
conv_lst_m2d_39/while/split_2?
!conv_lst_m2d_39/while/convolutionConv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:0*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2#
!conv_lst_m2d_39/while/convolution?
conv_lst_m2d_39/while/BiasAddBiasAdd*conv_lst_m2d_39/while/convolution:output:0&conv_lst_m2d_39/while/split_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/BiasAdd?
#conv_lst_m2d_39/while/convolution_1Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:1*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_1?
conv_lst_m2d_39/while/BiasAdd_1BiasAdd,conv_lst_m2d_39/while/convolution_1:output:0&conv_lst_m2d_39/while/split_2:output:1*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_1?
#conv_lst_m2d_39/while/convolution_2Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:2*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_2?
conv_lst_m2d_39/while/BiasAdd_2BiasAdd,conv_lst_m2d_39/while/convolution_2:output:0&conv_lst_m2d_39/while/split_2:output:2*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_2?
#conv_lst_m2d_39/while/convolution_3Conv2D@conv_lst_m2d_39/while/TensorArrayV2Read/TensorListGetItem:item:0$conv_lst_m2d_39/while/split:output:3*
T0*/
_output_shapes
:?????????K*
paddingVALID*
strides
2%
#conv_lst_m2d_39/while/convolution_3?
conv_lst_m2d_39/while/BiasAdd_3BiasAdd,conv_lst_m2d_39/while/convolution_3:output:0&conv_lst_m2d_39/while/split_2:output:3*
T0*/
_output_shapes
:?????????K2!
conv_lst_m2d_39/while/BiasAdd_3?
#conv_lst_m2d_39/while/convolution_4Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:0*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_4?
#conv_lst_m2d_39/while/convolution_5Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:1*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_5?
#conv_lst_m2d_39/while/convolution_6Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:2*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_6?
#conv_lst_m2d_39/while/convolution_7Conv2D#conv_lst_m2d_39_while_placeholder_2&conv_lst_m2d_39/while/split_1:output:3*
T0*/
_output_shapes
:?????????K*
paddingSAME*
strides
2%
#conv_lst_m2d_39/while/convolution_7?
conv_lst_m2d_39/while/addAddV2&conv_lst_m2d_39/while/BiasAdd:output:0,conv_lst_m2d_39/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add
conv_lst_m2d_39/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const?
conv_lst_m2d_39/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_1?
conv_lst_m2d_39/while/MulMulconv_lst_m2d_39/while/add:z:0$conv_lst_m2d_39/while/Const:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul?
conv_lst_m2d_39/while/Add_1AddV2conv_lst_m2d_39/while/Mul:z:0&conv_lst_m2d_39/while/Const_1:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_1?
-conv_lst_m2d_39/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-conv_lst_m2d_39/while/clip_by_value/Minimum/y?
+conv_lst_m2d_39/while/clip_by_value/MinimumMinimumconv_lst_m2d_39/while/Add_1:z:06conv_lst_m2d_39/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2-
+conv_lst_m2d_39/while/clip_by_value/Minimum?
%conv_lst_m2d_39/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%conv_lst_m2d_39/while/clip_by_value/y?
#conv_lst_m2d_39/while/clip_by_valueMaximum/conv_lst_m2d_39/while/clip_by_value/Minimum:z:0.conv_lst_m2d_39/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????K2%
#conv_lst_m2d_39/while/clip_by_value?
conv_lst_m2d_39/while/add_2AddV2(conv_lst_m2d_39/while/BiasAdd_1:output:0,conv_lst_m2d_39/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_2?
conv_lst_m2d_39/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const_2?
conv_lst_m2d_39/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_3?
conv_lst_m2d_39/while/Mul_1Mulconv_lst_m2d_39/while/add_2:z:0&conv_lst_m2d_39/while/Const_2:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul_1?
conv_lst_m2d_39/while/Add_3AddV2conv_lst_m2d_39/while/Mul_1:z:0&conv_lst_m2d_39/while/Const_3:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_3?
/conv_lst_m2d_39/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_39/while/clip_by_value_1/Minimum/y?
-conv_lst_m2d_39/while/clip_by_value_1/MinimumMinimumconv_lst_m2d_39/while/Add_3:z:08conv_lst_m2d_39/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_39/while/clip_by_value_1/Minimum?
'conv_lst_m2d_39/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_39/while/clip_by_value_1/y?
%conv_lst_m2d_39/while/clip_by_value_1Maximum1conv_lst_m2d_39/while/clip_by_value_1/Minimum:z:00conv_lst_m2d_39/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/while/clip_by_value_1?
conv_lst_m2d_39/while/mul_2Mul)conv_lst_m2d_39/while/clip_by_value_1:z:0#conv_lst_m2d_39_while_placeholder_3*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_2?
conv_lst_m2d_39/while/add_4AddV2(conv_lst_m2d_39/while/BiasAdd_2:output:0,conv_lst_m2d_39/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_4?
conv_lst_m2d_39/while/ReluReluconv_lst_m2d_39/while/add_4:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Relu?
conv_lst_m2d_39/while/mul_3Mul'conv_lst_m2d_39/while/clip_by_value:z:0(conv_lst_m2d_39/while/Relu:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_3?
conv_lst_m2d_39/while/add_5AddV2conv_lst_m2d_39/while/mul_2:z:0conv_lst_m2d_39/while/mul_3:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_5?
conv_lst_m2d_39/while/add_6AddV2(conv_lst_m2d_39/while/BiasAdd_3:output:0,conv_lst_m2d_39/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/add_6?
conv_lst_m2d_39/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
conv_lst_m2d_39/while/Const_4?
conv_lst_m2d_39/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv_lst_m2d_39/while/Const_5?
conv_lst_m2d_39/while/Mul_4Mulconv_lst_m2d_39/while/add_6:z:0&conv_lst_m2d_39/while/Const_4:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Mul_4?
conv_lst_m2d_39/while/Add_7AddV2conv_lst_m2d_39/while/Mul_4:z:0&conv_lst_m2d_39/while/Const_5:output:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Add_7?
/conv_lst_m2d_39/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/conv_lst_m2d_39/while/clip_by_value_2/Minimum/y?
-conv_lst_m2d_39/while/clip_by_value_2/MinimumMinimumconv_lst_m2d_39/while/Add_7:z:08conv_lst_m2d_39/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????K2/
-conv_lst_m2d_39/while/clip_by_value_2/Minimum?
'conv_lst_m2d_39/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'conv_lst_m2d_39/while/clip_by_value_2/y?
%conv_lst_m2d_39/while/clip_by_value_2Maximum1conv_lst_m2d_39/while/clip_by_value_2/Minimum:z:00conv_lst_m2d_39/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????K2'
%conv_lst_m2d_39/while/clip_by_value_2?
conv_lst_m2d_39/while/Relu_1Reluconv_lst_m2d_39/while/add_5:z:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/Relu_1?
conv_lst_m2d_39/while/mul_5Mul)conv_lst_m2d_39/while/clip_by_value_2:z:0*conv_lst_m2d_39/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K2
conv_lst_m2d_39/while/mul_5?
:conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#conv_lst_m2d_39_while_placeholder_1!conv_lst_m2d_39_while_placeholderconv_lst_m2d_39/while/mul_5:z:0*
_output_shapes
: *
element_dtype02<
:conv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem?
conv_lst_m2d_39/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_39/while/add_8/y?
conv_lst_m2d_39/while/add_8AddV2!conv_lst_m2d_39_while_placeholder&conv_lst_m2d_39/while/add_8/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/add_8?
conv_lst_m2d_39/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
conv_lst_m2d_39/while/add_9/y?
conv_lst_m2d_39/while/add_9AddV28conv_lst_m2d_39_while_conv_lst_m2d_39_while_loop_counter&conv_lst_m2d_39/while/add_9/y:output:0*
T0*
_output_shapes
: 2
conv_lst_m2d_39/while/add_9?
conv_lst_m2d_39/while/IdentityIdentityconv_lst_m2d_39/while/add_9:z:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2 
conv_lst_m2d_39/while/Identity?
 conv_lst_m2d_39/while/Identity_1Identity>conv_lst_m2d_39_while_conv_lst_m2d_39_while_maximum_iterations^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_1?
 conv_lst_m2d_39/while/Identity_2Identityconv_lst_m2d_39/while/add_8:z:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_2?
 conv_lst_m2d_39/while/Identity_3IdentityJconv_lst_m2d_39/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lst_m2d_39/while/NoOp*
T0*
_output_shapes
: 2"
 conv_lst_m2d_39/while/Identity_3?
 conv_lst_m2d_39/while/Identity_4Identityconv_lst_m2d_39/while/mul_5:z:0^conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_39/while/Identity_4?
 conv_lst_m2d_39/while/Identity_5Identityconv_lst_m2d_39/while/add_5:z:0^conv_lst_m2d_39/while/NoOp*
T0*/
_output_shapes
:?????????K2"
 conv_lst_m2d_39/while/Identity_5?
conv_lst_m2d_39/while/NoOpNoOp+^conv_lst_m2d_39/while/split/ReadVariableOp-^conv_lst_m2d_39/while/split_1/ReadVariableOp-^conv_lst_m2d_39/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
conv_lst_m2d_39/while/NoOp"l
3conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice5conv_lst_m2d_39_while_conv_lst_m2d_39_strided_slice_0"I
conv_lst_m2d_39_while_identity'conv_lst_m2d_39/while/Identity:output:0"M
 conv_lst_m2d_39_while_identity_1)conv_lst_m2d_39/while/Identity_1:output:0"M
 conv_lst_m2d_39_while_identity_2)conv_lst_m2d_39/while/Identity_2:output:0"M
 conv_lst_m2d_39_while_identity_3)conv_lst_m2d_39/while/Identity_3:output:0"M
 conv_lst_m2d_39_while_identity_4)conv_lst_m2d_39/while/Identity_4:output:0"M
 conv_lst_m2d_39_while_identity_5)conv_lst_m2d_39/while/Identity_5:output:0"p
5conv_lst_m2d_39_while_split_1_readvariableop_resource7conv_lst_m2d_39_while_split_1_readvariableop_resource_0"p
5conv_lst_m2d_39_while_split_2_readvariableop_resource7conv_lst_m2d_39_while_split_2_readvariableop_resource_0"l
3conv_lst_m2d_39_while_split_readvariableop_resource5conv_lst_m2d_39_while_split_readvariableop_resource_0"?
qconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensorsconv_lst_m2d_39_while_tensorarrayv2read_tensorlistgetitem_conv_lst_m2d_39_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????K:?????????K: : : : : 2X
*conv_lst_m2d_39/while/split/ReadVariableOp*conv_lst_m2d_39/while/split/ReadVariableOp2\
,conv_lst_m2d_39/while/split_1/ReadVariableOp,conv_lst_m2d_39/while/split_1/ReadVariableOp2\
,conv_lst_m2d_39/while/split_2/ReadVariableOp,conv_lst_m2d_39/while/split_2/ReadVariableOp: 
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
?
3__inference_conv_lstm_cell_38_layer_call_fn_3240964

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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32351592
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
??
?)
#__inference__traced_restore_3241727
file_prefix;
!assignvariableop_conv2d_18_kernel:F/
!assignvariableop_1_conv2d_18_bias:F=
#assignvariableop_2_conv2d_19_kernel:FK/
!assignvariableop_3_conv2d_19_bias:K5
"assignvariableop_4_dense_66_kernel:	?2.
 assignvariableop_5_dense_66_bias:24
"assignvariableop_6_dense_67_kernel:K2.
 assignvariableop_7_dense_67_bias:24
"assignvariableop_8_dense_68_kernel:22.
 assignvariableop_9_dense_68_bias:25
#assignvariableop_10_dense_69_kernel:2/
!assignvariableop_11_dense_69_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: E
*assignvariableop_17_conv_lst_m2d_38_kernel:?O
4assignvariableop_18_conv_lst_m2d_38_recurrent_kernel:F?7
(assignvariableop_19_conv_lst_m2d_38_bias:	?E
*assignvariableop_20_conv_lst_m2d_39_kernel:F?O
4assignvariableop_21_conv_lst_m2d_39_recurrent_kernel:K?7
(assignvariableop_22_conv_lst_m2d_39_bias:	?#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: E
+assignvariableop_27_adam_conv2d_18_kernel_m:F7
)assignvariableop_28_adam_conv2d_18_bias_m:FE
+assignvariableop_29_adam_conv2d_19_kernel_m:FK7
)assignvariableop_30_adam_conv2d_19_bias_m:K=
*assignvariableop_31_adam_dense_66_kernel_m:	?26
(assignvariableop_32_adam_dense_66_bias_m:2<
*assignvariableop_33_adam_dense_67_kernel_m:K26
(assignvariableop_34_adam_dense_67_bias_m:2<
*assignvariableop_35_adam_dense_68_kernel_m:226
(assignvariableop_36_adam_dense_68_bias_m:2<
*assignvariableop_37_adam_dense_69_kernel_m:26
(assignvariableop_38_adam_dense_69_bias_m:L
1assignvariableop_39_adam_conv_lst_m2d_38_kernel_m:?V
;assignvariableop_40_adam_conv_lst_m2d_38_recurrent_kernel_m:F?>
/assignvariableop_41_adam_conv_lst_m2d_38_bias_m:	?L
1assignvariableop_42_adam_conv_lst_m2d_39_kernel_m:F?V
;assignvariableop_43_adam_conv_lst_m2d_39_recurrent_kernel_m:K?>
/assignvariableop_44_adam_conv_lst_m2d_39_bias_m:	?E
+assignvariableop_45_adam_conv2d_18_kernel_v:F7
)assignvariableop_46_adam_conv2d_18_bias_v:FE
+assignvariableop_47_adam_conv2d_19_kernel_v:FK7
)assignvariableop_48_adam_conv2d_19_bias_v:K=
*assignvariableop_49_adam_dense_66_kernel_v:	?26
(assignvariableop_50_adam_dense_66_bias_v:2<
*assignvariableop_51_adam_dense_67_kernel_v:K26
(assignvariableop_52_adam_dense_67_bias_v:2<
*assignvariableop_53_adam_dense_68_kernel_v:226
(assignvariableop_54_adam_dense_68_bias_v:2<
*assignvariableop_55_adam_dense_69_kernel_v:26
(assignvariableop_56_adam_dense_69_bias_v:L
1assignvariableop_57_adam_conv_lst_m2d_38_kernel_v:?V
;assignvariableop_58_adam_conv_lst_m2d_38_recurrent_kernel_v:F?>
/assignvariableop_59_adam_conv_lst_m2d_38_bias_v:	?L
1assignvariableop_60_adam_conv_lst_m2d_39_kernel_v:F?V
;assignvariableop_61_adam_conv_lst_m2d_39_recurrent_kernel_v:K?>
/assignvariableop_62_adam_conv_lst_m2d_39_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_66_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_67_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_67_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_68_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_68_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_69_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_69_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp*assignvariableop_17_conv_lst_m2d_38_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_conv_lst_m2d_38_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_conv_lst_m2d_38_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_conv_lst_m2d_39_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_conv_lst_m2d_39_recurrent_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_conv_lst_m2d_39_biasIdentity_22:output:0"/device:CPU:0*
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
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_18_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_18_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_19_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_19_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_66_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_66_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_67_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_67_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_68_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_68_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_69_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_69_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_conv_lst_m2d_38_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp;assignvariableop_40_adam_conv_lst_m2d_38_recurrent_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_adam_conv_lst_m2d_38_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_adam_conv_lst_m2d_39_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp;assignvariableop_43_adam_conv_lst_m2d_39_recurrent_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp/assignvariableop_44_adam_conv_lst_m2d_39_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_18_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_18_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_19_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_19_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_66_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_66_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_67_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_67_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_68_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_68_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_69_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_69_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp1assignvariableop_57_adam_conv_lst_m2d_38_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_adam_conv_lst_m2d_38_recurrent_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_adam_conv_lst_m2d_38_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp1assignvariableop_60_adam_conv_lst_m2d_39_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp;assignvariableop_61_adam_conv_lst_m2d_39_recurrent_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp/assignvariableop_62_adam_conv_lst_m2d_39_bias_vIdentity_62:output:0"/device:CPU:0*
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
?e
?
while_body_3240467
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
while_cond_3235822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3235822___redundant_placeholder05
1while_while_cond_3235822___redundant_placeholder15
1while_while_cond_3235822___redundant_placeholder25
1while_while_cond_3235822___redundant_placeholder3
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
?
?
3__inference_conv_lstm_cell_38_layer_call_fn_3240981

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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_32353472
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
conv2d_18_input@
!serving_default_conv2d_18_input:0?????????
c
conv_lst_m2d_38_inputJ
'serving_default_conv_lst_m2d_38_input:0?????????<
dense_690
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
*:(F2conv2d_18/kernel
:F2conv2d_18/bias
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
*:(FK2conv2d_19/kernel
:K2conv2d_19/bias
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
": 	?22dense_66/kernel
:22dense_66/bias
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
!:K22dense_67/kernel
:22dense_67/bias
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
!:222dense_68/kernel
:22dense_68/bias
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
!:22dense_69/kernel
:2dense_69/bias
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
1:/?2conv_lst_m2d_38/kernel
;:9F?2 conv_lst_m2d_38/recurrent_kernel
#:!?2conv_lst_m2d_38/bias
1:/F?2conv_lst_m2d_39/kernel
;:9K?2 conv_lst_m2d_39/recurrent_kernel
#:!?2conv_lst_m2d_39/bias
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
/:-F2Adam/conv2d_18/kernel/m
!:F2Adam/conv2d_18/bias/m
/:-FK2Adam/conv2d_19/kernel/m
!:K2Adam/conv2d_19/bias/m
':%	?22Adam/dense_66/kernel/m
 :22Adam/dense_66/bias/m
&:$K22Adam/dense_67/kernel/m
 :22Adam/dense_67/bias/m
&:$222Adam/dense_68/kernel/m
 :22Adam/dense_68/bias/m
&:$22Adam/dense_69/kernel/m
 :2Adam/dense_69/bias/m
6:4?2Adam/conv_lst_m2d_38/kernel/m
@:>F?2'Adam/conv_lst_m2d_38/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_38/bias/m
6:4F?2Adam/conv_lst_m2d_39/kernel/m
@:>K?2'Adam/conv_lst_m2d_39/recurrent_kernel/m
(:&?2Adam/conv_lst_m2d_39/bias/m
/:-F2Adam/conv2d_18/kernel/v
!:F2Adam/conv2d_18/bias/v
/:-FK2Adam/conv2d_19/kernel/v
!:K2Adam/conv2d_19/bias/v
':%	?22Adam/dense_66/kernel/v
 :22Adam/dense_66/bias/v
&:$K22Adam/dense_67/kernel/v
 :22Adam/dense_67/bias/v
&:$222Adam/dense_68/kernel/v
 :22Adam/dense_68/bias/v
&:$22Adam/dense_69/kernel/v
 :2Adam/dense_69/bias/v
6:4?2Adam/conv_lst_m2d_38/kernel/v
@:>F?2'Adam/conv_lst_m2d_38/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_38/bias/v
6:4F?2Adam/conv_lst_m2d_39/kernel/v
@:>K?2'Adam/conv_lst_m2d_39/recurrent_kernel/v
(:&?2Adam/conv_lst_m2d_39/bias/v
?B?
"__inference__wrapped_model_3235057conv_lst_m2d_38_inputconv2d_18_input"?
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
*__inference_model_19_layer_call_fn_3236990
*__inference_model_19_layer_call_fn_3237929
*__inference_model_19_layer_call_fn_3237971
*__inference_model_19_layer_call_fn_3237733?
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
E__inference_model_19_layer_call_and_return_conditional_losses_3238455
E__inference_model_19_layer_call_and_return_conditional_losses_3238939
E__inference_model_19_layer_call_and_return_conditional_losses_3237785
E__inference_model_19_layer_call_and_return_conditional_losses_3237837?
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
1__inference_conv_lst_m2d_38_layer_call_fn_3238950
1__inference_conv_lst_m2d_38_layer_call_fn_3238961
1__inference_conv_lst_m2d_38_layer_call_fn_3238972
1__inference_conv_lst_m2d_38_layer_call_fn_3238983?
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239203
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239423
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239643
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239863?
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
+__inference_conv2d_18_layer_call_fn_3239872?
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_3239883?
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239894
1__inference_conv_lst_m2d_39_layer_call_fn_3239905
1__inference_conv_lst_m2d_39_layer_call_fn_3239916
1__inference_conv_lst_m2d_39_layer_call_fn_3239927?
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240149
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240371
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240593
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240815?
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
+__inference_conv2d_19_layer_call_fn_3240824?
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_3240835?
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
,__inference_flatten_28_layer_call_fn_3240840?
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_3240846?
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
,__inference_flatten_29_layer_call_fn_3240851?
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
G__inference_flatten_29_layer_call_and_return_conditional_losses_3240857?
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
*__inference_dense_66_layer_call_fn_3240866?
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
E__inference_dense_66_layer_call_and_return_conditional_losses_3240876?
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
*__inference_dense_67_layer_call_fn_3240885?
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
E__inference_dense_67_layer_call_and_return_conditional_losses_3240895?
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
(__inference_add_19_layer_call_fn_3240901?
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
C__inference_add_19_layer_call_and_return_conditional_losses_3240907?
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
*__inference_dense_68_layer_call_fn_3240916?
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
E__inference_dense_68_layer_call_and_return_conditional_losses_3240927?
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
*__inference_dense_69_layer_call_fn_3240936?
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3240947?
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
%__inference_signature_wrapper_3237887conv2d_18_inputconv_lst_m2d_38_input"?
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
3__inference_conv_lstm_cell_38_layer_call_fn_3240964
3__inference_conv_lstm_cell_38_layer_call_fn_3240981?
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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241056
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241131?
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
3__inference_conv_lstm_cell_39_layer_call_fn_3241148
3__inference_conv_lstm_cell_39_layer_call_fn_3241165?
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241240
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241315?
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
"__inference__wrapped_model_3235057?UVW&'XYZ45:;DEJK??
x?u
s?p
;?8
conv_lst_m2d_38_input?????????
1?.
conv2d_18_input?????????
? "3?0
.
dense_69"?
dense_69??????????
C__inference_add_19_layer_call_and_return_conditional_losses_3240907?Z?W
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
(__inference_add_19_layer_call_fn_3240901vZ?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "??????????2?
F__inference_conv2d_18_layer_call_and_return_conditional_losses_3239883l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????F
? ?
+__inference_conv2d_18_layer_call_fn_3239872_7?4
-?*
(?%
inputs?????????
? " ??????????F?
F__inference_conv2d_19_layer_call_and_return_conditional_losses_3240835l&'7?4
-?*
(?%
inputs?????????F
? "-?*
#? 
0?????????K
? ?
+__inference_conv2d_19_layer_call_fn_3240824_&'7?4
-?*
(?%
inputs?????????F
? " ??????????K?
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239203?UVWW?T
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239423?UVWW?T
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239643?UVWG?D
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
L__inference_conv_lst_m2d_38_layer_call_and_return_conditional_losses_3239863?UVWG?D
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
1__inference_conv_lst_m2d_38_layer_call_fn_3238950?UVWW?T
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
1__inference_conv_lst_m2d_38_layer_call_fn_3238961?UVWW?T
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
1__inference_conv_lst_m2d_38_layer_call_fn_3238972tUVWG?D
=?:
,?)
inputs?????????

 
p 

 
? "$?!?????????F?
1__inference_conv_lst_m2d_38_layer_call_fn_3238983tUVWG?D
=?:
,?)
inputs?????????

 
p

 
? "$?!?????????F?
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240149?XYZW?T
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240371?XYZW?T
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240593?XYZG?D
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
L__inference_conv_lst_m2d_39_layer_call_and_return_conditional_losses_3240815?XYZG?D
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239894?XYZW?T
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239905?XYZW?T
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
1__inference_conv_lst_m2d_39_layer_call_fn_3239916tXYZG?D
=?:
,?)
inputs?????????F

 
p 

 
? "$?!?????????K?
1__inference_conv_lst_m2d_39_layer_call_fn_3239927tXYZG?D
=?:
,?)
inputs?????????F

 
p

 
? "$?!?????????K?
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241056?UVW???
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
N__inference_conv_lstm_cell_38_layer_call_and_return_conditional_losses_3241131?UVW???
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
3__inference_conv_lstm_cell_38_layer_call_fn_3240964?UVW???
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
3__inference_conv_lstm_cell_38_layer_call_fn_3240981?UVW???
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241240?XYZ???
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
N__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_3241315?XYZ???
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
3__inference_conv_lstm_cell_39_layer_call_fn_3241148?XYZ???
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
3__inference_conv_lstm_cell_39_layer_call_fn_3241165?XYZ???
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
E__inference_dense_66_layer_call_and_return_conditional_losses_3240876]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????2
? ~
*__inference_dense_66_layer_call_fn_3240866P450?-
&?#
!?
inputs??????????
? "??????????2?
E__inference_dense_67_layer_call_and_return_conditional_losses_3240895\:;/?,
%?"
 ?
inputs?????????K
? "%?"
?
0?????????2
? }
*__inference_dense_67_layer_call_fn_3240885O:;/?,
%?"
 ?
inputs?????????K
? "??????????2?
E__inference_dense_68_layer_call_and_return_conditional_losses_3240927\DE/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_dense_68_layer_call_fn_3240916ODE/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_dense_69_layer_call_and_return_conditional_losses_3240947\JK/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_69_layer_call_fn_3240936OJK/?,
%?"
 ?
inputs?????????2
? "???????????
G__inference_flatten_28_layer_call_and_return_conditional_losses_3240846e;?8
1?.
,?)
inputs?????????K
? "&?#
?
0??????????
? ?
,__inference_flatten_28_layer_call_fn_3240840X;?8
1?.
,?)
inputs?????????K
? "????????????
G__inference_flatten_29_layer_call_and_return_conditional_losses_3240857`7?4
-?*
(?%
inputs?????????K
? "%?"
?
0?????????K
? ?
,__inference_flatten_29_layer_call_fn_3240851S7?4
-?*
(?%
inputs?????????K
? "??????????K?
E__inference_model_19_layer_call_and_return_conditional_losses_3237785?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_38_input?????????
1?.
conv2d_18_input?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_19_layer_call_and_return_conditional_losses_3237837?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_38_input?????????
1?.
conv2d_18_input?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_19_layer_call_and_return_conditional_losses_3238455?UVW&'XYZ45:;DEJKv?s
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
E__inference_model_19_layer_call_and_return_conditional_losses_3238939?UVW&'XYZ45:;DEJKv?s
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
*__inference_model_19_layer_call_fn_3236990?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_38_input?????????
1?.
conv2d_18_input?????????
p 

 
? "???????????
*__inference_model_19_layer_call_fn_3237733?UVW&'XYZ45:;DEJK???
??}
s?p
;?8
conv_lst_m2d_38_input?????????
1?.
conv2d_18_input?????????
p

 
? "???????????
*__inference_model_19_layer_call_fn_3237929?UVW&'XYZ45:;DEJKv?s
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
*__inference_model_19_layer_call_fn_3237971?UVW&'XYZ45:;DEJKv?s
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
%__inference_signature_wrapper_3237887?UVW&'XYZ45:;DEJK???
? 
???
D
conv2d_18_input1?.
conv2d_18_input?????????
T
conv_lst_m2d_38_input;?8
conv_lst_m2d_38_input?????????"3?0
.
dense_69"?
dense_69?????????