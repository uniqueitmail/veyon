macro(set_default_target_properties TARGET_NAME)
	set_property(TARGET ${TARGET_NAME} PROPERTY NO_SYSTEM_FROM_IMPORTED ON)
	set_property(TARGET ${TARGET_NAME} PROPERTY CXX_STANDARD 17)
	set_property(TARGET ${TARGET_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
	if(WITH_LTO AND NOT VEYON_DEBUG)
	set_target_properties(${TARGET_NAME} PROPERTIES INTERPROCEDURAL_OPTIMIZATION TRUE)
	endif()
endmacro()

