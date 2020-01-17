#==== :@) ==== 8@) ==== ´ö` ==== :@) ==== 8@) ==== ´ö` ==== :@) ==== 8@) ==== ´ö` ====
# pig_controls_plugin.gd
#-------------------------------------------------------------------------------------
# Description: Plugin Script
# Project:     "Pig Controls", a custom controls Plugin for Godot 3
#              https://github.com/Echopraxium/PigControls
# Author:      Echopraxium 2020
# Version:     0.0.1 (2020/01/18) AAAA/MM/DD
#-------------------------------------------------------------------------------------
# Documentation:
# https://docs.godotengine.org/en/3.1/tutorials/plugins/editor/making_plugins.html
#==== :@) ==== 8@) ==== ´ö` ==== :@) ==== 8@) ==== ´ö` ==== :@) ==== 8@) ==== ´ö` ====
tool
extends EditorPlugin

var pig_color_select_script = load("res://addons/pig_controls/buttons/ColorSelect/pig_color_select.gd")

func _enter_tree():
    # Initialization of the plugin goes here
    # Add the new type with a name, a parent type, a script and an icon
    add_custom_type("PigletColorSelect", "TextureButton",
                    preload("res://addons/pig_controls/buttons/ColorSelect/piglet_color_select.gd"), 
                    preload("res://addons/pig_controls/buttons/ColorSelect/piglet_color_select_icon.png"))
					
    add_custom_type("PigColorSelect", "TextureButton",
                    pig_color_select_script, 
                    preload("res://addons/pig_controls/buttons/ColorSelect/pig_color_select_icon.png"))

func _exit_tree():
    # Clean-up of the plugin goes here
    # Always remember to remove it from the engine when deactivated
    remove_custom_type("PigletColorSelect")
    remove_custom_type("PigColorSelect")