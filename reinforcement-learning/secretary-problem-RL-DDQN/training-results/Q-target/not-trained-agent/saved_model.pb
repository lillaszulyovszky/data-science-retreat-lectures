è
ý
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.2.02unknown8ú

relu_dense_Qt_1_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*)
shared_namerelu_dense_Qt_1_1/kernel

,relu_dense_Qt_1_1/kernel/Read/ReadVariableOpReadVariableOprelu_dense_Qt_1_1/kernel*
_output_shapes

:@*
dtype0

relu_dense_Qt_1_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_namerelu_dense_Qt_1_1/bias
}
*relu_dense_Qt_1_1/bias/Read/ReadVariableOpReadVariableOprelu_dense_Qt_1_1/bias*
_output_shapes
:@*
dtype0

relu_dense_Qt_2_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*)
shared_namerelu_dense_Qt_2_1/kernel

,relu_dense_Qt_2_1/kernel/Read/ReadVariableOpReadVariableOprelu_dense_Qt_2_1/kernel*
_output_shapes

:@@*
dtype0

relu_dense_Qt_2_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_namerelu_dense_Qt_2_1/bias
}
*relu_dense_Qt_2_1/bias/Read/ReadVariableOpReadVariableOprelu_dense_Qt_2_1/bias*
_output_shapes
:@*
dtype0

Q_target_value_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameQ_target_value_1/kernel

+Q_target_value_1/kernel/Read/ReadVariableOpReadVariableOpQ_target_value_1/kernel*
_output_shapes

:@*
dtype0

Q_target_value_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameQ_target_value_1/bias
{
)Q_target_value_1/bias/Read/ReadVariableOpReadVariableOpQ_target_value_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
¹
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ô
valueêBç Bà
ý
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
loss
regularization_losses
trainable_variables
		variables

	keras_api

signatures
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 
 
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
­
regularization_losses
layer_metrics
metrics
 non_trainable_variables

!layers
trainable_variables
"layer_regularization_losses
		variables
 
db
VARIABLE_VALUErelu_dense_Qt_1_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUErelu_dense_Qt_1_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
#layer_metrics
$metrics
%non_trainable_variables

&layers
trainable_variables
'layer_regularization_losses
	variables
db
VARIABLE_VALUErelu_dense_Qt_2_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUErelu_dense_Qt_2_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
(layer_metrics
)metrics
*non_trainable_variables

+layers
trainable_variables
,layer_regularization_losses
	variables
ca
VARIABLE_VALUEQ_target_value_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEQ_target_value_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
-layer_metrics
.metrics
/non_trainable_variables

0layers
trainable_variables
1layer_regularization_losses
	variables
 
 
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
x
serving_default_statePlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
®
StatefulPartitionedCallStatefulPartitionedCallserving_default_staterelu_dense_Qt_1_1/kernelrelu_dense_Qt_1_1/biasrelu_dense_Qt_2_1/kernelrelu_dense_Qt_2_1/biasQ_target_value_1/kernelQ_target_value_1/bias*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8*-
f(R&
$__inference_signature_wrapper_555877
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,relu_dense_Qt_1_1/kernel/Read/ReadVariableOp*relu_dense_Qt_1_1/bias/Read/ReadVariableOp,relu_dense_Qt_2_1/kernel/Read/ReadVariableOp*relu_dense_Qt_2_1/bias/Read/ReadVariableOp+Q_target_value_1/kernel/Read/ReadVariableOp)Q_target_value_1/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

GPU 

