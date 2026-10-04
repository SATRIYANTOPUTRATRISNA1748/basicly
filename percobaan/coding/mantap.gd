extends Node2D

@onready var orang = $Orang
var kecepatan = 200

var is_maju = false
var is_mundur = false
var is_kiri = false
var is_kanan = false

func _process(delta):
	var arah = Vector2.ZERO
	if Input.is_action_pressed("maju"):
		arah.y -= 1
	if Input.is_action_pressed("mundur"):
		arah.y += 1
	if Input.is_action_pressed("kiri"):
		arah.x -= 1
	if Input.is_action_pressed("kanan"):
		arah.x += 1
	if is_maju:
		arah.y -= 1
	if is_mundur:
		arah.y += 1
	if is_kiri:
		arah.x -= 1
	if is_kanan:
		arah.x += 1
	if arah != Vector2.ZERO:
		orang.position += arah.normalized() * kecepatan * delta

func _on_tambah_down(): is_maju = true
func _on_tambah_up(): is_maju = false

func _on_kurang_down(): is_mundur = true
func _on_kurang_up(): is_mundur = false

func _on_pita_down(): is_kiri = true
func _on_pita_up(): is_kiri = false

func _on_piti_down(): is_kanan = true
func _on_piti_up(): is_kanan = false
