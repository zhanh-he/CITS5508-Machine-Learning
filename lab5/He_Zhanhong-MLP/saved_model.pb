ó
Å
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8î

Hidden_1st/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameHidden_1st/kernel
y
%Hidden_1st/kernel/Read/ReadVariableOpReadVariableOpHidden_1st/kernel* 
_output_shapes
:
*
dtype0
w
Hidden_1st/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameHidden_1st/bias
p
#Hidden_1st/bias/Read/ReadVariableOpReadVariableOpHidden_1st/bias*
_output_shapes	
:*
dtype0

Hidden_2nd/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameHidden_2nd/kernel
y
%Hidden_2nd/kernel/Read/ReadVariableOpReadVariableOpHidden_2nd/kernel* 
_output_shapes
:
*
dtype0
w
Hidden_2nd/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameHidden_2nd/bias
p
#Hidden_2nd/bias/Read/ReadVariableOpReadVariableOpHidden_2nd/bias*
_output_shapes	
:*
dtype0

Output_Softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameOutput_Softmax/kernel

)Output_Softmax/kernel/Read/ReadVariableOpReadVariableOpOutput_Softmax/kernel*
_output_shapes
:	
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

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ú
valueÐBÍ BÆ
ó
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
6
	!decay
"learning_rate
#momentum
$iter
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
­
%layer_metrics
&non_trainable_variables
'metrics
	variables
trainable_variables
(layer_regularization_losses

)layers
regularization_losses
 
 
 
 
­
*layer_metrics
+non_trainable_variables
,metrics
	variables
trainable_variables
-layer_regularization_losses

