package ecs

Context :: struct {
    entities: Entities,
    component_map: map[typeid]Component_list
}