
?
inputPlaceholder*
shape:?????????*
dtype0
@
targetPlaceholder*
shape:?????????*
dtype0
?
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"       *
_class
loc:@dense/kernel*
dtype0
y
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *?7??*
_class
loc:@dense/kernel*
dtype0
y
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?7??*
_class
loc:@dense/kernel*
dtype0
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
dtype0*
seed2 
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel
?
'dense/kernel/Initializer/random_uniformAddV2+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
?
dense/kernel
VariableV2*
shape
: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
?
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
l
dense/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@dense/bias*
dtype0
y

dense/bias
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
?
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
_
dense/MatMulMatMulinputdense/kernel/read*
transpose_b( *
T0*
transpose_a( 
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
&
hiddenReludense/BiasAdd*
T0
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"       *!
_class
loc:@dense_1/kernel*
dtype0
}
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *׳ݾ*!
_class
loc:@dense_1/kernel*
dtype0
}
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳?>*!
_class
loc:@dense_1/kernel*
dtype0
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
?
)dense_1/kernel/Initializer/random_uniformAddV2-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
?
dense_1/kernel
VariableV2*
shape
: *
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
?
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
p
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
}
dense_1/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container 
?
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
d
dense_1/MatMulMatMulhiddendense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
)
hidden2Reludense_1/BiasAdd*
T0
?
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0
}
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *q??*!
_class
loc:@dense_2/kernel*
dtype0
}
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *q??*!
_class
loc:@dense_2/kernel*
dtype0
?
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_2/kernel*
dtype0*
seed2 
?
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel
?
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel
?
)dense_2/kernel/Initializer/random_uniformAddV2-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel
?
dense_2/kernel
VariableV2*
shape
:*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
?
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
p
dense_2/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
}
dense_2/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container 
?
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
e
dense_2/MatMulMatMulhidden2dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC
,
outputIdentitydense_2/BiasAdd*
T0
#
subSuboutputtarget*
T0

SquareSquaresub*
T0
:
ConstConst*
valueB"       *
dtype0
A
lossMeanSquareConst*

