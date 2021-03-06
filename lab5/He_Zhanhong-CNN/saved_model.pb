??
??
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??

?
Input_Conv2D_1st/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameInput_Conv2D_1st/kernel
?
+Input_Conv2D_1st/kernel/Read/ReadVariableOpReadVariableOpInput_Conv2D_1st/kernel*'
_output_shapes
:?*
dtype0
?
Input_Conv2D_1st/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameInput_Conv2D_1st/bias
|
)Input_Conv2D_1st/bias/Read/ReadVariableOpReadVariableOpInput_Conv2D_1st/bias*
_output_shapes	
:?*
dtype0

BatchNorm_1st/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameBatchNorm_1st/gamma
x
'BatchNorm_1st/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_1st/gamma*
_output_shapes	
:?*
dtype0
}
BatchNorm_1st/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameBatchNorm_1st/beta
v
&BatchNorm_1st/beta/Read/ReadVariableOpReadVariableOpBatchNorm_1st/beta*
_output_shapes	
:?*
dtype0
?
BatchNorm_1st/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameBatchNorm_1st/moving_mean
?
-BatchNorm_1st/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_1st/moving_mean*
_output_shapes	
:?*
dtype0
?
BatchNorm_1st/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameBatchNorm_1st/moving_variance
?
1BatchNorm_1st/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_1st/moving_variance*
_output_shapes	
:?*
dtype0
?
Conv2D_2nd/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameConv2D_2nd/kernel
?
%Conv2D_2nd/kernel/Read/ReadVariableOpReadVariableOpConv2D_2nd/kernel*(
_output_shapes
:??*
dtype0
w
Conv2D_2nd/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameConv2D_2nd/bias
p
#Conv2D_2nd/bias/Read/ReadVariableOpReadVariableOpConv2D_2nd/bias*
_output_shapes	
:?*
dtype0

BatchNorm_2nd/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameBatchNorm_2nd/gamma
x
'BatchNorm_2nd/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_2nd/gamma*
_output_shapes	
:?*
dtype0
}
BatchNorm_2nd/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameBatchNorm_2nd/beta
v
&BatchNorm_2nd/beta/Read/ReadVariableOpReadVariableOpBatchNorm_2nd/beta*
_output_shapes	
:?*
dtype0
?
BatchNorm_2nd/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameBatchNorm_2nd/moving_mean
?
-BatchNorm_2nd/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_2nd/moving_mean*
_output_shapes	
:?*
dtype0
?
BatchNorm_2nd/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameBatchNorm_2nd/moving_variance
?
1BatchNorm_2nd/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_2nd/moving_variance*
_output_shapes	
:?*
dtype0
~
Dense_1st/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?2?*!
shared_nameDense_1st/kernel
w
$Dense_1st/kernel/Read/ReadVariableOpReadVariableOpDense_1st/kernel* 
_output_shapes
:
?2?*
dtype0
u
Dense_1st/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense_1st/bias
n
"Dense_1st/bias/Read/ReadVariableOpReadVariableOpDense_1st/bias*
_output_shapes	
:?*
dtype0
~
Dense_2nd/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_nameDense_2nd/kernel
w
$Dense_2nd/kernel/Read/ReadVariableOpReadVariableOpDense_2nd/kernel* 
_output_shapes
:
??*
dtype0
u
Dense_2nd/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense_2nd/bias
n
"Dense_2nd/bias/Read/ReadVariableOpReadVariableOpDense_2nd/bias*
_output_shapes	
:?*
dtype0
?
Output_Softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameOutput_Softmax/kernel
?
)Output_Softmax/kernel/Read/ReadVariableOpReadVariableOpOutput_Softmax/kernel*
_output_shapes
:	?
*
dtype0
~
Output_Softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameOutput_Softmax/bias
w
'Output_Softmax/bias/Read/ReadVariableOpReadVariableOpOutput_Softmax/bias*
_output_shapes
:
*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
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

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?6B?6 B?6
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
R
 	variables
!regularization_losses
"trainable_variables
#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0regularization_losses
1trainable_variables
2	keras_api
R
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
h

;kernel
<bias
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
h

Gkernel
Hbias
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
6
	Mdecay
Nlearning_rate
Omomentum
Piter
?
0
1
2
3
4
5
$6
%7
+8
,9
-10
.11
;12
<13
A14
B15
G16
H17
 
f
0
1
2
3
$4
%5
+6
,7
;8
<9
A10
B11
G12
H13
?
Qlayer_regularization_losses
Rnon_trainable_variables
	variables
Slayer_metrics

Tlayers
Umetrics
regularization_losses
trainable_variables
 
ca
VARIABLE_VALUEInput_Conv2D_1st/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEInput_Conv2D_1st/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Vlayer_regularization_losses
Wnon_trainable_variables
	variables
Xlayer_metrics

Ylayers
Zmetrics
regularization_losses
trainable_variables
 
^\
VARIABLE_VALUEBatchNorm_1st/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEBatchNorm_1st/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEBatchNorm_1st/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEBatchNorm_1st/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 

0
1
?
[layer_regularization_losses
\non_trainable_variables
	variables
]layer_metrics

^layers
_metrics
regularization_losses
trainable_variables
 
 
 
