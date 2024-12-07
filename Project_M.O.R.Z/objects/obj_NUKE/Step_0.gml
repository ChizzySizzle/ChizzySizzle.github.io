/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03231EC6
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "detonate"
detonate += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C34D905
/// @DnDArgument : "expr" "-.02"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "dropx"
dropx += -.02;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71D13D63
/// @DnDArgument : "expr" "-.02"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "dropy"
dropy += -.02;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 318FC488
/// @DnDArgument : "xscale" "dropx"
/// @DnDArgument : "yscale" "dropy"
image_xscale = dropx;
image_yscale = dropy;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33DBBBA2
/// @DnDArgument : "var" "detonate"
/// @DnDArgument : "op" "3"
if(detonate <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 063B98AE
	/// @DnDParent : 33DBBBA2
	instance_destroy();
}