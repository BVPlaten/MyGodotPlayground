extends CSGBox3D

# Set the rotation speed (in degrees per second)
var rotation_speed = 30

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    # Check for key presses
    if Input.is_key_pressed(KEY_Q):
        # Rotate around the x-axis
        rotate(Vector3(1, 0, 0), deg_to_rad(rotation_speed) * delta)
    elif Input.is_key_pressed(KEY_W):
        # Rotate around the y-axis
        rotate(Vector3(0, 1, 0), deg_to_rad(rotation_speed) * delta)
    elif Input.is_key_pressed(KEY_E):
        # Rotate around the z-axis
        rotate(Vector3(0, 0, 1), deg_to_rad(rotation_speed) * delta)