CPU2J 8*(
f#R!
__inference__traced_save_556066

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamerelu_dense_Qt_1_1/kernelrelu_dense_Qt_1_1/biasrelu_dense_Qt_2_1/kernelrelu_dense_Qt_2_1/biasQ_target_value_1/kernelQ_target_value_1/bias*
Tin
	2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

GPU 

CPU2J 8*+
f&R$
"__inference__traced_restore_556096»ä
é

C__inference_model_3_layer_call_and_return_conditional_losses_555927

inputs2
.relu_dense_qt_1_matmul_readvariableop_resource3
/relu_dense_qt_1_biasadd_readvariableop_resource2
.relu_dense_qt_2_matmul_readvariableop_resource3
/relu_dense_qt_2_biasadd_readvariableop_resource1
-q_target_value_matmul_readvariableop_resource2
.q_target_value_biasadd_readvariableop_resource
identity½
%relu_dense_Qt_1/MatMul/ReadVariableOpReadVariableOp.relu_dense_qt_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02'
%relu_dense_Qt_1/MatMul/ReadVariableOp£
relu_dense_Qt_1/MatMulMatMulinputs-relu_dense_Qt_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/MatMul¼
&relu_dense_Qt_1/BiasAdd/ReadVariableOpReadVariableOp/relu_dense_qt_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&relu_dense_Qt_1/BiasAdd/ReadVariableOpÁ
relu_dense_Qt_1/BiasAddBiasAdd relu_dense_Qt_1/MatMul:product:0.relu_dense_Qt_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/BiasAdd
relu_dense_Qt_1/TanhTanh relu_dense_Qt_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/Tanh½
%relu_dense_Qt_2/MatMul/ReadVariableOpReadVariableOp.relu_dense_qt_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%relu_dense_Qt_2/MatMul/ReadVariableOpµ
relu_dense_Qt_2/MatMulMatMulrelu_dense_Qt_1/Tanh:y:0-relu_dense_Qt_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/MatMul¼
&relu_dense_Qt_2/BiasAdd/ReadVariableOpReadVariableOp/relu_dense_qt_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&relu_dense_Qt_2/BiasAdd/ReadVariableOpÁ
relu_dense_Qt_2/BiasAddBiasAdd relu_dense_Qt_2/MatMul:product:0.relu_dense_Qt_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/BiasAdd
relu_dense_Qt_2/TanhTanh relu_dense_Qt_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/Tanhº
$Q_target_value/MatMul/ReadVariableOpReadVariableOp-q_target_value_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02&
$Q_target_value/MatMul/ReadVariableOp²
Q_target_value/MatMulMatMulrelu_dense_Qt_2/Tanh:y:0,Q_target_value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/MatMul¹
%Q_target_value/BiasAdd/ReadVariableOpReadVariableOp.q_target_value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%Q_target_value/BiasAdd/ReadVariableOp½
Q_target_value/BiasAddBiasAddQ_target_value/MatMul:product:0-Q_target_value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/BiasAdd
Q_target_value/ReluReluQ_target_value/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/Reluu
IdentityIdentity!Q_target_value/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
â
³
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_555972

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
â
³
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_555722

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ø#
Ð
__inference__traced_save_556066
file_prefix7
3savev2_relu_dense_qt_1_1_kernel_read_readvariableop5
1savev2_relu_dense_qt_1_1_bias_read_readvariableop7
3savev2_relu_dense_qt_2_1_kernel_read_readvariableop5
1savev2_relu_dense_qt_2_1_bias_read_readvariableop6
2savev2_q_target_value_1_kernel_read_readvariableop4
0savev2_q_target_value_1_bias_read_readvariableop
savev2_1_const

identity_1¢MergeV2Checkpoints¢SaveV2¢SaveV2_1
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
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_f33128fdeffb4c5184bbeab000e791cc/part2	
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
value	B :2

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
ShardedFilenameÍ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ß
valueÕBÒB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
SaveV2/shape_and_slicesç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_relu_dense_qt_1_1_kernel_read_readvariableop1savev2_relu_dense_qt_1_1_bias_read_readvariableop3savev2_relu_dense_qt_2_1_kernel_read_readvariableop1savev2_relu_dense_qt_2_1_bias_read_readvariableop2savev2_q_target_value_1_kernel_read_readvariableop0savev2_q_target_value_1_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes

22
SaveV2
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard¬
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1¢
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesÏ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1ã
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¬
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*G
_input_shapes6
4: :@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 


0__inference_relu_dense_Qt_1_layer_call_fn_555981

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_5556952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ê
¸
(__inference_model_3_layer_call_fn_555858	
state
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_5558432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


/__inference_Q_target_value_layer_call_fn_556021

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_Q_target_value_layer_call_and_return_conditional_losses_5557492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
í
¹
(__inference_model_3_layer_call_fn_555944

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_5558072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ë
²
J__inference_Q_target_value_layer_call_and_return_conditional_losses_556012

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ý

C__inference_model_3_layer_call_and_return_conditional_losses_555766	
state
relu_dense_qt_1_555706
relu_dense_qt_1_555708
relu_dense_qt_2_555733
relu_dense_qt_2_555735
q_target_value_555760
q_target_value_555762
identity¢&Q_target_value/StatefulPartitionedCall¢'relu_dense_Qt_1/StatefulPartitionedCall¢'relu_dense_Qt_2/StatefulPartitionedCall
'relu_dense_Qt_1/StatefulPartitionedCallStatefulPartitionedCallstaterelu_dense_qt_1_555706relu_dense_qt_1_555708*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_5556952)
'relu_dense_Qt_1/StatefulPartitionedCall¿
'relu_dense_Qt_2/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_1/StatefulPartitionedCall:output:0relu_dense_qt_2_555733relu_dense_qt_2_555735*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_5557222)
'relu_dense_Qt_2/StatefulPartitionedCallº
&Q_target_value/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_2/StatefulPartitionedCall:output:0q_target_value_555760q_target_value_555762*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_Q_target_value_layer_call_and_return_conditional_losses_5557492(
&Q_target_value/StatefulPartitionedCall
IdentityIdentity/Q_target_value/StatefulPartitionedCall:output:0'^Q_target_value/StatefulPartitionedCall(^relu_dense_Qt_1/StatefulPartitionedCall(^relu_dense_Qt_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::2P
&Q_target_value/StatefulPartitionedCall&Q_target_value/StatefulPartitionedCall2R
'relu_dense_Qt_1/StatefulPartitionedCall'relu_dense_Qt_1/StatefulPartitionedCall2R
'relu_dense_Qt_2/StatefulPartitionedCall'relu_dense_Qt_2/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ê
¸
(__inference_model_3_layer_call_fn_555822	
state
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_5558072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ä
´
$__inference_signature_wrapper_555877	
state
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8**
f%R#
!__inference__wrapped_model_5556802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¨
!__inference__wrapped_model_555680	
state:
6model_3_relu_dense_qt_1_matmul_readvariableop_resource;
7model_3_relu_dense_qt_1_biasadd_readvariableop_resource:
6model_3_relu_dense_qt_2_matmul_readvariableop_resource;
7model_3_relu_dense_qt_2_biasadd_readvariableop_resource9
5model_3_q_target_value_matmul_readvariableop_resource:
6model_3_q_target_value_biasadd_readvariableop_resource
identityÕ
-model_3/relu_dense_Qt_1/MatMul/ReadVariableOpReadVariableOp6model_3_relu_dense_qt_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02/
-model_3/relu_dense_Qt_1/MatMul/ReadVariableOpº
model_3/relu_dense_Qt_1/MatMulMatMulstate5model_3/relu_dense_Qt_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
model_3/relu_dense_Qt_1/MatMulÔ
.model_3/relu_dense_Qt_1/BiasAdd/ReadVariableOpReadVariableOp7model_3_relu_dense_qt_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.model_3/relu_dense_Qt_1/BiasAdd/ReadVariableOpá
model_3/relu_dense_Qt_1/BiasAddBiasAdd(model_3/relu_dense_Qt_1/MatMul:product:06model_3/relu_dense_Qt_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
model_3/relu_dense_Qt_1/BiasAdd 
model_3/relu_dense_Qt_1/TanhTanh(model_3/relu_dense_Qt_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_3/relu_dense_Qt_1/TanhÕ
-model_3/relu_dense_Qt_2/MatMul/ReadVariableOpReadVariableOp6model_3_relu_dense_qt_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-model_3/relu_dense_Qt_2/MatMul/ReadVariableOpÕ
model_3/relu_dense_Qt_2/MatMulMatMul model_3/relu_dense_Qt_1/Tanh:y:05model_3/relu_dense_Qt_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
model_3/relu_dense_Qt_2/MatMulÔ
.model_3/relu_dense_Qt_2/BiasAdd/ReadVariableOpReadVariableOp7model_3_relu_dense_qt_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.model_3/relu_dense_Qt_2/BiasAdd/ReadVariableOpá
model_3/relu_dense_Qt_2/BiasAddBiasAdd(model_3/relu_dense_Qt_2/MatMul:product:06model_3/relu_dense_Qt_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
model_3/relu_dense_Qt_2/BiasAdd 
model_3/relu_dense_Qt_2/TanhTanh(model_3/relu_dense_Qt_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_3/relu_dense_Qt_2/TanhÒ
,model_3/Q_target_value/MatMul/ReadVariableOpReadVariableOp5model_3_q_target_value_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,model_3/Q_target_value/MatMul/ReadVariableOpÒ
model_3/Q_target_value/MatMulMatMul model_3/relu_dense_Qt_2/Tanh:y:04model_3/Q_target_value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_3/Q_target_value/MatMulÑ
-model_3/Q_target_value/BiasAdd/ReadVariableOpReadVariableOp6model_3_q_target_value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model_3/Q_target_value/BiasAdd/ReadVariableOpÝ
model_3/Q_target_value/BiasAddBiasAdd'model_3/Q_target_value/MatMul:product:05model_3/Q_target_value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model_3/Q_target_value/BiasAdd
model_3/Q_target_value/ReluRelu'model_3/Q_target_value/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_3/Q_target_value/Relu}
IdentityIdentity)model_3/Q_target_value/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::::N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
â
³
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_555992

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 


C__inference_model_3_layer_call_and_return_conditional_losses_555843

inputs
relu_dense_qt_1_555827
relu_dense_qt_1_555829
relu_dense_qt_2_555832
relu_dense_qt_2_555834
q_target_value_555837
q_target_value_555839
identity¢&Q_target_value/StatefulPartitionedCall¢'relu_dense_Qt_1/StatefulPartitionedCall¢'relu_dense_Qt_2/StatefulPartitionedCall
'relu_dense_Qt_1/StatefulPartitionedCallStatefulPartitionedCallinputsrelu_dense_qt_1_555827relu_dense_qt_1_555829*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_5556952)
'relu_dense_Qt_1/StatefulPartitionedCall¿
'relu_dense_Qt_2/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_1/StatefulPartitionedCall:output:0relu_dense_qt_2_555832relu_dense_qt_2_555834*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_5557222)
'relu_dense_Qt_2/StatefulPartitionedCallº
&Q_target_value/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_2/StatefulPartitionedCall:output:0q_target_value_555837q_target_value_555839*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_Q_target_value_layer_call_and_return_conditional_losses_5557492(
&Q_target_value/StatefulPartitionedCall
IdentityIdentity/Q_target_value/StatefulPartitionedCall:output:0'^Q_target_value/StatefulPartitionedCall(^relu_dense_Qt_1/StatefulPartitionedCall(^relu_dense_Qt_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::2P
&Q_target_value/StatefulPartitionedCall&Q_target_value/StatefulPartitionedCall2R
'relu_dense_Qt_1/StatefulPartitionedCall'relu_dense_Qt_1/StatefulPartitionedCall2R
'relu_dense_Qt_2/StatefulPartitionedCall'relu_dense_Qt_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


0__inference_relu_dense_Qt_2_layer_call_fn_556001

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_5557222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
â
³
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_555695

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
É#
ú
"__inference__traced_restore_556096
file_prefix-
)assignvariableop_relu_dense_qt_1_1_kernel-
)assignvariableop_1_relu_dense_qt_1_1_bias/
+assignvariableop_2_relu_dense_qt_2_1_kernel-
)assignvariableop_3_relu_dense_qt_2_1_bias.
*assignvariableop_4_q_target_value_1_kernel,
(assignvariableop_5_q_target_value_1_bias

identity_7¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢	RestoreV2¢RestoreV2_1Ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ß
valueÕBÒB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
RestoreV2/shape_and_slicesÉ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp)assignvariableop_relu_dense_qt_1_1_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1
AssignVariableOp_1AssignVariableOp)assignvariableop_1_relu_dense_qt_1_1_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2¡
AssignVariableOp_2AssignVariableOp+assignvariableop_2_relu_dense_qt_2_1_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOp)assignvariableop_3_relu_dense_qt_2_1_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4 
AssignVariableOp_4AssignVariableOp*assignvariableop_4_q_target_value_1_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5
AssignVariableOp_5AssignVariableOp(assignvariableop_5_q_target_value_1_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5¨
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesÄ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpä

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6ð

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


C__inference_model_3_layer_call_and_return_conditional_losses_555807

inputs
relu_dense_qt_1_555791
relu_dense_qt_1_555793
relu_dense_qt_2_555796
relu_dense_qt_2_555798
q_target_value_555801
q_target_value_555803
identity¢&Q_target_value/StatefulPartitionedCall¢'relu_dense_Qt_1/StatefulPartitionedCall¢'relu_dense_Qt_2/StatefulPartitionedCall
'relu_dense_Qt_1/StatefulPartitionedCallStatefulPartitionedCallinputsrelu_dense_qt_1_555791relu_dense_qt_1_555793*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_5556952)
'relu_dense_Qt_1/StatefulPartitionedCall¿
'relu_dense_Qt_2/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_1/StatefulPartitionedCall:output:0relu_dense_qt_2_555796relu_dense_qt_2_555798*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_5557222)
'relu_dense_Qt_2/StatefulPartitionedCallº
&Q_target_value/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_2/StatefulPartitionedCall:output:0q_target_value_555801q_target_value_555803*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_Q_target_value_layer_call_and_return_conditional_losses_5557492(
&Q_target_value/StatefulPartitionedCall
IdentityIdentity/Q_target_value/StatefulPartitionedCall:output:0'^Q_target_value/StatefulPartitionedCall(^relu_dense_Qt_1/StatefulPartitionedCall(^relu_dense_Qt_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::2P
&Q_target_value/StatefulPartitionedCall&Q_target_value/StatefulPartitionedCall2R
'relu_dense_Qt_1/StatefulPartitionedCall'relu_dense_Qt_1/StatefulPartitionedCall2R
'relu_dense_Qt_2/StatefulPartitionedCall'relu_dense_Qt_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ý

C__inference_model_3_layer_call_and_return_conditional_losses_555785	
state
relu_dense_qt_1_555769
relu_dense_qt_1_555771
relu_dense_qt_2_555774
relu_dense_qt_2_555776
q_target_value_555779
q_target_value_555781
identity¢&Q_target_value/StatefulPartitionedCall¢'relu_dense_Qt_1/StatefulPartitionedCall¢'relu_dense_Qt_2/StatefulPartitionedCall
'relu_dense_Qt_1/StatefulPartitionedCallStatefulPartitionedCallstaterelu_dense_qt_1_555769relu_dense_qt_1_555771*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_5556952)
'relu_dense_Qt_1/StatefulPartitionedCall¿
'relu_dense_Qt_2/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_1/StatefulPartitionedCall:output:0relu_dense_qt_2_555774relu_dense_qt_2_555776*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*T
fORM
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_5557222)
'relu_dense_Qt_2/StatefulPartitionedCallº
&Q_target_value/StatefulPartitionedCallStatefulPartitionedCall0relu_dense_Qt_2/StatefulPartitionedCall:output:0q_target_value_555779q_target_value_555781*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_Q_target_value_layer_call_and_return_conditional_losses_5557492(
&Q_target_value/StatefulPartitionedCall
IdentityIdentity/Q_target_value/StatefulPartitionedCall:output:0'^Q_target_value/StatefulPartitionedCall(^relu_dense_Qt_1/StatefulPartitionedCall(^relu_dense_Qt_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::2P
&Q_target_value/StatefulPartitionedCall&Q_target_value/StatefulPartitionedCall2R
'relu_dense_Qt_1/StatefulPartitionedCall'relu_dense_Qt_1/StatefulPartitionedCall2R
'relu_dense_Qt_2/StatefulPartitionedCall'relu_dense_Qt_2/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ë
²
J__inference_Q_target_value_layer_call_and_return_conditional_losses_555749

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
í
¹
(__inference_model_3_layer_call_fn_555961

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_5558432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
é

C__inference_model_3_layer_call_and_return_conditional_losses_555902

inputs2
.relu_dense_qt_1_matmul_readvariableop_resource3
/relu_dense_qt_1_biasadd_readvariableop_resource2
.relu_dense_qt_2_matmul_readvariableop_resource3
/relu_dense_qt_2_biasadd_readvariableop_resource1
-q_target_value_matmul_readvariableop_resource2
.q_target_value_biasadd_readvariableop_resource
identity½
%relu_dense_Qt_1/MatMul/ReadVariableOpReadVariableOp.relu_dense_qt_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02'
%relu_dense_Qt_1/MatMul/ReadVariableOp£
relu_dense_Qt_1/MatMulMatMulinputs-relu_dense_Qt_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/MatMul¼
&relu_dense_Qt_1/BiasAdd/ReadVariableOpReadVariableOp/relu_dense_qt_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&relu_dense_Qt_1/BiasAdd/ReadVariableOpÁ
relu_dense_Qt_1/BiasAddBiasAdd relu_dense_Qt_1/MatMul:product:0.relu_dense_Qt_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/BiasAdd
relu_dense_Qt_1/TanhTanh relu_dense_Qt_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_1/Tanh½
%relu_dense_Qt_2/MatMul/ReadVariableOpReadVariableOp.relu_dense_qt_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%relu_dense_Qt_2/MatMul/ReadVariableOpµ
relu_dense_Qt_2/MatMulMatMulrelu_dense_Qt_1/Tanh:y:0-relu_dense_Qt_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/MatMul¼
&relu_dense_Qt_2/BiasAdd/ReadVariableOpReadVariableOp/relu_dense_qt_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&relu_dense_Qt_2/BiasAdd/ReadVariableOpÁ
relu_dense_Qt_2/BiasAddBiasAdd relu_dense_Qt_2/MatMul:product:0.relu_dense_Qt_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/BiasAdd
relu_dense_Qt_2/TanhTanh relu_dense_Qt_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_dense_Qt_2/Tanhº
$Q_target_value/MatMul/ReadVariableOpReadVariableOp-q_target_value_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02&
$Q_target_value/MatMul/ReadVariableOp²
Q_target_value/MatMulMatMulrelu_dense_Qt_2/Tanh:y:0,Q_target_value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/MatMul¹
%Q_target_value/BiasAdd/ReadVariableOpReadVariableOp.q_target_value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%Q_target_value/BiasAdd/ReadVariableOp½
Q_target_value/BiasAddBiasAddQ_target_value/MatMul:product:0-Q_target_value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/BiasAdd
Q_target_value/ReluReluQ_target_value/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Q_target_value/Reluu
IdentityIdentity!Q_target_value/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::::O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "¯L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*­
serving_default
7
state.
serving_default_state:0ÿÿÿÿÿÿÿÿÿB
Q_target_value0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ì|
ü$
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
loss
regularization_losses
trainable_variables
		variables

	keras_api

signatures
*2&call_and_return_all_conditional_losses
3__call__
4_default_save_signature"¥"
_tf_keras_model"{"class_name": "Model", "name": "model_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state"}, "name": "state", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "relu_dense_Qt_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "relu_dense_Qt_1", "inbound_nodes": [[["state", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "relu_dense_Qt_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "relu_dense_Qt_2", "inbound_nodes": [[["relu_dense_Qt_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Q_target_value", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Q_target_value", "inbound_nodes": [[["relu_dense_Qt_2", 0, 0, {}]]]}], "input_layers": [["state", 0, 0]], "output_layers": [["Q_target_value", 0, 0]]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state"}, "name": "state", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "relu_dense_Qt_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "relu_dense_Qt_1", "inbound_nodes": [[["state", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "relu_dense_Qt_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "relu_dense_Qt_2", "inbound_nodes": [[["relu_dense_Qt_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Q_target_value", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Q_target_value", "inbound_nodes": [[["relu_dense_Qt_2", 0, 0, {}]]]}], "input_layers": [["state", 0, 0]], "output_layers": [["Q_target_value", 0, 0]]}}, "training_config": {"loss": ["mse"], "metrics": null, "weighted_metrics": null, "loss_weights": null, "sample_weight_mode": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0005, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
å"â
_tf_keras_input_layerÂ{"class_name": "InputLayer", "name": "state", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state"}}
Ú

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*5&call_and_return_all_conditional_losses
6__call__"µ
_tf_keras_layer{"class_name": "Dense", "name": "relu_dense_Qt_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "relu_dense_Qt_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
Ü

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*7&call_and_return_all_conditional_losses
8__call__"·
_tf_keras_layer{"class_name": "Dense", "name": "relu_dense_Qt_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "relu_dense_Qt_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
Ù

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*9&call_and_return_all_conditional_losses
:__call__"´
_tf_keras_layer{"class_name": "Dense", "name": "Q_target_value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Q_target_value", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
Ê
regularization_losses
layer_metrics
metrics
 non_trainable_variables

!layers
trainable_variables
"layer_regularization_losses
		variables
3__call__
4_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
,
;serving_default"
signature_map
*:(@2relu_dense_Qt_1_1/kernel
$:"@2relu_dense_Qt_1_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
#layer_metrics
$metrics
%non_trainable_variables

&layers
trainable_variables
'layer_regularization_losses
	variables
6__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
*:(@@2relu_dense_Qt_2_1/kernel
$:"@2relu_dense_Qt_2_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
(layer_metrics
)metrics
*non_trainable_variables

+layers
trainable_variables
,layer_regularization_losses
	variables
8__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
):'@2Q_target_value_1/kernel
#:!2Q_target_value_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
-layer_metrics
.metrics
/non_trainable_variables

0layers
trainable_variables
1layer_regularization_losses
	variables
:__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
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
Ú2×
C__inference_model_3_layer_call_and_return_conditional_losses_555785
C__inference_model_3_layer_call_and_return_conditional_losses_555902
C__inference_model_3_layer_call_and_return_conditional_losses_555927
C__inference_model_3_layer_call_and_return_conditional_losses_555766À
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
î2ë
(__inference_model_3_layer_call_fn_555858
(__inference_model_3_layer_call_fn_555822
(__inference_model_3_layer_call_fn_555961
(__inference_model_3_layer_call_fn_555944À
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
Ý2Ú
!__inference__wrapped_model_555680´
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
annotationsª *$¢!

stateÿÿÿÿÿÿÿÿÿ
õ2ò
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_555972¢
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
Ú2×
0__inference_relu_dense_Qt_1_layer_call_fn_555981¢
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
õ2ò
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_555992¢
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
Ú2×
0__inference_relu_dense_Qt_2_layer_call_fn_556001¢
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
ô2ñ
J__inference_Q_target_value_layer_call_and_return_conditional_losses_556012¢
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
Ù2Ö
/__inference_Q_target_value_layer_call_fn_556021¢
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
1B/
$__inference_signature_wrapper_555877stateª
J__inference_Q_target_value_layer_call_and_return_conditional_losses_556012\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_Q_target_value_layer_call_fn_556021O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ
!__inference__wrapped_model_555680y.¢+
$¢!

stateÿÿÿÿÿÿÿÿÿ
ª "?ª<
:
Q_target_value(%
Q_target_valueÿÿÿÿÿÿÿÿÿ®
C__inference_model_3_layer_call_and_return_conditional_losses_555766g6¢3
,¢)

stateÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
C__inference_model_3_layer_call_and_return_conditional_losses_555785g6¢3
,¢)

stateÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯
C__inference_model_3_layer_call_and_return_conditional_losses_555902h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯
C__inference_model_3_layer_call_and_return_conditional_losses_555927h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_model_3_layer_call_fn_555822Z6¢3
,¢)

stateÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_555858Z6¢3
,¢)

stateÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_555944[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_555961[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ«
K__inference_relu_dense_Qt_1_layer_call_and_return_conditional_losses_555972\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
0__inference_relu_dense_Qt_1_layer_call_fn_555981O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@«
K__inference_relu_dense_Qt_2_layer_call_and_return_conditional_losses_555992\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
0__inference_relu_dense_Qt_2_layer_call_fn_556001O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@«
$__inference_signature_wrapper_5558777¢4
¢ 
-ª*
(
state
stateÿÿÿÿÿÿÿÿÿ"?ª<
:
Q_target_value(%
Q_target_valueÿÿÿÿÿÿÿÿÿ