extends Node2D

export (int) var RADIUS = 200
export (int) var FORCE = 75
var player
var apply_forces = false
var state = false


func _ready():
	$Aura/attraction.shape.radius = RADIUS	


func _physics_process(delta):
	# Si le vaisseau est dans la zone d'attraction de la supernova, il subit de nouvelles forces.
		if apply_forces:
			# La force d'attraction dépend de la distance vaisseau - supernova.
			#var push_force = -1
			var push_force = -inverse_lerp($Aura/attraction.shape.radius, 0, $Sprite.global_position.distance_to(player.position))
			if push_force >= 0:
				push_force = 0
			#print(push_force)
			var attraction_direction = - (($Aura.global_position) - (player.global_position)).normalized()
			var added_velocity =  -attraction_direction * (push_force * FORCE)
			player.applied_forces += added_velocity

func _on_Aura_body_entered(body):
	if body.name == "Spaceship":
		player = body
		apply_forces = true


func _on_Aura_body_exited(body):
	if body == player:
		apply_forces = false


func _on_Timer_timeout():
	if state :
		state = false
	else :
		state = true


func _on_Centre_body_entered(body):
	if body.name == "Spaceship":
		player.set_physics_process(false)
		player.get_node("AnimationPlayer").play("Death")