?
`layer_regularization_losses
anon_trainable_variables
 	variables
blayer_metrics

clayers
dmetrics
!regularization_losses
"trainable_variables
][
VARIABLE_VALUEConv2D_2nd/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEConv2D_2nd/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
?
elayer_regularization_losses
fnon_trainable_variables
&	variables
glayer_metrics

hlayers
imetrics
'regularization_losses
(trainable_variables
 
^\
VARIABLE_VALUEBatchNorm_2nd/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEBatchNorm_2nd/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEBatchNorm_2nd/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEBatchNorm_2nd/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
-2
.3
 

+0
,1
?
jlayer_regularization_losses
knon_trainable_variables
/	variables
llayer_metrics

mlayers
nmetrics
0regularization_losses
1trainable_variables
 
 
 
?
olayer_regularization_losses
pnon_trainable_variables
3	variables
qlayer_metrics

rlayers
smetrics
4regularization_losses
5trainable_variables
 
 
 
?
tlayer_regularization_losses
unon_trainable_variables
7	variables
vlayer_metrics

wlayers
xmetrics
8regularization_losses
9trainable_variables
\Z
VARIABLE_VALUEDense_1st/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEDense_1st/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

;0
<1
 

;0
<1
?
ylayer_regularization_losses
znon_trainable_variables
=	variables
{layer_metrics

|layers
}metrics
>regularization_losses
?trainable_variables
\Z
VARIABLE_VALUEDense_2nd/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEDense_2nd/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
~layer_regularization_losses
non_trainable_variables
C	variables
?layer_metrics
?layers
?metrics
Dregularization_losses
Etrainable_variables
a_
VARIABLE_VALUEOutput_Softmax/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEOutput_Softmax/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1
 

G0
H1
?
 ?layer_regularization_losses
?non_trainable_variables
I	variables
?layer_metrics
?layers
?metrics
Jregularization_losses
Ktrainable_variables
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
-2
.3
 
F
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

?0
?1
 
 
 
 
 
 

0
1
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

-0
.1
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
?
&serving_default_Input_Conv2D_1st_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall&serving_default_Input_Conv2D_1st_inputInput_Conv2D_1st/kernelInput_Conv2D_1st/biasBatchNorm_1st/gammaBatchNorm_1st/betaBatchNorm_1st/moving_meanBatchNorm_1st/moving_varianceConv2D_2nd/kernelConv2D_2nd/biasBatchNorm_2nd/gammaBatchNorm_2nd/betaBatchNorm_2nd/moving_meanBatchNorm_2nd/moving_varianceDense_1st/kernelDense_1st/biasDense_2nd/kernelDense_2nd/biasOutput_Softmax/kernelOutput_Softmax/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_131855
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+Input_Conv2D_1st/kernel/Read/ReadVariableOp)Input_Conv2D_1st/bias/Read/ReadVariableOp'BatchNorm_1st/gamma/Read/ReadVariableOp&BatchNorm_1st/beta/Read/ReadVariableOp-BatchNorm_1st/moving_mean/Read/ReadVariableOp1BatchNorm_1st/moving_variance/Read/ReadVariableOp%Conv2D_2nd/kernel/Read/ReadVariableOp#Conv2D_2nd/bias/Read/ReadVariableOp'BatchNorm_2nd/gamma/Read/ReadVariableOp&BatchNorm_2nd/beta/Read/ReadVariableOp-BatchNorm_2nd/moving_mean/Read/ReadVariableOp1BatchNorm_2nd/moving_variance/Read/ReadVariableOp$Dense_1st/kernel/Read/ReadVariableOp"Dense_1st/bias/Read/ReadVariableOp$Dense_2nd/kernel/Read/ReadVariableOp"Dense_2nd/bias/Read/ReadVariableOp)Output_Softmax/kernel/Read/ReadVariableOp'Output_Softmax/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*'
Tin 
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_132551
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameInput_Conv2D_1st/kernelInput_Conv2D_1st/biasBatchNorm_1st/gammaBatchNorm_1st/betaBatchNorm_1st/moving_meanBatchNorm_1st/moving_varianceConv2D_2nd/kernelConv2D_2nd/biasBatchNorm_2nd/gammaBatchNorm_2nd/betaBatchNorm_2nd/moving_meanBatchNorm_2nd/moving_varianceDense_1st/kernelDense_1st/biasDense_2nd/kernelDense_2nd/biasOutput_Softmax/kernelOutput_Softmax/biasdecaylearning_ratemomentumSGD/itertotalcounttotal_1count_1*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_132639??	
?

*__inference_Dense_2nd_layer_call_fn_132430

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_1315292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_Input_Conv2D_1st_layer_call_fn_132103

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_1312862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?3
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131573
input_conv2d_1st_input
input_conv2d_1st_131297
input_conv2d_1st_131299
batchnorm_1st_131366
batchnorm_1st_131368
batchnorm_1st_131370
batchnorm_1st_131372
conv2d_2nd_131398
conv2d_2nd_131400
batchnorm_2nd_131467
batchnorm_2nd_131469
batchnorm_2nd_131471
batchnorm_2nd_131473
dense_1st_131513
dense_1st_131515
dense_2nd_131540
dense_2nd_131542
output_softmax_131567
output_softmax_131569
identity??%BatchNorm_1st/StatefulPartitionedCall?%BatchNorm_2nd/StatefulPartitionedCall?"Conv2D_2nd/StatefulPartitionedCall?!Dense_1st/StatefulPartitionedCall?!Dense_2nd/StatefulPartitionedCall?(Input_Conv2D_1st/StatefulPartitionedCall?&Output_Softmax/StatefulPartitionedCall?
(Input_Conv2D_1st/StatefulPartitionedCallStatefulPartitionedCallinput_conv2d_1st_inputinput_conv2d_1st_131297input_conv2d_1st_131299*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_1312862*
(Input_Conv2D_1st/StatefulPartitionedCall?
%BatchNorm_1st/StatefulPartitionedCallStatefulPartitionedCall1Input_Conv2D_1st/StatefulPartitionedCall:output:0batchnorm_1st_131366batchnorm_1st_131368batchnorm_1st_131370batchnorm_1st_131372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313212'
%BatchNorm_1st/StatefulPartitionedCall?
MaxPool_1st/PartitionedCallPartitionedCall.BatchNorm_1st/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_1311492
MaxPool_1st/PartitionedCall?
"Conv2D_2nd/StatefulPartitionedCallStatefulPartitionedCall$MaxPool_1st/PartitionedCall:output:0conv2d_2nd_131398conv2d_2nd_131400*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_1313872$
"Conv2D_2nd/StatefulPartitionedCall?
%BatchNorm_2nd/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_2nd/StatefulPartitionedCall:output:0batchnorm_2nd_131467batchnorm_2nd_131469batchnorm_2nd_131471batchnorm_2nd_131473*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314222'
%BatchNorm_2nd/StatefulPartitionedCall?
MaxPool_2nd/PartitionedCallPartitionedCall.BatchNorm_2nd/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_1312652
MaxPool_2nd/PartitionedCall?
Flatten/PartitionedCallPartitionedCall$MaxPool_2nd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_1314832
Flatten/PartitionedCall?
!Dense_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense_1st_131513dense_1st_131515*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_1st_layer_call_and_return_conditional_losses_1315022#
!Dense_1st/StatefulPartitionedCall?
!Dense_2nd/StatefulPartitionedCallStatefulPartitionedCall*Dense_1st/StatefulPartitionedCall:output:0dense_2nd_131540dense_2nd_131542*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_1315292#
!Dense_2nd/StatefulPartitionedCall?
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall*Dense_2nd/StatefulPartitionedCall:output:0output_softmax_131567output_softmax_131569*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_1315562(
&Output_Softmax/StatefulPartitionedCall?
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0&^BatchNorm_1st/StatefulPartitionedCall&^BatchNorm_2nd/StatefulPartitionedCall#^Conv2D_2nd/StatefulPartitionedCall"^Dense_1st/StatefulPartitionedCall"^Dense_2nd/StatefulPartitionedCall)^Input_Conv2D_1st/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2N
%BatchNorm_1st/StatefulPartitionedCall%BatchNorm_1st/StatefulPartitionedCall2N
%BatchNorm_2nd/StatefulPartitionedCall%BatchNorm_2nd/StatefulPartitionedCall2H
"Conv2D_2nd/StatefulPartitionedCall"Conv2D_2nd/StatefulPartitionedCall2F
!Dense_1st/StatefulPartitionedCall!Dense_1st/StatefulPartitionedCall2F
!Dense_2nd/StatefulPartitionedCall!Dense_2nd/StatefulPartitionedCall2T
(Input_Conv2D_1st/StatefulPartitionedCall(Input_Conv2D_1st/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_131339

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
!__inference__wrapped_model_131039
input_conv2d_1st_input=
9cnn_model_input_conv2d_1st_conv2d_readvariableop_resource>
:cnn_model_input_conv2d_1st_biasadd_readvariableop_resource3
/cnn_model_batchnorm_1st_readvariableop_resource5
1cnn_model_batchnorm_1st_readvariableop_1_resourceD
@cnn_model_batchnorm_1st_fusedbatchnormv3_readvariableop_resourceF
Bcnn_model_batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource7
3cnn_model_conv2d_2nd_conv2d_readvariableop_resource8
4cnn_model_conv2d_2nd_biasadd_readvariableop_resource3
/cnn_model_batchnorm_2nd_readvariableop_resource5
1cnn_model_batchnorm_2nd_readvariableop_1_resourceD
@cnn_model_batchnorm_2nd_fusedbatchnormv3_readvariableop_resourceF
Bcnn_model_batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource6
2cnn_model_dense_1st_matmul_readvariableop_resource7
3cnn_model_dense_1st_biasadd_readvariableop_resource6
2cnn_model_dense_2nd_matmul_readvariableop_resource7
3cnn_model_dense_2nd_biasadd_readvariableop_resource;
7cnn_model_output_softmax_matmul_readvariableop_resource<
8cnn_model_output_softmax_biasadd_readvariableop_resource
identity??7CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?9CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?&CNN_Model/BatchNorm_1st/ReadVariableOp?(CNN_Model/BatchNorm_1st/ReadVariableOp_1?7CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?9CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?&CNN_Model/BatchNorm_2nd/ReadVariableOp?(CNN_Model/BatchNorm_2nd/ReadVariableOp_1?+CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp?*CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp?*CNN_Model/Dense_1st/BiasAdd/ReadVariableOp?)CNN_Model/Dense_1st/MatMul/ReadVariableOp?*CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp?)CNN_Model/Dense_2nd/MatMul/ReadVariableOp?1CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp?0CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp?/CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp?.CNN_Model/Output_Softmax/MatMul/ReadVariableOp?
0CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOpReadVariableOp9cnn_model_input_conv2d_1st_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype022
0CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp?
!CNN_Model/Input_Conv2D_1st/Conv2DConv2Dinput_conv2d_1st_input8CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2#
!CNN_Model/Input_Conv2D_1st/Conv2D?
1CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOpReadVariableOp:cnn_model_input_conv2d_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp?
"CNN_Model/Input_Conv2D_1st/BiasAddBiasAdd*CNN_Model/Input_Conv2D_1st/Conv2D:output:09CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"CNN_Model/Input_Conv2D_1st/BiasAdd?
CNN_Model/Input_Conv2D_1st/ReluRelu+CNN_Model/Input_Conv2D_1st/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
CNN_Model/Input_Conv2D_1st/Relu?
&CNN_Model/BatchNorm_1st/ReadVariableOpReadVariableOp/cnn_model_batchnorm_1st_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&CNN_Model/BatchNorm_1st/ReadVariableOp?
(CNN_Model/BatchNorm_1st/ReadVariableOp_1ReadVariableOp1cnn_model_batchnorm_1st_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(CNN_Model/BatchNorm_1st/ReadVariableOp_1?
7CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOpReadVariableOp@cnn_model_batchnorm_1st_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?
9CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBcnn_model_batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?
(CNN_Model/BatchNorm_1st/FusedBatchNormV3FusedBatchNormV3-CNN_Model/Input_Conv2D_1st/Relu:activations:0.CNN_Model/BatchNorm_1st/ReadVariableOp:value:00CNN_Model/BatchNorm_1st/ReadVariableOp_1:value:0?CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp:value:0ACNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(CNN_Model/BatchNorm_1st/FusedBatchNormV3?
CNN_Model/MaxPool_1st/MaxPoolMaxPool,CNN_Model/BatchNorm_1st/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
CNN_Model/MaxPool_1st/MaxPool?
*CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOpReadVariableOp3cnn_model_conv2d_2nd_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02,
*CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp?
CNN_Model/Conv2D_2nd/Conv2DConv2D&CNN_Model/MaxPool_1st/MaxPool:output:02CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?*
paddingVALID*
strides
2
CNN_Model/Conv2D_2nd/Conv2D?
+CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOpReadVariableOp4cnn_model_conv2d_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp?
CNN_Model/Conv2D_2nd/BiasAddBiasAdd$CNN_Model/Conv2D_2nd/Conv2D:output:03CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?2
CNN_Model/Conv2D_2nd/BiasAdd?
CNN_Model/Conv2D_2nd/ReluRelu%CNN_Model/Conv2D_2nd/BiasAdd:output:0*
T0*0
_output_shapes
:?????????

?2
CNN_Model/Conv2D_2nd/Relu?
&CNN_Model/BatchNorm_2nd/ReadVariableOpReadVariableOp/cnn_model_batchnorm_2nd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&CNN_Model/BatchNorm_2nd/ReadVariableOp?
(CNN_Model/BatchNorm_2nd/ReadVariableOp_1ReadVariableOp1cnn_model_batchnorm_2nd_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(CNN_Model/BatchNorm_2nd/ReadVariableOp_1?
7CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOpReadVariableOp@cnn_model_batchnorm_2nd_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?
9CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBcnn_model_batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?
(CNN_Model/BatchNorm_2nd/FusedBatchNormV3FusedBatchNormV3'CNN_Model/Conv2D_2nd/Relu:activations:0.CNN_Model/BatchNorm_2nd/ReadVariableOp:value:00CNN_Model/BatchNorm_2nd/ReadVariableOp_1:value:0?CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp:value:0ACNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(CNN_Model/BatchNorm_2nd/FusedBatchNormV3?
CNN_Model/MaxPool_2nd/MaxPoolMaxPool,CNN_Model/BatchNorm_2nd/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
CNN_Model/MaxPool_2nd/MaxPool?
CNN_Model/Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
CNN_Model/Flatten/Const?
CNN_Model/Flatten/ReshapeReshape&CNN_Model/MaxPool_2nd/MaxPool:output:0 CNN_Model/Flatten/Const:output:0*
T0*(
_output_shapes
:??????????22
CNN_Model/Flatten/Reshape?
)CNN_Model/Dense_1st/MatMul/ReadVariableOpReadVariableOp2cnn_model_dense_1st_matmul_readvariableop_resource* 
_output_shapes
:
?2?*
dtype02+
)CNN_Model/Dense_1st/MatMul/ReadVariableOp?
CNN_Model/Dense_1st/MatMulMatMul"CNN_Model/Flatten/Reshape:output:01CNN_Model/Dense_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_1st/MatMul?
*CNN_Model/Dense_1st/BiasAdd/ReadVariableOpReadVariableOp3cnn_model_dense_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*CNN_Model/Dense_1st/BiasAdd/ReadVariableOp?
CNN_Model/Dense_1st/BiasAddBiasAdd$CNN_Model/Dense_1st/MatMul:product:02CNN_Model/Dense_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_1st/BiasAdd?
CNN_Model/Dense_1st/ReluRelu$CNN_Model/Dense_1st/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_1st/Relu?
)CNN_Model/Dense_2nd/MatMul/ReadVariableOpReadVariableOp2cnn_model_dense_2nd_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)CNN_Model/Dense_2nd/MatMul/ReadVariableOp?
CNN_Model/Dense_2nd/MatMulMatMul&CNN_Model/Dense_1st/Relu:activations:01CNN_Model/Dense_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_2nd/MatMul?
*CNN_Model/Dense_2nd/BiasAdd/ReadVariableOpReadVariableOp3cnn_model_dense_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp?
CNN_Model/Dense_2nd/BiasAddBiasAdd$CNN_Model/Dense_2nd/MatMul:product:02CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_2nd/BiasAdd?
CNN_Model/Dense_2nd/ReluRelu$CNN_Model/Dense_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
CNN_Model/Dense_2nd/Relu?
.CNN_Model/Output_Softmax/MatMul/ReadVariableOpReadVariableOp7cnn_model_output_softmax_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.CNN_Model/Output_Softmax/MatMul/ReadVariableOp?
CNN_Model/Output_Softmax/MatMulMatMul&CNN_Model/Dense_2nd/Relu:activations:06CNN_Model/Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
CNN_Model/Output_Softmax/MatMul?
/CNN_Model/Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp8cnn_model_output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp?
 CNN_Model/Output_Softmax/BiasAddBiasAdd)CNN_Model/Output_Softmax/MatMul:product:07CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 CNN_Model/Output_Softmax/BiasAdd?
 CNN_Model/Output_Softmax/SoftmaxSoftmax)CNN_Model/Output_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 CNN_Model/Output_Softmax/Softmax?
IdentityIdentity*CNN_Model/Output_Softmax/Softmax:softmax:08^CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp:^CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1'^CNN_Model/BatchNorm_1st/ReadVariableOp)^CNN_Model/BatchNorm_1st/ReadVariableOp_18^CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp:^CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1'^CNN_Model/BatchNorm_2nd/ReadVariableOp)^CNN_Model/BatchNorm_2nd/ReadVariableOp_1,^CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp+^CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp+^CNN_Model/Dense_1st/BiasAdd/ReadVariableOp*^CNN_Model/Dense_1st/MatMul/ReadVariableOp+^CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp*^CNN_Model/Dense_2nd/MatMul/ReadVariableOp2^CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp1^CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp0^CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp/^CNN_Model/Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2r
7CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp7CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp2v
9CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_19CNN_Model/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_12P
&CNN_Model/BatchNorm_1st/ReadVariableOp&CNN_Model/BatchNorm_1st/ReadVariableOp2T
(CNN_Model/BatchNorm_1st/ReadVariableOp_1(CNN_Model/BatchNorm_1st/ReadVariableOp_12r
7CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp7CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp2v
9CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_19CNN_Model/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_12P
&CNN_Model/BatchNorm_2nd/ReadVariableOp&CNN_Model/BatchNorm_2nd/ReadVariableOp2T
(CNN_Model/BatchNorm_2nd/ReadVariableOp_1(CNN_Model/BatchNorm_2nd/ReadVariableOp_12Z
+CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp+CNN_Model/Conv2D_2nd/BiasAdd/ReadVariableOp2X
*CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp*CNN_Model/Conv2D_2nd/Conv2D/ReadVariableOp2X
*CNN_Model/Dense_1st/BiasAdd/ReadVariableOp*CNN_Model/Dense_1st/BiasAdd/ReadVariableOp2V
)CNN_Model/Dense_1st/MatMul/ReadVariableOp)CNN_Model/Dense_1st/MatMul/ReadVariableOp2X
*CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp*CNN_Model/Dense_2nd/BiasAdd/ReadVariableOp2V
)CNN_Model/Dense_2nd/MatMul/ReadVariableOp)CNN_Model/Dense_2nd/MatMul/ReadVariableOp2f
1CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp1CNN_Model/Input_Conv2D_1st/BiasAdd/ReadVariableOp2d
0CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp0CNN_Model/Input_Conv2D_1st/Conv2D/ReadVariableOp2b
/CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp/CNN_Model/Output_Softmax/BiasAdd/ReadVariableOp2`
.CNN_Model/Output_Softmax/MatMul/ReadVariableOp.CNN_Model/Output_Softmax/MatMul/ReadVariableOp:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?k
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131930

