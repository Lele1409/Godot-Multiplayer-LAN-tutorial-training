extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var id: int
var sync_position: Vector2 = Vector2(0, 0)
var sync_rotation: float = 0.0

@export var bullet: PackedScene

func _ready():
	$MultiplayerSynchronizer.set_multiplayer_authority(id)

func _physics_process(delta):
	if $MultiplayerSynchronizer.get_multiplayer_authority() != multiplayer.get_unique_id():
		global_position = global_position.lerp(sync_position, .2)
		$GunRotation.rotation_degrees = lerpf($GunRotation.rotation_degrees, sync_rotation, .2)
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	$GunRotation.look_at(get_viewport().get_mouse_position())

	# Handle jump.
	if Input.is_action_just_pressed("move_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	sync_position = global_position
	sync_rotation = $GunRotation.rotation_degrees
	
	if Input.is_action_just_pressed("action_trigger"):
		fire.rpc()
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


@rpc("any_peer", "call_local")
func fire():
	var b = bullet.instantiate()
	b.global_position = $GunRotation/BulletSpawn.global_position
	b.rotation_degrees = $GunRotation.rotation_degrees
	get_tree().root.add_child(b)