Tidx0*
	keep_dims( *
T0
8
gradients/ShapeConst*
valueB *
dtype0
F
gradients/grad_ys_0/ConstConst*
valueB
 *  ??*
dtype0
b
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*
T0*

index_type0
V
!gradients/loss_grad/Reshape/shapeConst*
valueB"      *
dtype0
u
gradients/loss_grad/ReshapeReshapegradients/grad_ys_0!gradients/loss_grad/Reshape/shape*
T0*
Tshape0
C
gradients/loss_grad/ShapeShapeSquare*
T0*
out_type0
s
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*

Tmultiples0*
T0
E
gradients/loss_grad/Shape_1ShapeSquare*
T0*
out_type0
D
gradients/loss_grad/Shape_2Const*
valueB *
dtype0
G
gradients/loss_grad/ConstConst*
valueB: *
dtype0
~
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/loss_grad/Const_1Const*
valueB: *
dtype0
?
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*

Tidx0*
	keep_dims( *
T0
G
gradients/loss_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0
h
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0
f
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

SrcT0*
Truncate( *

DstT0
c
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0
f
gradients/Square_grad/ConstConst^gradients/loss_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/Mul*
T0
B
gradients/sub_grad/ShapeShapeoutput*
T0*
out_type0
D
gradients/sub_grad/Shape_1Shapetarget*
T0*
out_type0
?
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
?
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
C
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0
?
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
?
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
?
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/sub_grad/tuple/control_dependency*
T0*
data_formatNHWC
?
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_2/BiasAdd_grad/BiasAddGrad,^gradients/sub_grad/tuple/control_dependency
?
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/sub_grad/tuple/control_dependency0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
?
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
?
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
T0*
transpose_a( 
?
&gradients/dense_2/MatMul_grad/MatMul_1MatMulhidden27gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
?
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
?
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
?
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
u
gradients/hidden2_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencyhidden2*
T0
z
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/hidden2_grad/ReluGrad*
T0*
data_formatNHWC
?
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_1/BiasAdd_grad/BiasAddGrad ^gradients/hidden2_grad/ReluGrad
?
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/hidden2_grad/ReluGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/hidden2_grad/ReluGrad
?
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad
?
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
?
&gradients/dense_1/MatMul_grad/MatMul_1MatMulhidden7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
?
.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
?
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
?
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
s
gradients/hidden_grad/ReluGradReluGrad6gradients/dense_1/MatMul_grad/tuple/control_dependencyhidden*
T0
w
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/hidden_grad/ReluGrad*
T0*
data_formatNHWC
?
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad^gradients/hidden_grad/ReluGrad
?
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/hidden_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/hidden_grad/ReluGrad
?
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
?
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
?
$gradients/dense/MatMul_grad/MatMul_1MatMulinput5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
?
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
?
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
?
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@dense/bias*
dtype0
v
beta1_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
valueB
 *w??*
_class
loc:@dense/bias*
dtype0
v
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias
y
#dense/kernel/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@dense/kernel*
dtype0
?
dense/kernel/Adam
VariableV2*
shape
: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
?
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
{
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@dense/kernel*
dtype0
?
dense/kernel/Adam_1
VariableV2*
shape
: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
?
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
q
!dense/bias/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@dense/bias*
dtype0
~
dense/bias/Adam
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
?
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias
s
#dense/bias/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@dense/bias*
dtype0
?
dense/bias/Adam_1
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
?
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias
}
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB *    *!
_class
loc:@dense_1/kernel*
dtype0
?
dense_1/kernel/Adam
VariableV2*
shape
: *
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
?
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB *    *!
_class
loc:@dense_1/kernel*
dtype0
?
dense_1/kernel/Adam_1
VariableV2*
shape
: *
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
?
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
u
#dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
?
dense_1/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container 
?
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias
w
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
?
dense_1/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container 
?
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias
}
%dense_2/kernel/Adam/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_2/kernel*
dtype0
?
dense_2/kernel/Adam
VariableV2*
shape
:*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
?
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

'dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_2/kernel*
dtype0
?
dense_2/kernel/Adam_1
VariableV2*
shape
:*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
?
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel
u
#dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
?
dense_2/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container 
?
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
_
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias
w
%dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
?
dense_2/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container 
?
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
c
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias
@
train/learning_rateConst*
valueB
 *o?:*
dtype0
8
train/beta1Const*
valueB
 *fff?*
dtype0
8
train/beta2Const*
valueB
 *w??*
dtype0
:
train/epsilonConst*
valueB
 *w?+2*
dtype0
?
#train/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
?
!train/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( 
?
%train/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
?
#train/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_1/bias*
use_nesterov( 
?
%train/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( 
?
#train/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_2/bias*
use_nesterov( 
?
	train/mulMulbeta1_power/readtrain/beta1"^train/update_dense/bias/ApplyAdam$^train/update_dense/kernel/ApplyAdam$^train/update_dense_1/bias/ApplyAdam&^train/update_dense_1/kernel/ApplyAdam$^train/update_dense_2/bias/ApplyAdam&^train/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias

train/AssignAssignbeta1_power	train/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
?
train/mul_1Mulbeta2_power/readtrain/beta2"^train/update_dense/bias/ApplyAdam$^train/update_dense/kernel/ApplyAdam$^train/update_dense_1/bias/ApplyAdam&^train/update_dense_1/kernel/ApplyAdam$^train/update_dense_2/bias/ApplyAdam&^train/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias
?
train/Assign_1Assignbeta2_powertrain/mul_1*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
?
trainNoOp^train/Assign^train/Assign_1"^train/update_dense/bias/ApplyAdam$^train/update_dense/kernel/ApplyAdam$^train/update_dense_1/bias/ApplyAdam&^train/update_dense_1/kernel/ApplyAdam$^train/update_dense_2/bias/ApplyAdam&^train/update_dense_2/kernel/ApplyAdam
?
initNoOp^beta1_power/Assign^beta2_power/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_2/bias/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/kernel/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
?
save/SaveV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1*
dtype0
o
save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1*"
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*"
dtypes
2
?
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_2Assign
dense/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_3Assigndense/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_4Assigndense/bias/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
save/Assign_6Assigndense/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
save/Assign_8Assigndense_1/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
?
save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
?
save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
?
save/Assign_11Assigndense_1/kernelsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
?
save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
?
save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
?
save/Assign_14Assigndense_2/biassave/RestoreV2:14*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
?
save/Assign_15Assigndense_2/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
?
save/Assign_16Assigndense_2/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
?
save/Assign_17Assigndense_2/kernelsave/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
?
save/Assign_18Assigndense_2/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
?
save/Assign_19Assigndense_2/kernel/Adam_1save/RestoreV2:19*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"?