inputs3
/input_conv2d_1st_conv2d_readvariableop_resource4
0input_conv2d_1st_biasadd_readvariableop_resource)
%batchnorm_1st_readvariableop_resource+
'batchnorm_1st_readvariableop_1_resource:
6batchnorm_1st_fusedbatchnormv3_readvariableop_resource<
8batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_2nd_conv2d_readvariableop_resource.
*conv2d_2nd_biasadd_readvariableop_resource)
%batchnorm_2nd_readvariableop_resource+
'batchnorm_2nd_readvariableop_1_resource:
6batchnorm_2nd_fusedbatchnormv3_readvariableop_resource<
8batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource,
(dense_1st_matmul_readvariableop_resource-
)dense_1st_biasadd_readvariableop_resource,
(dense_2nd_matmul_readvariableop_resource-
)dense_2nd_biasadd_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity??BatchNorm_1st/AssignNewValue?BatchNorm_1st/AssignNewValue_1?-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_1st/ReadVariableOp?BatchNorm_1st/ReadVariableOp_1?BatchNorm_2nd/AssignNewValue?BatchNorm_2nd/AssignNewValue_1?-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_2nd/ReadVariableOp?BatchNorm_2nd/ReadVariableOp_1?!Conv2D_2nd/BiasAdd/ReadVariableOp? Conv2D_2nd/Conv2D/ReadVariableOp? Dense_1st/BiasAdd/ReadVariableOp?Dense_1st/MatMul/ReadVariableOp? Dense_2nd/BiasAdd/ReadVariableOp?Dense_2nd/MatMul/ReadVariableOp?'Input_Conv2D_1st/BiasAdd/ReadVariableOp?&Input_Conv2D_1st/Conv2D/ReadVariableOp?%Output_Softmax/BiasAdd/ReadVariableOp?$Output_Softmax/MatMul/ReadVariableOp?
&Input_Conv2D_1st/Conv2D/ReadVariableOpReadVariableOp/input_conv2d_1st_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02(
&Input_Conv2D_1st/Conv2D/ReadVariableOp?
Input_Conv2D_1st/Conv2DConv2Dinputs.Input_Conv2D_1st/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Input_Conv2D_1st/Conv2D?
'Input_Conv2D_1st/BiasAdd/ReadVariableOpReadVariableOp0input_conv2d_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'Input_Conv2D_1st/BiasAdd/ReadVariableOp?
Input_Conv2D_1st/BiasAddBiasAdd Input_Conv2D_1st/Conv2D:output:0/Input_Conv2D_1st/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
Input_Conv2D_1st/BiasAdd?
Input_Conv2D_1st/ReluRelu!Input_Conv2D_1st/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Input_Conv2D_1st/Relu?
BatchNorm_1st/ReadVariableOpReadVariableOp%batchnorm_1st_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_1st/ReadVariableOp?
BatchNorm_1st/ReadVariableOp_1ReadVariableOp'batchnorm_1st_readvariableop_1_resource*
_output_shapes	
:?*
dtype02 
BatchNorm_1st/ReadVariableOp_1?
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOpReadVariableOp6batchnorm_1st_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp8batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1st/FusedBatchNormV3FusedBatchNormV3#Input_Conv2D_1st/Relu:activations:0$BatchNorm_1st/ReadVariableOp:value:0&BatchNorm_1st/ReadVariableOp_1:value:05BatchNorm_1st/FusedBatchNormV3/ReadVariableOp:value:07BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2 
BatchNorm_1st/FusedBatchNormV3?
BatchNorm_1st/AssignNewValueAssignVariableOp6batchnorm_1st_fusedbatchnormv3_readvariableop_resource+BatchNorm_1st/FusedBatchNormV3:batch_mean:0.^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*I
_class?
=;loc:@BatchNorm_1st/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BatchNorm_1st/AssignNewValue?
BatchNorm_1st/AssignNewValue_1AssignVariableOp8batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource/BatchNorm_1st/FusedBatchNormV3:batch_variance:00^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*K
_classA
?=loc:@BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02 
BatchNorm_1st/AssignNewValue_1?
MaxPool_1st/MaxPoolMaxPool"BatchNorm_1st/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_1st/MaxPool?
 Conv2D_2nd/Conv2D/ReadVariableOpReadVariableOp)conv2d_2nd_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 Conv2D_2nd/Conv2D/ReadVariableOp?