.layers
regularization_losses
][
VARIABLE_VALUEHidden_1st/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEHidden_1st/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
/layer_metrics
0non_trainable_variables
1metrics
	variables
trainable_variables
2layer_regularization_losses

3layers
regularization_losses
][
VARIABLE_VALUEHidden_2nd/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEHidden_2nd/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
4layer_metrics
5non_trainable_variables
6metrics
	variables
trainable_variables
7layer_regularization_losses

8layers
regularization_losses
a_
VARIABLE_VALUEOutput_Softmax/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEOutput_Softmax/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
9layer_metrics
:non_trainable_variables
;metrics
	variables
trainable_variables
<layer_regularization_losses

=layers
regularization_losses
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 
 

>0
?1
 

0
1
2
3
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
4
	@total
	Acount
B	variables
C	keras_api
D
	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

B	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

G	variables

serving_default_Flatten_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ  
º
StatefulPartitionedCallStatefulPartitionedCallserving_default_Flatten_inputHidden_1st/kernelHidden_1st/biasHidden_2nd/kernelHidden_2nd/biasOutput_Softmax/kernelOutput_Softmax/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_60829
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%Hidden_1st/kernel/Read/ReadVariableOp#Hidden_1st/bias/Read/ReadVariableOp%Hidden_2nd/kernel/Read/ReadVariableOp#Hidden_2nd/bias/Read/ReadVariableOp)Output_Softmax/kernel/Read/ReadVariableOp'Output_Softmax/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_61053
ä
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_1st/kernelHidden_1st/biasHidden_2nd/kernelHidden_2nd/biasOutput_Softmax/kernelOutput_Softmax/biasdecaylearning_ratemomentumSGD/itertotalcounttotal_1count_1*
Tin
2*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_61105à¬
ø	
Þ
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_60665

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å

*__inference_Hidden_1st_layer_call_fn_60948

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_606382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
º
)__inference_MLP_model_layer_call_fn_60900

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_MLP_model_layer_call_and_return_conditional_losses_607522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¦<
ò
!__inference__traced_restore_61105
file_prefix&
"assignvariableop_hidden_1st_kernel&
"assignvariableop_1_hidden_1st_bias(
$assignvariableop_2_hidden_2nd_kernel&
"assignvariableop_3_hidden_2nd_bias,
(assignvariableop_4_output_softmax_kernel*
&assignvariableop_5_output_softmax_bias
assignvariableop_6_decay$
 assignvariableop_7_learning_rate
assignvariableop_8_momentum
assignvariableop_9_sgd_iter
assignvariableop_10_total
assignvariableop_11_count
assignvariableop_12_total_1
assignvariableop_13_count_1
identity_15¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesö
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¡
AssignVariableOpAssignVariableOp"assignvariableop_hidden_1st_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_hidden_1st_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_hidden_2nd_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOp"assignvariableop_3_hidden_2nd_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4­
AssignVariableOp_4AssignVariableOp(assignvariableop_4_output_softmax_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5«
AssignVariableOp_5AssignVariableOp&assignvariableop_5_output_softmax_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6
AssignVariableOp_6AssignVariableOpassignvariableop_6_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8 
AssignVariableOp_8AssignVariableOpassignvariableop_8_momentumIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9 
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12£
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*M
_input_shapes<
:: ::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
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
Í
é
D__inference_MLP_model_layer_call_and_return_conditional_losses_60729
flatten_input
hidden_1st_60713
hidden_1st_60715
hidden_2nd_60718
hidden_2nd_60720
output_softmax_60723
output_softmax_60725
identity¢"Hidden_1st/StatefulPartitionedCall¢"Hidden_2nd/StatefulPartitionedCall¢&Output_Softmax/StatefulPartitionedCallÛ
Flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_606192
Flatten/PartitionedCall¹
"Hidden_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0hidden_1st_60713hidden_1st_60715*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_606382$
"Hidden_1st/StatefulPartitionedCallÄ
"Hidden_2nd/StatefulPartitionedCallStatefulPartitionedCall+Hidden_1st/StatefulPartitionedCall:output:0hidden_2nd_60718hidden_2nd_60720*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_606652$
"Hidden_2nd/StatefulPartitionedCall×
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall+Hidden_2nd/StatefulPartitionedCall:output:0output_softmax_60723output_softmax_60725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_606922(
&Output_Softmax/StatefulPartitionedCallö
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0#^Hidden_1st/StatefulPartitionedCall#^Hidden_2nd/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2H
"Hidden_1st/StatefulPartitionedCall"Hidden_1st/StatefulPartitionedCall2H
"Hidden_2nd/StatefulPartitionedCall"Hidden_2nd/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
ø	
Þ
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_60638

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
)
À
 __inference__wrapped_model_60609
flatten_input7
3mlp_model_hidden_1st_matmul_readvariableop_resource8
4mlp_model_hidden_1st_biasadd_readvariableop_resource7
3mlp_model_hidden_2nd_matmul_readvariableop_resource8
4mlp_model_hidden_2nd_biasadd_readvariableop_resource;
7mlp_model_output_softmax_matmul_readvariableop_resource<
8mlp_model_output_softmax_biasadd_readvariableop_resource
identity¢+MLP_model/Hidden_1st/BiasAdd/ReadVariableOp¢*MLP_model/Hidden_1st/MatMul/ReadVariableOp¢+MLP_model/Hidden_2nd/BiasAdd/ReadVariableOp¢*MLP_model/Hidden_2nd/MatMul/ReadVariableOp¢/MLP_model/Output_Softmax/BiasAdd/ReadVariableOp¢.MLP_model/Output_Softmax/MatMul/ReadVariableOp
MLP_model/Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
MLP_model/Flatten/Const¥
MLP_model/Flatten/ReshapeReshapeflatten_input MLP_model/Flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Flatten/ReshapeÎ
*MLP_model/Hidden_1st/MatMul/ReadVariableOpReadVariableOp3mlp_model_hidden_1st_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*MLP_model/Hidden_1st/MatMul/ReadVariableOpÏ
MLP_model/Hidden_1st/MatMulMatMul"MLP_model/Flatten/Reshape:output:02MLP_model/Hidden_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_1st/MatMulÌ
+MLP_model/Hidden_1st/BiasAdd/ReadVariableOpReadVariableOp4mlp_model_hidden_1st_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+MLP_model/Hidden_1st/BiasAdd/ReadVariableOpÖ
MLP_model/Hidden_1st/BiasAddBiasAdd%MLP_model/Hidden_1st/MatMul:product:03MLP_model/Hidden_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_1st/BiasAdd
MLP_model/Hidden_1st/ReluRelu%MLP_model/Hidden_1st/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_1st/ReluÎ
*MLP_model/Hidden_2nd/MatMul/ReadVariableOpReadVariableOp3mlp_model_hidden_2nd_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*MLP_model/Hidden_2nd/MatMul/ReadVariableOpÔ
MLP_model/Hidden_2nd/MatMulMatMul'MLP_model/Hidden_1st/Relu:activations:02MLP_model/Hidden_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_2nd/MatMulÌ
+MLP_model/Hidden_2nd/BiasAdd/ReadVariableOpReadVariableOp4mlp_model_hidden_2nd_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+MLP_model/Hidden_2nd/BiasAdd/ReadVariableOpÖ
MLP_model/Hidden_2nd/BiasAddBiasAdd%MLP_model/Hidden_2nd/MatMul:product:03MLP_model/Hidden_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_2nd/BiasAdd
MLP_model/Hidden_2nd/ReluRelu%MLP_model/Hidden_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MLP_model/Hidden_2nd/ReluÙ
.MLP_model/Output_Softmax/MatMul/ReadVariableOpReadVariableOp7mlp_model_output_softmax_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype020
.MLP_model/Output_Softmax/MatMul/ReadVariableOpß
MLP_model/Output_Softmax/MatMulMatMul'MLP_model/Hidden_2nd/Relu:activations:06MLP_model/Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
MLP_model/Output_Softmax/MatMul×
/MLP_model/Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp8mlp_model_output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/MLP_model/Output_Softmax/BiasAdd/ReadVariableOpå
 MLP_model/Output_Softmax/BiasAddBiasAdd)MLP_model/Output_Softmax/MatMul:product:07MLP_model/Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 MLP_model/Output_Softmax/BiasAdd¬
 MLP_model/Output_Softmax/SoftmaxSoftmax)MLP_model/Output_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 MLP_model/Output_Softmax/Softmax
