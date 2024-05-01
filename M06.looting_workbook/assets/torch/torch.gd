extends Node2D

@onready var flame: Sprite2D = $Flame
@onready var target_node: Sprite2D = $SomeSprite2DNode

func toggle_target_node_visibility() -> void:
	target_node.visible = not target_node.visible
	
func _ready() -> void:
	# This parameter of the shader material gives each flame a slightly different look and randomized animation.
	# Can I make a commit now?
	flame.material.set("shader_parameter/offset", global_position * 0.1)