Conv2D_2nd/Conv2DConv2DMaxPool_1st/MaxPool:output:0(Conv2D_2nd/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?*
paddingVALID*
strides
2
Conv2D_2nd/Conv2D?
!Conv2D_2nd/BiasAdd/ReadVariableOpReadVariableOp*conv2d_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!Conv2D_2nd/BiasAdd/ReadVariableOp?
Conv2D_2nd/BiasAddBiasAddConv2D_2nd/Conv2D:output:0)Conv2D_2nd/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?2
Conv2D_2nd/BiasAdd?
Conv2D_2nd/ReluReluConv2D_2nd/BiasAdd:output:0*
T0*0
_output_shapes
:?????????

?2
Conv2D_2nd/Relu?
BatchNorm_2nd/ReadVariableOpReadVariableOp%batchnorm_2nd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2nd/ReadVariableOp?
BatchNorm_2nd/ReadVariableOp_1ReadVariableOp'batchnorm_2nd_readvariableop_1_resource*
_output_shapes	
:?*
dtype02 
BatchNorm_2nd/ReadVariableOp_1?
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOpReadVariableOp6batchnorm_2nd_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp8batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2nd/FusedBatchNormV3FusedBatchNormV3Conv2D_2nd/Relu:activations:0$BatchNorm_2nd/ReadVariableOp:value:0&BatchNorm_2nd/ReadVariableOp_1:value:05BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp:value:07BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2 
BatchNorm_2nd/FusedBatchNormV3?
BatchNorm_2nd/AssignNewValueAssignVariableOp6batchnorm_2nd_fusedbatchnormv3_readvariableop_resource+BatchNorm_2nd/FusedBatchNormV3:batch_mean:0.^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*I
_class?
=;loc:@BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BatchNorm_2nd/AssignNewValue?
BatchNorm_2nd/AssignNewValue_1AssignVariableOp8batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource/BatchNorm_2nd/FusedBatchNormV3:batch_variance:00^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*K
_classA
?=loc:@BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02 
BatchNorm_2nd/AssignNewValue_1?
MaxPool_2nd/MaxPoolMaxPool"BatchNorm_2nd/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_2nd/MaxPoolo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Flatten/Const?
Flatten/ReshapeReshapeMaxPool_2nd/MaxPool:output:0Flatten/Const:output:0*
T0*(
_output_shapes
:??????????22
Flatten/Reshape?
Dense_1st/MatMul/ReadVariableOpReadVariableOp(dense_1st_matmul_readvariableop_resource* 
_output_shapes
:
?2?*
dtype02!
Dense_1st/MatMul/ReadVariableOp?
Dense_1st/MatMulMatMulFlatten/Reshape:output:0'Dense_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_1st/MatMul?
 Dense_1st/BiasAdd/ReadVariableOpReadVariableOp)dense_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 Dense_1st/BiasAdd/ReadVariableOp?
Dense_1st/BiasAddBiasAddDense_1st/MatMul:product:0(Dense_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_1st/BiasAddw
Dense_1st/ReluReluDense_1st/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_1st/Relu?
Dense_2nd/MatMul/ReadVariableOpReadVariableOp(dense_2nd_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
Dense_2nd/MatMul/ReadVariableOp?
Dense_2nd/MatMulMatMulDense_1st/Relu:activations:0'Dense_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/MatMul?
 Dense_2nd/BiasAdd/ReadVariableOpReadVariableOp)dense_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 Dense_2nd/BiasAdd/ReadVariableOp?
Dense_2nd/BiasAddBiasAddDense_2nd/MatMul:product:0(Dense_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/BiasAddw
Dense_2nd/ReluReluDense_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/Relu?
$Output_Softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02&
$Output_Softmax/MatMul/ReadVariableOp?
Output_Softmax/MatMulMatMulDense_2nd/Relu:activations:0,Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/MatMul?
%Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%Output_Softmax/BiasAdd/ReadVariableOp?
Output_Softmax/BiasAddBiasAddOutput_Softmax/MatMul:product:0-Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/BiasAdd?
Output_Softmax/SoftmaxSoftmaxOutput_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/Softmax?
IdentityIdentity Output_Softmax/Softmax:softmax:0^BatchNorm_1st/AssignNewValue^BatchNorm_1st/AssignNewValue_1.^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp0^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_1st/ReadVariableOp^BatchNorm_1st/ReadVariableOp_1^BatchNorm_2nd/AssignNewValue^BatchNorm_2nd/AssignNewValue_1.^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp0^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_2nd/ReadVariableOp^BatchNorm_2nd/ReadVariableOp_1"^Conv2D_2nd/BiasAdd/ReadVariableOp!^Conv2D_2nd/Conv2D/ReadVariableOp!^Dense_1st/BiasAdd/ReadVariableOp ^Dense_1st/MatMul/ReadVariableOp!^Dense_2nd/BiasAdd/ReadVariableOp ^Dense_2nd/MatMul/ReadVariableOp(^Input_Conv2D_1st/BiasAdd/ReadVariableOp'^Input_Conv2D_1st/Conv2D/ReadVariableOp&^Output_Softmax/BiasAdd/ReadVariableOp%^Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2<
BatchNorm_1st/AssignNewValueBatchNorm_1st/AssignNewValue2@
BatchNorm_1st/AssignNewValue_1BatchNorm_1st/AssignNewValue_12^
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp2b
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_12<
BatchNorm_1st/ReadVariableOpBatchNorm_1st/ReadVariableOp2@
BatchNorm_1st/ReadVariableOp_1BatchNorm_1st/ReadVariableOp_12<
BatchNorm_2nd/AssignNewValueBatchNorm_2nd/AssignNewValue2@
BatchNorm_2nd/AssignNewValue_1BatchNorm_2nd/AssignNewValue_12^
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp2b
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_12<
BatchNorm_2nd/ReadVariableOpBatchNorm_2nd/ReadVariableOp2@
BatchNorm_2nd/ReadVariableOp_1BatchNorm_2nd/ReadVariableOp_12F
!Conv2D_2nd/BiasAdd/ReadVariableOp!Conv2D_2nd/BiasAdd/ReadVariableOp2D
 Conv2D_2nd/Conv2D/ReadVariableOp Conv2D_2nd/Conv2D/ReadVariableOp2D
 Dense_1st/BiasAdd/ReadVariableOp Dense_1st/BiasAdd/ReadVariableOp2B
Dense_1st/MatMul/ReadVariableOpDense_1st/MatMul/ReadVariableOp2D
 Dense_2nd/BiasAdd/ReadVariableOp Dense_2nd/BiasAdd/ReadVariableOp2B
Dense_2nd/MatMul/ReadVariableOpDense_2nd/MatMul/ReadVariableOp2R
'Input_Conv2D_1st/BiasAdd/ReadVariableOp'Input_Conv2D_1st/BiasAdd/ReadVariableOp2P
&Input_Conv2D_1st/Conv2D/ReadVariableOp&Input_Conv2D_1st/Conv2D/ReadVariableOp2N
%Output_Softmax/BiasAdd/ReadVariableOp%Output_Softmax/BiasAdd/ReadVariableOp2L
$Output_Softmax/MatMul/ReadVariableOp$Output_Softmax/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

*__inference_Dense_1st_layer_call_fn_132410

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_1st_layer_call_and_return_conditional_losses_1315022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????2::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????2
 
_user_specified_nameinputs
?3
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131623
input_conv2d_1st_input
input_conv2d_1st_131576
input_conv2d_1st_131578
batchnorm_1st_131581
batchnorm_1st_131583
batchnorm_1st_131585
batchnorm_1st_131587
conv2d_2nd_131591
conv2d_2nd_131593
batchnorm_2nd_131596
batchnorm_2nd_131598
batchnorm_2nd_131600
batchnorm_2nd_131602
dense_1st_131607
dense_1st_131609
dense_2nd_131612
dense_2nd_131614
output_softmax_131617
output_softmax_131619
identity??%BatchNorm_1st/StatefulPartitionedCall?%BatchNorm_2nd/StatefulPartitionedCall?"Conv2D_2nd/StatefulPartitionedCall?!Dense_1st/StatefulPartitionedCall?!Dense_2nd/StatefulPartitionedCall?(Input_Conv2D_1st/StatefulPartitionedCall?&Output_Softmax/StatefulPartitionedCall?
(Input_Conv2D_1st/StatefulPartitionedCallStatefulPartitionedCallinput_conv2d_1st_inputinput_conv2d_1st_131576input_conv2d_1st_131578*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_1312862*
(Input_Conv2D_1st/StatefulPartitionedCall?
%BatchNorm_1st/StatefulPartitionedCallStatefulPartitionedCall1Input_Conv2D_1st/StatefulPartitionedCall:output:0batchnorm_1st_131581batchnorm_1st_131583batchnorm_1st_131585batchnorm_1st_131587*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313392'
%BatchNorm_1st/StatefulPartitionedCall?
MaxPool_1st/PartitionedCallPartitionedCall.BatchNorm_1st/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_1311492
MaxPool_1st/PartitionedCall?
"Conv2D_2nd/StatefulPartitionedCallStatefulPartitionedCall$MaxPool_1st/PartitionedCall:output:0conv2d_2nd_131591conv2d_2nd_131593*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_1313872$
"Conv2D_2nd/StatefulPartitionedCall?
%BatchNorm_2nd/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_2nd/StatefulPartitionedCall:output:0batchnorm_2nd_131596batchnorm_2nd_131598batchnorm_2nd_131600batchnorm_2nd_131602*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314402'
%BatchNorm_2nd/StatefulPartitionedCall?
MaxPool_2nd/PartitionedCallPartitionedCall.BatchNorm_2nd/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_1312652
MaxPool_2nd/PartitionedCall?
Flatten/PartitionedCallPartitionedCall$MaxPool_2nd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_1314832
Flatten/PartitionedCall?
!Dense_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense_1st_131607dense_1st_131609*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_1st_layer_call_and_return_conditional_losses_1315022#
!Dense_1st/StatefulPartitionedCall?
!Dense_2nd/StatefulPartitionedCallStatefulPartitionedCall*Dense_1st/StatefulPartitionedCall:output:0dense_2nd_131612dense_2nd_131614*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_1315292#
!Dense_2nd/StatefulPartitionedCall?
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall*Dense_2nd/StatefulPartitionedCall:output:0output_softmax_131617output_softmax_131619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_1315562(
&Output_Softmax/StatefulPartitionedCall?
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0&^BatchNorm_1st/StatefulPartitionedCall&^BatchNorm_2nd/StatefulPartitionedCall#^Conv2D_2nd/StatefulPartitionedCall"^Dense_1st/StatefulPartitionedCall"^Dense_2nd/StatefulPartitionedCall)^Input_Conv2D_1st/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2N
%BatchNorm_1st/StatefulPartitionedCall%BatchNorm_1st/StatefulPartitionedCall2N
%BatchNorm_2nd/StatefulPartitionedCall%BatchNorm_2nd/StatefulPartitionedCall2H
"Conv2D_2nd/StatefulPartitionedCall"Conv2D_2nd/StatefulPartitionedCall2F
!Dense_1st/StatefulPartitionedCall!Dense_1st/StatefulPartitionedCall2F
!Dense_2nd/StatefulPartitionedCall!Dense_2nd/StatefulPartitionedCall2T
(Input_Conv2D_1st/StatefulPartitionedCall(Input_Conv2D_1st/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?	
?
E__inference_Dense_1st_layer_call_and_return_conditional_losses_132401

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?2?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????2
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_1st_layer_call_fn_132154

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_Output_Softmax_layer_call_fn_132450

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_1315562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_131440

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_131101

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_131321

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_131265

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_131217

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_MaxPool_1st_layer_call_fn_131155

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_1311492
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_2nd_layer_call_fn_132315

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?

?
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_131286

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
*__inference_CNN_Model_layer_call_fn_131715
input_conv2d_1st_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_conv2d_1st_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_CNN_Model_layer_call_and_return_conditional_losses_1316762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?3
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131767

inputs
input_conv2d_1st_131720
input_conv2d_1st_131722
batchnorm_1st_131725
batchnorm_1st_131727
batchnorm_1st_131729
batchnorm_1st_131731
conv2d_2nd_131735
conv2d_2nd_131737
batchnorm_2nd_131740
batchnorm_2nd_131742
batchnorm_2nd_131744
batchnorm_2nd_131746
dense_1st_131751
dense_1st_131753
dense_2nd_131756
dense_2nd_131758
output_softmax_131761
output_softmax_131763
identity??%BatchNorm_1st/StatefulPartitionedCall?%BatchNorm_2nd/StatefulPartitionedCall?"Conv2D_2nd/StatefulPartitionedCall?!Dense_1st/StatefulPartitionedCall?!Dense_2nd/StatefulPartitionedCall?(Input_Conv2D_1st/StatefulPartitionedCall?&Output_Softmax/StatefulPartitionedCall?
(Input_Conv2D_1st/StatefulPartitionedCallStatefulPartitionedCallinputsinput_conv2d_1st_131720input_conv2d_1st_131722*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_1312862*
(Input_Conv2D_1st/StatefulPartitionedCall?
%BatchNorm_1st/StatefulPartitionedCallStatefulPartitionedCall1Input_Conv2D_1st/StatefulPartitionedCall:output:0batchnorm_1st_131725batchnorm_1st_131727batchnorm_1st_131729batchnorm_1st_131731*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313392'
%BatchNorm_1st/StatefulPartitionedCall?
MaxPool_1st/PartitionedCallPartitionedCall.BatchNorm_1st/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_1311492
MaxPool_1st/PartitionedCall?
"Conv2D_2nd/StatefulPartitionedCallStatefulPartitionedCall$MaxPool_1st/PartitionedCall:output:0conv2d_2nd_131735conv2d_2nd_131737*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_1313872$
"Conv2D_2nd/StatefulPartitionedCall?
%BatchNorm_2nd/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_2nd/StatefulPartitionedCall:output:0batchnorm_2nd_131740batchnorm_2nd_131742batchnorm_2nd_131744batchnorm_2nd_131746*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314402'
%BatchNorm_2nd/StatefulPartitionedCall?
MaxPool_2nd/PartitionedCallPartitionedCall.BatchNorm_2nd/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_1312652
MaxPool_2nd/PartitionedCall?
Flatten/PartitionedCallPartitionedCall$MaxPool_2nd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_1314832
Flatten/PartitionedCall?
!Dense_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense_1st_131751dense_1st_131753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_1st_layer_call_and_return_conditional_losses_1315022#
!Dense_1st/StatefulPartitionedCall?
!Dense_2nd/StatefulPartitionedCallStatefulPartitionedCall*Dense_1st/StatefulPartitionedCall:output:0dense_2nd_131756dense_2nd_131758*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_1315292#
!Dense_2nd/StatefulPartitionedCall?
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall*Dense_2nd/StatefulPartitionedCall:output:0output_softmax_131761output_softmax_131763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_1315562(
&Output_Softmax/StatefulPartitionedCall?
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0&^BatchNorm_1st/StatefulPartitionedCall&^BatchNorm_2nd/StatefulPartitionedCall#^Conv2D_2nd/StatefulPartitionedCall"^Dense_1st/StatefulPartitionedCall"^Dense_2nd/StatefulPartitionedCall)^Input_Conv2D_1st/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2N
%BatchNorm_1st/StatefulPartitionedCall%BatchNorm_1st/StatefulPartitionedCall2N
%BatchNorm_2nd/StatefulPartitionedCall%BatchNorm_2nd/StatefulPartitionedCall2H
"Conv2D_2nd/StatefulPartitionedCall"Conv2D_2nd/StatefulPartitionedCall2F
!Dense_1st/StatefulPartitionedCall!Dense_1st/StatefulPartitionedCall2F
!Dense_2nd/StatefulPartitionedCall!Dense_2nd/StatefulPartitionedCall2T
(Input_Conv2D_1st/StatefulPartitionedCall(Input_Conv2D_1st/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_2nd_layer_call_fn_132366

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1312172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132289

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132141

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_132441

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_132001

inputs3
/input_conv2d_1st_conv2d_readvariableop_resource4
0input_conv2d_1st_biasadd_readvariableop_resource)
%batchnorm_1st_readvariableop_resource+
'batchnorm_1st_readvariableop_1_resource:
6batchnorm_1st_fusedbatchnormv3_readvariableop_resource<
8batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_2nd_conv2d_readvariableop_resource.
*conv2d_2nd_biasadd_readvariableop_resource)
%batchnorm_2nd_readvariableop_resource+
'batchnorm_2nd_readvariableop_1_resource:
6batchnorm_2nd_fusedbatchnormv3_readvariableop_resource<
8batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource,
(dense_1st_matmul_readvariableop_resource-
)dense_1st_biasadd_readvariableop_resource,
(dense_2nd_matmul_readvariableop_resource-
)dense_2nd_biasadd_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity??-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_1st/ReadVariableOp?BatchNorm_1st/ReadVariableOp_1?-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_2nd/ReadVariableOp?BatchNorm_2nd/ReadVariableOp_1?!Conv2D_2nd/BiasAdd/ReadVariableOp? Conv2D_2nd/Conv2D/ReadVariableOp? Dense_1st/BiasAdd/ReadVariableOp?Dense_1st/MatMul/ReadVariableOp? Dense_2nd/BiasAdd/ReadVariableOp?Dense_2nd/MatMul/ReadVariableOp?'Input_Conv2D_1st/BiasAdd/ReadVariableOp?&Input_Conv2D_1st/Conv2D/ReadVariableOp?%Output_Softmax/BiasAdd/ReadVariableOp?$Output_Softmax/MatMul/ReadVariableOp?
&Input_Conv2D_1st/Conv2D/ReadVariableOpReadVariableOp/input_conv2d_1st_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02(
&Input_Conv2D_1st/Conv2D/ReadVariableOp?
Input_Conv2D_1st/Conv2DConv2Dinputs.Input_Conv2D_1st/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Input_Conv2D_1st/Conv2D?
'Input_Conv2D_1st/BiasAdd/ReadVariableOpReadVariableOp0input_conv2d_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'Input_Conv2D_1st/BiasAdd/ReadVariableOp?
Input_Conv2D_1st/BiasAddBiasAdd Input_Conv2D_1st/Conv2D:output:0/Input_Conv2D_1st/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
Input_Conv2D_1st/BiasAdd?
Input_Conv2D_1st/ReluRelu!Input_Conv2D_1st/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Input_Conv2D_1st/Relu?
BatchNorm_1st/ReadVariableOpReadVariableOp%batchnorm_1st_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_1st/ReadVariableOp?
BatchNorm_1st/ReadVariableOp_1ReadVariableOp'batchnorm_1st_readvariableop_1_resource*
_output_shapes	
:?*
dtype02 
BatchNorm_1st/ReadVariableOp_1?
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOpReadVariableOp6batchnorm_1st_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp?
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp8batchnorm_1st_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1st/FusedBatchNormV3FusedBatchNormV3#Input_Conv2D_1st/Relu:activations:0$BatchNorm_1st/ReadVariableOp:value:0&BatchNorm_1st/ReadVariableOp_1:value:05BatchNorm_1st/FusedBatchNormV3/ReadVariableOp:value:07BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2 
BatchNorm_1st/FusedBatchNormV3?
MaxPool_1st/MaxPoolMaxPool"BatchNorm_1st/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_1st/MaxPool?
 Conv2D_2nd/Conv2D/ReadVariableOpReadVariableOp)conv2d_2nd_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 Conv2D_2nd/Conv2D/ReadVariableOp?
Conv2D_2nd/Conv2DConv2DMaxPool_1st/MaxPool:output:0(Conv2D_2nd/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?*
paddingVALID*
strides
2
Conv2D_2nd/Conv2D?
!Conv2D_2nd/BiasAdd/ReadVariableOpReadVariableOp*conv2d_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!Conv2D_2nd/BiasAdd/ReadVariableOp?
Conv2D_2nd/BiasAddBiasAddConv2D_2nd/Conv2D:output:0)Conv2D_2nd/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?2
Conv2D_2nd/BiasAdd?
Conv2D_2nd/ReluReluConv2D_2nd/BiasAdd:output:0*
T0*0
_output_shapes
:?????????

?2
Conv2D_2nd/Relu?
BatchNorm_2nd/ReadVariableOpReadVariableOp%batchnorm_2nd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2nd/ReadVariableOp?
BatchNorm_2nd/ReadVariableOp_1ReadVariableOp'batchnorm_2nd_readvariableop_1_resource*
_output_shapes	
:?*
dtype02 
BatchNorm_2nd/ReadVariableOp_1?
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOpReadVariableOp6batchnorm_2nd_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp?
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp8batchnorm_2nd_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2nd/FusedBatchNormV3FusedBatchNormV3Conv2D_2nd/Relu:activations:0$BatchNorm_2nd/ReadVariableOp:value:0&BatchNorm_2nd/ReadVariableOp_1:value:05BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp:value:07BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
is_training( 2 
BatchNorm_2nd/FusedBatchNormV3?
MaxPool_2nd/MaxPoolMaxPool"BatchNorm_2nd/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_2nd/MaxPoolo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Flatten/Const?
Flatten/ReshapeReshapeMaxPool_2nd/MaxPool:output:0Flatten/Const:output:0*
T0*(
_output_shapes
:??????????22
Flatten/Reshape?
Dense_1st/MatMul/ReadVariableOpReadVariableOp(dense_1st_matmul_readvariableop_resource* 
_output_shapes
:
?2?*
dtype02!
Dense_1st/MatMul/ReadVariableOp?
Dense_1st/MatMulMatMulFlatten/Reshape:output:0'Dense_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_1st/MatMul?
 Dense_1st/BiasAdd/ReadVariableOpReadVariableOp)dense_1st_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 Dense_1st/BiasAdd/ReadVariableOp?
Dense_1st/BiasAddBiasAddDense_1st/MatMul:product:0(Dense_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_1st/BiasAddw
Dense_1st/ReluReluDense_1st/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_1st/Relu?
Dense_2nd/MatMul/ReadVariableOpReadVariableOp(dense_2nd_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
Dense_2nd/MatMul/ReadVariableOp?
Dense_2nd/MatMulMatMulDense_1st/Relu:activations:0'Dense_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/MatMul?
 Dense_2nd/BiasAdd/ReadVariableOpReadVariableOp)dense_2nd_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 Dense_2nd/BiasAdd/ReadVariableOp?
Dense_2nd/BiasAddBiasAddDense_2nd/MatMul:product:0(Dense_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/BiasAddw
Dense_2nd/ReluReluDense_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_2nd/Relu?
$Output_Softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02&
$Output_Softmax/MatMul/ReadVariableOp?
Output_Softmax/MatMulMatMulDense_2nd/Relu:activations:0,Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/MatMul?
%Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%Output_Softmax/BiasAdd/ReadVariableOp?
Output_Softmax/BiasAddBiasAddOutput_Softmax/MatMul:product:0-Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/BiasAdd?
Output_Softmax/SoftmaxSoftmaxOutput_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Output_Softmax/Softmax?
IdentityIdentity Output_Softmax/Softmax:softmax:0.^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp0^BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_1st/ReadVariableOp^BatchNorm_1st/ReadVariableOp_1.^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp0^BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_2nd/ReadVariableOp^BatchNorm_2nd/ReadVariableOp_1"^Conv2D_2nd/BiasAdd/ReadVariableOp!^Conv2D_2nd/Conv2D/ReadVariableOp!^Dense_1st/BiasAdd/ReadVariableOp ^Dense_1st/MatMul/ReadVariableOp!^Dense_2nd/BiasAdd/ReadVariableOp ^Dense_2nd/MatMul/ReadVariableOp(^Input_Conv2D_1st/BiasAdd/ReadVariableOp'^Input_Conv2D_1st/Conv2D/ReadVariableOp&^Output_Softmax/BiasAdd/ReadVariableOp%^Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2^
-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp-BatchNorm_1st/FusedBatchNormV3/ReadVariableOp2b
/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_1/BatchNorm_1st/FusedBatchNormV3/ReadVariableOp_12<
BatchNorm_1st/ReadVariableOpBatchNorm_1st/ReadVariableOp2@
BatchNorm_1st/ReadVariableOp_1BatchNorm_1st/ReadVariableOp_12^
-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp-BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp2b
/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_1/BatchNorm_2nd/FusedBatchNormV3/ReadVariableOp_12<
BatchNorm_2nd/ReadVariableOpBatchNorm_2nd/ReadVariableOp2@
BatchNorm_2nd/ReadVariableOp_1BatchNorm_2nd/ReadVariableOp_12F
!Conv2D_2nd/BiasAdd/ReadVariableOp!Conv2D_2nd/BiasAdd/ReadVariableOp2D
 Conv2D_2nd/Conv2D/ReadVariableOp Conv2D_2nd/Conv2D/ReadVariableOp2D
 Dense_1st/BiasAdd/ReadVariableOp Dense_1st/BiasAdd/ReadVariableOp2B
Dense_1st/MatMul/ReadVariableOpDense_1st/MatMul/ReadVariableOp2D
 Dense_2nd/BiasAdd/ReadVariableOp Dense_2nd/BiasAdd/ReadVariableOp2B
Dense_2nd/MatMul/ReadVariableOpDense_2nd/MatMul/ReadVariableOp2R
'Input_Conv2D_1st/BiasAdd/ReadVariableOp'Input_Conv2D_1st/BiasAdd/ReadVariableOp2P
&Input_Conv2D_1st/Conv2D/ReadVariableOp&Input_Conv2D_1st/Conv2D/ReadVariableOp2N
%Output_Softmax/BiasAdd/ReadVariableOp%Output_Softmax/BiasAdd/ReadVariableOp2L
$Output_Softmax/MatMul/ReadVariableOp$Output_Softmax/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
_
C__inference_Flatten_layer_call_and_return_conditional_losses_131483

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????22	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????22

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_CNN_Model_layer_call_fn_132083

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_CNN_Model_layer_call_and_return_conditional_losses_1317672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
D
(__inference_Flatten_layer_call_fn_132390

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
:??????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_1314832
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????22

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_131248

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_131855
input_conv2d_1st_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_conv2d_1st_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1310392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?

?
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_132242

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????

?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?:
?

__inference__traced_save_132551
file_prefix6
2savev2_input_conv2d_1st_kernel_read_readvariableop4
0savev2_input_conv2d_1st_bias_read_readvariableop2
.savev2_batchnorm_1st_gamma_read_readvariableop1
-savev2_batchnorm_1st_beta_read_readvariableop8
4savev2_batchnorm_1st_moving_mean_read_readvariableop<
8savev2_batchnorm_1st_moving_variance_read_readvariableop0
,savev2_conv2d_2nd_kernel_read_readvariableop.
*savev2_conv2d_2nd_bias_read_readvariableop2
.savev2_batchnorm_2nd_gamma_read_readvariableop1
-savev2_batchnorm_2nd_beta_read_readvariableop8
4savev2_batchnorm_2nd_moving_mean_read_readvariableop<
8savev2_batchnorm_2nd_moving_variance_read_readvariableop/
+savev2_dense_1st_kernel_read_readvariableop-
)savev2_dense_1st_bias_read_readvariableop/
+savev2_dense_2nd_kernel_read_readvariableop-
)savev2_dense_2nd_bias_read_readvariableop4
0savev2_output_softmax_kernel_read_readvariableop2
.savev2_output_softmax_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_input_conv2d_1st_kernel_read_readvariableop0savev2_input_conv2d_1st_bias_read_readvariableop.savev2_batchnorm_1st_gamma_read_readvariableop-savev2_batchnorm_1st_beta_read_readvariableop4savev2_batchnorm_1st_moving_mean_read_readvariableop8savev2_batchnorm_1st_moving_variance_read_readvariableop,savev2_conv2d_2nd_kernel_read_readvariableop*savev2_conv2d_2nd_bias_read_readvariableop.savev2_batchnorm_2nd_gamma_read_readvariableop-savev2_batchnorm_2nd_beta_read_readvariableop4savev2_batchnorm_2nd_moving_mean_read_readvariableop8savev2_batchnorm_2nd_moving_variance_read_readvariableop+savev2_dense_1st_kernel_read_readvariableop)savev2_dense_1st_bias_read_readvariableop+savev2_dense_2nd_kernel_read_readvariableop)savev2_dense_2nd_bias_read_readvariableop0savev2_output_softmax_kernel_read_readvariableop.savev2_output_softmax_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :?:?:?:?:?:?:??:?:?:?:?:?:
?2?:?:
??:?:	?
:
: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?2?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: 
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132123

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132187

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?3
?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131676

inputs
input_conv2d_1st_131629
input_conv2d_1st_131631
batchnorm_1st_131634
batchnorm_1st_131636
batchnorm_1st_131638
batchnorm_1st_131640
conv2d_2nd_131644
conv2d_2nd_131646
batchnorm_2nd_131649
batchnorm_2nd_131651
batchnorm_2nd_131653
batchnorm_2nd_131655
dense_1st_131660
dense_1st_131662
dense_2nd_131665
dense_2nd_131667
output_softmax_131670
output_softmax_131672
identity??%BatchNorm_1st/StatefulPartitionedCall?%BatchNorm_2nd/StatefulPartitionedCall?"Conv2D_2nd/StatefulPartitionedCall?!Dense_1st/StatefulPartitionedCall?!Dense_2nd/StatefulPartitionedCall?(Input_Conv2D_1st/StatefulPartitionedCall?&Output_Softmax/StatefulPartitionedCall?
(Input_Conv2D_1st/StatefulPartitionedCallStatefulPartitionedCallinputsinput_conv2d_1st_131629input_conv2d_1st_131631*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_1312862*
(Input_Conv2D_1st/StatefulPartitionedCall?
%BatchNorm_1st/StatefulPartitionedCallStatefulPartitionedCall1Input_Conv2D_1st/StatefulPartitionedCall:output:0batchnorm_1st_131634batchnorm_1st_131636batchnorm_1st_131638batchnorm_1st_131640*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313212'
%BatchNorm_1st/StatefulPartitionedCall?
MaxPool_1st/PartitionedCallPartitionedCall.BatchNorm_1st/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_1311492
MaxPool_1st/PartitionedCall?
"Conv2D_2nd/StatefulPartitionedCallStatefulPartitionedCall$MaxPool_1st/PartitionedCall:output:0conv2d_2nd_131644conv2d_2nd_131646*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_1313872$
"Conv2D_2nd/StatefulPartitionedCall?
%BatchNorm_2nd/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_2nd/StatefulPartitionedCall:output:0batchnorm_2nd_131649batchnorm_2nd_131651batchnorm_2nd_131653batchnorm_2nd_131655*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314222'
%BatchNorm_2nd/StatefulPartitionedCall?
MaxPool_2nd/PartitionedCallPartitionedCall.BatchNorm_2nd/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_1312652
MaxPool_2nd/PartitionedCall?
Flatten/PartitionedCallPartitionedCall$MaxPool_2nd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_1314832
Flatten/PartitionedCall?
!Dense_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense_1st_131660dense_1st_131662*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_1st_layer_call_and_return_conditional_losses_1315022#
!Dense_1st/StatefulPartitionedCall?
!Dense_2nd/StatefulPartitionedCallStatefulPartitionedCall*Dense_1st/StatefulPartitionedCall:output:0dense_2nd_131665dense_2nd_131667*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_1315292#
!Dense_2nd/StatefulPartitionedCall?
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall*Dense_2nd/StatefulPartitionedCall:output:0output_softmax_131670output_softmax_131672*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_1315562(
&Output_Softmax/StatefulPartitionedCall?
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0&^BatchNorm_1st/StatefulPartitionedCall&^BatchNorm_2nd/StatefulPartitionedCall#^Conv2D_2nd/StatefulPartitionedCall"^Dense_1st/StatefulPartitionedCall"^Dense_2nd/StatefulPartitionedCall)^Input_Conv2D_1st/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2N
%BatchNorm_1st/StatefulPartitionedCall%BatchNorm_1st/StatefulPartitionedCall2N
%BatchNorm_2nd/StatefulPartitionedCall%BatchNorm_2nd/StatefulPartitionedCall2H
"Conv2D_2nd/StatefulPartitionedCall"Conv2D_2nd/StatefulPartitionedCall2F
!Dense_1st/StatefulPartitionedCall!Dense_1st/StatefulPartitionedCall2F
!Dense_2nd/StatefulPartitionedCall!Dense_2nd/StatefulPartitionedCall2T
(Input_Conv2D_1st/StatefulPartitionedCall(Input_Conv2D_1st/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132335

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_CNN_Model_layer_call_fn_131806
input_conv2d_1st_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_conv2d_1st_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_CNN_Model_layer_call_and_return_conditional_losses_1317672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:?????????  
0
_user_specified_nameInput_Conv2D_1st_input
?	
?
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_131529

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_2nd_layer_call_fn_132379

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1312482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_131422

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
_
C__inference_Flatten_layer_call_and_return_conditional_losses_132385

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????22	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????22

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_2nd_layer_call_fn_132302

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_1314222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?

?
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_131387

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????

?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
"__inference__traced_restore_132639
file_prefix,
(assignvariableop_input_conv2d_1st_kernel,
(assignvariableop_1_input_conv2d_1st_bias*
&assignvariableop_2_batchnorm_1st_gamma)
%assignvariableop_3_batchnorm_1st_beta0
,assignvariableop_4_batchnorm_1st_moving_mean4
0assignvariableop_5_batchnorm_1st_moving_variance(
$assignvariableop_6_conv2d_2nd_kernel&
"assignvariableop_7_conv2d_2nd_bias*
&assignvariableop_8_batchnorm_2nd_gamma)
%assignvariableop_9_batchnorm_2nd_beta1
-assignvariableop_10_batchnorm_2nd_moving_mean5
1assignvariableop_11_batchnorm_2nd_moving_variance(
$assignvariableop_12_dense_1st_kernel&
"assignvariableop_13_dense_1st_bias(
$assignvariableop_14_dense_2nd_kernel&
"assignvariableop_15_dense_2nd_bias-
)assignvariableop_16_output_softmax_kernel+
'assignvariableop_17_output_softmax_bias
assignvariableop_18_decay%
!assignvariableop_19_learning_rate 
assignvariableop_20_momentum 
assignvariableop_21_sgd_iter
assignvariableop_22_total
assignvariableop_23_count
assignvariableop_24_total_1
assignvariableop_25_count_1
identity_27??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_input_conv2d_1st_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_input_conv2d_1st_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp&assignvariableop_2_batchnorm_1st_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_batchnorm_1st_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_batchnorm_1st_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp0assignvariableop_5_batchnorm_1st_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_2nd_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_2nd_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_batchnorm_2nd_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_batchnorm_2nd_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_batchnorm_2nd_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp1assignvariableop_11_batchnorm_2nd_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_1st_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_1st_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_2nd_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_2nd_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_output_softmax_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_output_softmax_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_sgd_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_259
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26?
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*}
_input_shapesl
j: ::::::::::::::::::::::::::2$
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
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
c
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_131149

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_132094

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_Dense_1st_layer_call_and_return_conditional_losses_131502

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?2?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????2
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132353

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_1st_layer_call_fn_132231

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1311322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_Conv2D_2nd_layer_call_fn_132251

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_1313872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132205

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_131556

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_132421

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
*__inference_CNN_Model_layer_call_fn_132042

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_CNN_Model_layer_call_and_return_conditional_losses_1316762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132271

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????

?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????

?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????

?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
H
,__inference_MaxPool_2nd_layer_call_fn_131271

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_1312652
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_1st_layer_call_fn_132218

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1311012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_BatchNorm_1st_layer_call_fn_132167

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_1313392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_131132

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
a
Input_Conv2D_1st_inputG
(serving_default_Input_Conv2D_1st_input:0?????????  B
Output_Softmax0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?V
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?Q
_tf_keras_sequential?Q{"class_name": "Sequential", "name": "CNN_Model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "CNN_Model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_Conv2D_1st_input"}}, {"class_name": "Conv2D", "config": {"name": "Input_Conv2D_1st", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1st", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_1st", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv2D_2nd", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2nd", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_2nd", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Dense_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Dense_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "CNN_Model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_Conv2D_1st_input"}}, {"class_name": "Conv2D", "config": {"name": "Input_Conv2D_1st", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1st", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_1st", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv2D_2nd", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2nd", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_2nd", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Dense_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Dense_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "Input_Conv2D_1st", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "Input_Conv2D_1st", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?	
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_1st", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BatchNorm_1st", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
?
 	variables
!regularization_losses
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "MaxPool_1st", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MaxPool_1st", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv2D_2nd", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv2D_2nd", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
?	
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0regularization_losses
1trainable_variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_2nd", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BatchNorm_2nd", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 10, 256]}}
?
3	variables
4regularization_losses
5trainable_variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "MaxPool_2nd", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MaxPool_2nd", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
7	variables
8regularization_losses
9trainable_variables
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "Flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

;kernel
<bias
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_1st", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dense_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6400]}}
?

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_2nd", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dense_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

Gkernel
Hbias
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Output_Softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
I
	Mdecay
Nlearning_rate
Omomentum
Piter"
	optimizer
?
0
1
2
3
4
5
$6
%7
+8
,9
-10
.11
;12
<13
A14
B15
G16
H17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
$4
%5
+6
,7
;8
<9
A10
B11
G12
H13"
trackable_list_wrapper
?
Qlayer_regularization_losses
Rnon_trainable_variables
	variables
Slayer_metrics

Tlayers
Umetrics
regularization_losses
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
2:0?2Input_Conv2D_1st/kernel
$:"?2Input_Conv2D_1st/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Vlayer_regularization_losses
Wnon_trainable_variables
	variables
Xlayer_metrics

Ylayers
Zmetrics
regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
": ?2BatchNorm_1st/gamma
!:?2BatchNorm_1st/beta
*:(? (2BatchNorm_1st/moving_mean
.:,? (2BatchNorm_1st/moving_variance
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
[layer_regularization_losses
\non_trainable_variables
	variables
]layer_metrics

^layers
_metrics
regularization_losses
trainable_variables
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
`layer_regularization_losses
anon_trainable_variables
 	variables
blayer_metrics

clayers
dmetrics
!regularization_losses
"trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2Conv2D_2nd/kernel
:?2Conv2D_2nd/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
elayer_regularization_losses
fnon_trainable_variables
&	variables
glayer_metrics

hlayers
imetrics
'regularization_losses
(trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
": ?2BatchNorm_2nd/gamma
!:?2BatchNorm_2nd/beta
*:(? (2BatchNorm_2nd/moving_mean
.:,? (2BatchNorm_2nd/moving_variance
<
+0
,1
-2
.3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
jlayer_regularization_losses
knon_trainable_variables
/	variables
llayer_metrics

mlayers
nmetrics
0regularization_losses
1trainable_variables
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
olayer_regularization_losses
pnon_trainable_variables
3	variables
qlayer_metrics

rlayers
smetrics
4regularization_losses
5trainable_variables
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
tlayer_regularization_losses
unon_trainable_variables
7	variables
vlayer_metrics

wlayers
xmetrics
8regularization_losses
9trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
?2?2Dense_1st/kernel
:?2Dense_1st/bias
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
?
ylayer_regularization_losses
znon_trainable_variables
=	variables
{layer_metrics

|layers
}metrics
>regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2Dense_2nd/kernel
:?2Dense_2nd/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
~layer_regularization_losses
non_trainable_variables
C	variables
?layer_metrics
?layers
?metrics
Dregularization_losses
Etrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&	?
2Output_Softmax/kernel
!:
2Output_Softmax/bias
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
I	variables
?layer_metrics
?layers
?metrics
Jregularization_losses
Ktrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
 "
trackable_list_wrapper
<
0
1
-2
.3"
trackable_list_wrapper
 "
trackable_dict_wrapper
f
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
9"
trackable_list_wrapper
0
?0
?1"
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
.
0
1"
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
.
-0
.1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
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
?2?
*__inference_CNN_Model_layer_call_fn_131715
*__inference_CNN_Model_layer_call_fn_132042
*__inference_CNN_Model_layer_call_fn_132083
*__inference_CNN_Model_layer_call_fn_131806?
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
E__inference_CNN_Model_layer_call_and_return_conditional_losses_132001
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131930
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131623
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131573?
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
?2?
!__inference__wrapped_model_131039?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *=?:
8?5
Input_Conv2D_1st_input?????????  
?2?
1__inference_Input_Conv2D_1st_layer_call_fn_132103?
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
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_132094?
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
?2?
.__inference_BatchNorm_1st_layer_call_fn_132167
.__inference_BatchNorm_1st_layer_call_fn_132218
.__inference_BatchNorm_1st_layer_call_fn_132154
.__inference_BatchNorm_1st_layer_call_fn_132231?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132205
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132187
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132141
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132123?
???
FullArgSpec)
args!?
jself
jinputs

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
,__inference_MaxPool_1st_layer_call_fn_131155?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_131149?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_Conv2D_2nd_layer_call_fn_132251?
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
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_132242?
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
?2?
.__inference_BatchNorm_2nd_layer_call_fn_132315
.__inference_BatchNorm_2nd_layer_call_fn_132379
.__inference_BatchNorm_2nd_layer_call_fn_132302
.__inference_BatchNorm_2nd_layer_call_fn_132366?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132289
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132335
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132353
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132271?
???
FullArgSpec)
args!?
jself
jinputs

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
,__inference_MaxPool_2nd_layer_call_fn_131271?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_131265?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_Flatten_layer_call_fn_132390?
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
C__inference_Flatten_layer_call_and_return_conditional_losses_132385?
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
*__inference_Dense_1st_layer_call_fn_132410?
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
E__inference_Dense_1st_layer_call_and_return_conditional_losses_132401?
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
*__inference_Dense_2nd_layer_call_fn_132430?
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
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_132421?
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
/__inference_Output_Softmax_layer_call_fn_132450?
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
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_132441?
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
$__inference_signature_wrapper_131855Input_Conv2D_1st_input"?
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
 ?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132123t<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132141t<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132187?N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
I__inference_BatchNorm_1st_layer_call_and_return_conditional_losses_132205?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
.__inference_BatchNorm_1st_layer_call_fn_132154g<?9
2?/
)?&
inputs??????????
p
? "!????????????
.__inference_BatchNorm_1st_layer_call_fn_132167g<?9
2?/
)?&
inputs??????????
p 
? "!????????????
.__inference_BatchNorm_1st_layer_call_fn_132218?N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
.__inference_BatchNorm_1st_layer_call_fn_132231?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132271t+,-.<?9
2?/
)?&
inputs?????????

?
p
? ".?+
$?!
0?????????

?
? ?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132289t+,-.<?9
2?/
)?&
inputs?????????

?
p 
? ".?+
$?!
0?????????

?
? ?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132335?+,-.N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
I__inference_BatchNorm_2nd_layer_call_and_return_conditional_losses_132353?+,-.N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
.__inference_BatchNorm_2nd_layer_call_fn_132302g+,-.<?9
2?/
)?&
inputs?????????

?
p
? "!??????????

??
.__inference_BatchNorm_2nd_layer_call_fn_132315g+,-.<?9
2?/
)?&
inputs?????????

?
p 
? "!??????????

??
.__inference_BatchNorm_2nd_layer_call_fn_132366?+,-.N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
.__inference_BatchNorm_2nd_layer_call_fn_132379?+,-.N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131573?$%+,-.;<ABGHO?L
E?B
8?5
Input_Conv2D_1st_input?????????  
p

 
? "%?"
?
0?????????

? ?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131623?$%+,-.;<ABGHO?L
E?B
8?5
Input_Conv2D_1st_input?????????  
p 

 
? "%?"
?
0?????????

? ?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_131930|$%+,-.;<ABGH??<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????

? ?
E__inference_CNN_Model_layer_call_and_return_conditional_losses_132001|$%+,-.;<ABGH??<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????

? ?
*__inference_CNN_Model_layer_call_fn_131715$%+,-.;<ABGHO?L
E?B
8?5
Input_Conv2D_1st_input?????????  
p

 
? "??????????
?
*__inference_CNN_Model_layer_call_fn_131806$%+,-.;<ABGHO?L
E?B
8?5
Input_Conv2D_1st_input?????????  
p 

 
? "??????????
?
*__inference_CNN_Model_layer_call_fn_132042o$%+,-.;<ABGH??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
*__inference_CNN_Model_layer_call_fn_132083o$%+,-.;<ABGH??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
F__inference_Conv2D_2nd_layer_call_and_return_conditional_losses_132242n$%8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????

?
? ?
+__inference_Conv2D_2nd_layer_call_fn_132251a$%8?5
.?+
)?&
inputs??????????
? "!??????????

??
E__inference_Dense_1st_layer_call_and_return_conditional_losses_132401^;<0?-
&?#
!?
inputs??????????2
? "&?#
?
0??????????
? 
*__inference_Dense_1st_layer_call_fn_132410Q;<0?-
&?#
!?
inputs??????????2
? "????????????
E__inference_Dense_2nd_layer_call_and_return_conditional_losses_132421^AB0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_Dense_2nd_layer_call_fn_132430QAB0?-
&?#
!?
inputs??????????
? "????????????
C__inference_Flatten_layer_call_and_return_conditional_losses_132385b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????2
? ?
(__inference_Flatten_layer_call_fn_132390U8?5
.?+
)?&
inputs??????????
? "???????????2?
L__inference_Input_Conv2D_1st_layer_call_and_return_conditional_losses_132094m7?4
-?*
(?%
inputs?????????  
? ".?+
$?!
0??????????
? ?
1__inference_Input_Conv2D_1st_layer_call_fn_132103`7?4
-?*
(?%
inputs?????????  
? "!????????????
G__inference_MaxPool_1st_layer_call_and_return_conditional_losses_131149?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
,__inference_MaxPool_1st_layer_call_fn_131155?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_MaxPool_2nd_layer_call_and_return_conditional_losses_131265?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
,__inference_MaxPool_2nd_layer_call_fn_131271?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_Output_Softmax_layer_call_and_return_conditional_losses_132441]GH0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
/__inference_Output_Softmax_layer_call_fn_132450PGH0?-
&?#
!?
inputs??????????
? "??????????
?
!__inference__wrapped_model_131039?$%+,-.;<ABGHG?D
=?:
8?5
Input_Conv2D_1st_input?????????  
? "??<
:
Output_Softmax(?%
Output_Softmax?????????
?
$__inference_signature_wrapper_131855?$%+,-.;<ABGHa?^
? 
W?T
R
Input_Conv2D_1st_input8?5
Input_Conv2D_1st_input?????????  "??<
:
Output_Softmax(?%
Output_Softmax?????????
