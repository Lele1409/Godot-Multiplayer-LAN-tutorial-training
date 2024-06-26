extends CharacterBody2D

const SPEED: int = 500

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction: Vector2


func _ready():
	direction = Vector2(1,0).rotated(rotation)


func _physics_process(delta):
	velocity = SPEED * direction
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	move_and_slide()