IdentityIdentity*MLP_model/Output_Softmax/Softmax:softmax:0,^MLP_model/Hidden_1st/BiasAdd/ReadVariableOp+^MLP_model/Hidden_1st/MatMul/ReadVariableOp,^MLP_model/Hidden_2nd/BiasAdd/ReadVariableOp+^MLP_model/Hidden_2nd/MatMul/ReadVariableOp0^MLP_model/Output_Softmax/BiasAdd/ReadVariableOp/^MLP_model/Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2Z
+MLP_model/Hidden_1st/BiasAdd/ReadVariableOp+MLP_model/Hidden_1st/BiasAdd/ReadVariableOp2X
*MLP_model/Hidden_1st/MatMul/ReadVariableOp*MLP_model/Hidden_1st/MatMul/ReadVariableOp2Z
+MLP_model/Hidden_2nd/BiasAdd/ReadVariableOp+MLP_model/Hidden_2nd/BiasAdd/ReadVariableOp2X
*MLP_model/Hidden_2nd/MatMul/ReadVariableOp*MLP_model/Hidden_2nd/MatMul/ReadVariableOp2b
/MLP_model/Output_Softmax/BiasAdd/ReadVariableOp/MLP_model/Output_Softmax/BiasAdd/ReadVariableOp2`
.MLP_model/Output_Softmax/MatMul/ReadVariableOp.MLP_model/Output_Softmax/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
ø	
Þ
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_60939

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å

*__inference_Hidden_2nd_layer_call_fn_60968

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_606652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Á
)__inference_MLP_model_layer_call_fn_60767
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_MLP_model_layer_call_and_return_conditional_losses_607522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
¸
â
D__inference_MLP_model_layer_call_and_return_conditional_losses_60789

inputs
hidden_1st_60773
hidden_1st_60775
hidden_2nd_60778
hidden_2nd_60780
output_softmax_60783
output_softmax_60785
identity¢"Hidden_1st/StatefulPartitionedCall¢"Hidden_2nd/StatefulPartitionedCall¢&Output_Softmax/StatefulPartitionedCallÔ
Flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_606192
Flatten/PartitionedCall¹
"Hidden_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0hidden_1st_60773hidden_1st_60775*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_606382$
"Hidden_1st/StatefulPartitionedCallÄ
"Hidden_2nd/StatefulPartitionedCallStatefulPartitionedCall+Hidden_1st/StatefulPartitionedCall:output:0hidden_2nd_60778hidden_2nd_60780*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_606652$
"Hidden_2nd/StatefulPartitionedCall×
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall+Hidden_2nd/StatefulPartitionedCall:output:0output_softmax_60783output_softmax_60785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_606922(
&Output_Softmax/StatefulPartitionedCallö
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0#^Hidden_1st/StatefulPartitionedCall#^Hidden_2nd/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2H
"Hidden_1st/StatefulPartitionedCall"Hidden_1st/StatefulPartitionedCall2H
"Hidden_2nd/StatefulPartitionedCall"Hidden_2nd/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Í
é
D__inference_MLP_model_layer_call_and_return_conditional_losses_60709
flatten_input
hidden_1st_60649
hidden_1st_60651
hidden_2nd_60676
hidden_2nd_60678
output_softmax_60703
output_softmax_60705
identity¢"Hidden_1st/StatefulPartitionedCall¢"Hidden_2nd/StatefulPartitionedCall¢&Output_Softmax/StatefulPartitionedCallÛ
Flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_606192
Flatten/PartitionedCall¹
"Hidden_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0hidden_1st_60649hidden_1st_60651*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_606382$
"Hidden_1st/StatefulPartitionedCallÄ
"Hidden_2nd/StatefulPartitionedCallStatefulPartitionedCall+Hidden_1st/StatefulPartitionedCall:output:0hidden_2nd_60676hidden_2nd_60678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_606652$
"Hidden_2nd/StatefulPartitionedCall×
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall+Hidden_2nd/StatefulPartitionedCall:output:0output_softmax_60703output_softmax_60705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_606922(
&Output_Softmax/StatefulPartitionedCallö
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0#^Hidden_1st/StatefulPartitionedCall#^Hidden_2nd/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2H
"Hidden_1st/StatefulPartitionedCall"Hidden_1st/StatefulPartitionedCall2H
"Hidden_2nd/StatefulPartitionedCall"Hidden_2nd/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
º
^
B__inference_Flatten_layer_call_and_return_conditional_losses_60923

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ø	
Þ
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_60959

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
â
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_60979

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
â
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_60692

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
Û
__inference__traced_save_61053
file_prefix0
,savev2_hidden_1st_kernel_read_readvariableop.
*savev2_hidden_1st_bias_read_readvariableop0
,savev2_hidden_2nd_kernel_read_readvariableop.
*savev2_hidden_2nd_bias_read_readvariableop4
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

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¦
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_hidden_1st_kernel_read_readvariableop*savev2_hidden_1st_bias_read_readvariableop,savev2_hidden_2nd_kernel_read_readvariableop*savev2_hidden_2nd_bias_read_readvariableop0savev2_output_softmax_kernel_read_readvariableop.savev2_output_softmax_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*^
_input_shapesM
K: :
::
::	
:
: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
º
^
B__inference_Flatten_layer_call_and_return_conditional_losses_60619

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ì

.__inference_Output_Softmax_layer_call_fn_60988

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_606922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Á
)__inference_MLP_model_layer_call_fn_60804
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_MLP_model_layer_call_and_return_conditional_losses_607892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
ª"
å
D__inference_MLP_model_layer_call_and_return_conditional_losses_60856

inputs-
)hidden_1st_matmul_readvariableop_resource.
*hidden_1st_biasadd_readvariableop_resource-
)hidden_2nd_matmul_readvariableop_resource.
*hidden_2nd_biasadd_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity¢!Hidden_1st/BiasAdd/ReadVariableOp¢ Hidden_1st/MatMul/ReadVariableOp¢!Hidden_2nd/BiasAdd/ReadVariableOp¢ Hidden_2nd/MatMul/ReadVariableOp¢%Output_Softmax/BiasAdd/ReadVariableOp¢$Output_Softmax/MatMul/ReadVariableOpo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Flatten/Const
Flatten/ReshapeReshapeinputsFlatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Flatten/Reshape°
 Hidden_1st/MatMul/ReadVariableOpReadVariableOp)hidden_1st_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Hidden_1st/MatMul/ReadVariableOp§
Hidden_1st/MatMulMatMulFlatten/Reshape:output:0(Hidden_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/MatMul®
!Hidden_1st/BiasAdd/ReadVariableOpReadVariableOp*hidden_1st_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!Hidden_1st/BiasAdd/ReadVariableOp®
Hidden_1st/BiasAddBiasAddHidden_1st/MatMul:product:0)Hidden_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/BiasAddz
Hidden_1st/ReluReluHidden_1st/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/Relu°
 Hidden_2nd/MatMul/ReadVariableOpReadVariableOp)hidden_2nd_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Hidden_2nd/MatMul/ReadVariableOp¬
Hidden_2nd/MatMulMatMulHidden_1st/Relu:activations:0(Hidden_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/MatMul®
!Hidden_2nd/BiasAdd/ReadVariableOpReadVariableOp*hidden_2nd_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!Hidden_2nd/BiasAdd/ReadVariableOp®
Hidden_2nd/BiasAddBiasAddHidden_2nd/MatMul:product:0)Hidden_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/BiasAddz
Hidden_2nd/ReluReluHidden_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/Relu»
$Output_Softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02&
$Output_Softmax/MatMul/ReadVariableOp·
Output_Softmax/MatMulMatMulHidden_2nd/Relu:activations:0,Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/MatMul¹
%Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%Output_Softmax/BiasAdd/ReadVariableOp½
Output_Softmax/BiasAddBiasAddOutput_Softmax/MatMul:product:0-Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/BiasAdd
Output_Softmax/SoftmaxSoftmaxOutput_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/SoftmaxÑ
IdentityIdentity Output_Softmax/Softmax:softmax:0"^Hidden_1st/BiasAdd/ReadVariableOp!^Hidden_1st/MatMul/ReadVariableOp"^Hidden_2nd/BiasAdd/ReadVariableOp!^Hidden_2nd/MatMul/ReadVariableOp&^Output_Softmax/BiasAdd/ReadVariableOp%^Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2F
!Hidden_1st/BiasAdd/ReadVariableOp!Hidden_1st/BiasAdd/ReadVariableOp2D
 Hidden_1st/MatMul/ReadVariableOp Hidden_1st/MatMul/ReadVariableOp2F
!Hidden_2nd/BiasAdd/ReadVariableOp!Hidden_2nd/BiasAdd/ReadVariableOp2D
 Hidden_2nd/MatMul/ReadVariableOp Hidden_2nd/MatMul/ReadVariableOp2N
%Output_Softmax/BiasAdd/ReadVariableOp%Output_Softmax/BiasAdd/ReadVariableOp2L
$Output_Softmax/MatMul/ReadVariableOp$Output_Softmax/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ð
º
)__inference_MLP_model_layer_call_fn_60917

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_MLP_model_layer_call_and_return_conditional_losses_607892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Û
»
#__inference_signature_wrapper_60829
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_606092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameFlatten_input
ª"
å
D__inference_MLP_model_layer_call_and_return_conditional_losses_60883

inputs-
)hidden_1st_matmul_readvariableop_resource.
*hidden_1st_biasadd_readvariableop_resource-
)hidden_2nd_matmul_readvariableop_resource.
*hidden_2nd_biasadd_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity¢!Hidden_1st/BiasAdd/ReadVariableOp¢ Hidden_1st/MatMul/ReadVariableOp¢!Hidden_2nd/BiasAdd/ReadVariableOp¢ Hidden_2nd/MatMul/ReadVariableOp¢%Output_Softmax/BiasAdd/ReadVariableOp¢$Output_Softmax/MatMul/ReadVariableOpo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Flatten/Const
Flatten/ReshapeReshapeinputsFlatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Flatten/Reshape°
 Hidden_1st/MatMul/ReadVariableOpReadVariableOp)hidden_1st_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Hidden_1st/MatMul/ReadVariableOp§
Hidden_1st/MatMulMatMulFlatten/Reshape:output:0(Hidden_1st/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/MatMul®
!Hidden_1st/BiasAdd/ReadVariableOpReadVariableOp*hidden_1st_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!Hidden_1st/BiasAdd/ReadVariableOp®
Hidden_1st/BiasAddBiasAddHidden_1st/MatMul:product:0)Hidden_1st/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/BiasAddz
Hidden_1st/ReluReluHidden_1st/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_1st/Relu°
 Hidden_2nd/MatMul/ReadVariableOpReadVariableOp)hidden_2nd_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Hidden_2nd/MatMul/ReadVariableOp¬
Hidden_2nd/MatMulMatMulHidden_1st/Relu:activations:0(Hidden_2nd/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/MatMul®
!Hidden_2nd/BiasAdd/ReadVariableOpReadVariableOp*hidden_2nd_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!Hidden_2nd/BiasAdd/ReadVariableOp®
Hidden_2nd/BiasAddBiasAddHidden_2nd/MatMul:product:0)Hidden_2nd/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/BiasAddz
Hidden_2nd/ReluReluHidden_2nd/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden_2nd/Relu»
$Output_Softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02&
$Output_Softmax/MatMul/ReadVariableOp·
Output_Softmax/MatMulMatMulHidden_2nd/Relu:activations:0,Output_Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/MatMul¹
%Output_Softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%Output_Softmax/BiasAdd/ReadVariableOp½
Output_Softmax/BiasAddBiasAddOutput_Softmax/MatMul:product:0-Output_Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/BiasAdd
Output_Softmax/SoftmaxSoftmaxOutput_Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Softmax/SoftmaxÑ
IdentityIdentity Output_Softmax/Softmax:softmax:0"^Hidden_1st/BiasAdd/ReadVariableOp!^Hidden_1st/MatMul/ReadVariableOp"^Hidden_2nd/BiasAdd/ReadVariableOp!^Hidden_2nd/MatMul/ReadVariableOp&^Output_Softmax/BiasAdd/ReadVariableOp%^Output_Softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2F
!Hidden_1st/BiasAdd/ReadVariableOp!Hidden_1st/BiasAdd/ReadVariableOp2D
 Hidden_1st/MatMul/ReadVariableOp Hidden_1st/MatMul/ReadVariableOp2F
!Hidden_2nd/BiasAdd/ReadVariableOp!Hidden_2nd/BiasAdd/ReadVariableOp2D
 Hidden_2nd/MatMul/ReadVariableOp Hidden_2nd/MatMul/ReadVariableOp2N
%Output_Softmax/BiasAdd/ReadVariableOp%Output_Softmax/BiasAdd/ReadVariableOp2L
$Output_Softmax/MatMul/ReadVariableOp$Output_Softmax/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
£
C
'__inference_Flatten_layer_call_fn_60928

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_606192
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¸
â
D__inference_MLP_model_layer_call_and_return_conditional_losses_60752

inputs
hidden_1st_60736
hidden_1st_60738
hidden_2nd_60741
hidden_2nd_60743
output_softmax_60746
output_softmax_60748
identity¢"Hidden_1st/StatefulPartitionedCall¢"Hidden_2nd/StatefulPartitionedCall¢&Output_Softmax/StatefulPartitionedCallÔ
Flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_606192
Flatten/PartitionedCall¹
"Hidden_1st/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0hidden_1st_60736hidden_1st_60738*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_606382$
"Hidden_1st/StatefulPartitionedCallÄ
"Hidden_2nd/StatefulPartitionedCallStatefulPartitionedCall+Hidden_1st/StatefulPartitionedCall:output:0hidden_2nd_60741hidden_2nd_60743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_606652$
"Hidden_2nd/StatefulPartitionedCall×
&Output_Softmax/StatefulPartitionedCallStatefulPartitionedCall+Hidden_2nd/StatefulPartitionedCall:output:0output_softmax_60746output_softmax_60748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_606922(
&Output_Softmax/StatefulPartitionedCallö
IdentityIdentity/Output_Softmax/StatefulPartitionedCall:output:0#^Hidden_1st/StatefulPartitionedCall#^Hidden_2nd/StatefulPartitionedCall'^Output_Softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  ::::::2H
"Hidden_1st/StatefulPartitionedCall"Hidden_1st/StatefulPartitionedCall2H
"Hidden_2nd/StatefulPartitionedCall"Hidden_2nd/StatefulPartitionedCall2P
&Output_Softmax/StatefulPartitionedCall&Output_Softmax/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
O
Flatten_input>
serving_default_Flatten_input:0ÿÿÿÿÿÿÿÿÿ  B
Output_Softmax0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:
±%
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
I_default_save_signature
*J&call_and_return_all_conditional_losses
K__call__"ä"
_tf_keras_sequentialÅ"{"class_name": "Sequential", "name": "MLP_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "MLP_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Flatten_input"}}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Hidden_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Hidden_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "MLP_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Flatten_input"}}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Hidden_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Hidden_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 3.37201555566935e-08, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
ã
	variables
trainable_variables
regularization_losses
	keras_api
*L&call_and_return_all_conditional_losses
M__call__"Ô
_tf_keras_layerº{"class_name": "Flatten", "name": "Flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "Flatten", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
û

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*N&call_and_return_all_conditional_losses
O__call__"Ö
_tf_keras_layer¼{"class_name": "Dense", "name": "Hidden_1st", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Hidden_1st", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3072}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3072]}}
ù

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"Ô
_tf_keras_layerº{"class_name": "Dense", "name": "Hidden_2nd", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Hidden_2nd", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}


kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
*R&call_and_return_all_conditional_losses
S__call__"Þ
_tf_keras_layerÄ{"class_name": "Dense", "name": "Output_Softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Output_Softmax", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
I
	!decay
"learning_rate
#momentum
$iter"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
%layer_metrics
&non_trainable_variables
'metrics
	variables
trainable_variables
(layer_regularization_losses

)layers
regularization_losses
K__call__
I_default_save_signature
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
*layer_metrics
+non_trainable_variables
,metrics
	variables
trainable_variables
-layer_regularization_losses

.layers
regularization_losses
M__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
%:#
2Hidden_1st/kernel
:2Hidden_1st/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
/layer_metrics
0non_trainable_variables
1metrics
	variables
trainable_variables
2layer_regularization_losses

3layers
regularization_losses
O__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
%:#
2Hidden_2nd/kernel
:2Hidden_2nd/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
4layer_metrics
5non_trainable_variables
6metrics
	variables
trainable_variables
7layer_regularization_losses

8layers
regularization_losses
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
(:&	
2Output_Softmax/kernel
!:
2Output_Softmax/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
9layer_metrics
:non_trainable_variables
;metrics
	variables
trainable_variables
<layer_regularization_losses

=layers
regularization_losses
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
»
	@total
	Acount
B	variables
C	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api"¿
_tf_keras_metric¤{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
ì2é
 __inference__wrapped_model_60609Ä
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *4¢1
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
Þ2Û
D__inference_MLP_model_layer_call_and_return_conditional_losses_60729
D__inference_MLP_model_layer_call_and_return_conditional_losses_60883
D__inference_MLP_model_layer_call_and_return_conditional_losses_60856
D__inference_MLP_model_layer_call_and_return_conditional_losses_60709À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
)__inference_MLP_model_layer_call_fn_60900
)__inference_MLP_model_layer_call_fn_60767
)__inference_MLP_model_layer_call_fn_60917
)__inference_MLP_model_layer_call_fn_60804À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
B__inference_Flatten_layer_call_and_return_conditional_losses_60923¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_Flatten_layer_call_fn_60928¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_60939¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_Hidden_1st_layer_call_fn_60948¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_60959¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_Hidden_2nd_layer_call_fn_60968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_60979¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_Output_Softmax_layer_call_fn_60988¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÐBÍ
#__inference_signature_wrapper_60829Flatten_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 §
B__inference_Flatten_layer_call_and_return_conditional_losses_60923a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_Flatten_layer_call_fn_60928T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_Hidden_1st_layer_call_and_return_conditional_losses_60939^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_Hidden_1st_layer_call_fn_60948Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_Hidden_2nd_layer_call_and_return_conditional_losses_60959^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_Hidden_2nd_layer_call_fn_60968Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¿
D__inference_MLP_model_layer_call_and_return_conditional_losses_60709wF¢C
<¢9
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¿
D__inference_MLP_model_layer_call_and_return_conditional_losses_60729wF¢C
<¢9
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
D__inference_MLP_model_layer_call_and_return_conditional_losses_60856p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
D__inference_MLP_model_layer_call_and_return_conditional_losses_60883p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
)__inference_MLP_model_layer_call_fn_60767jF¢C
<¢9
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_MLP_model_layer_call_fn_60804jF¢C
<¢9
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_MLP_model_layer_call_fn_60900c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_MLP_model_layer_call_fn_60917c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
ª
I__inference_Output_Softmax_layer_call_and_return_conditional_losses_60979]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
.__inference_Output_Softmax_layer_call_fn_60988P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
®
 __inference__wrapped_model_60609>¢;
4¢1
/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  
ª "?ª<
:
Output_Softmax(%
Output_Softmaxÿÿÿÿÿÿÿÿÿ
Â
#__inference_signature_wrapper_60829O¢L
¢ 
EªB
@
Flatten_input/,
Flatten_inputÿÿÿÿÿÿÿÿÿ  "?ª<
:
Output_Softmax(%
Output_Softmaxÿÿÿÿÿÿÿÿÿ
