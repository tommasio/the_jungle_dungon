{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_troll",
  "eventList": [],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"damage_points","path":"objects/obj_enemy/obj_enemy.yy",},"value":"20",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"run_sequence","path":"objects/obj_enemy/obj_enemy.yy",},"value":"seq_troll_run",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"hitbox_sequence","path":"objects/obj_enemy/obj_enemy.yy",},"value":"seq_troll_attackHB",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"hit_sequence","path":"objects/obj_enemy/obj_enemy.yy",},"value":"seq_troll_attack",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"max_speed","path":"objects/obj_enemy/obj_enemy.yy",},"value":"2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"frames_until_death","path":"objects/obj_enemy/obj_enemy.yy",},"value":"26",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"dead_sequence","path":"objects/obj_enemy/obj_enemy.yy",},"value":"seq_troll_death",},
  ],
  "parent": {
    "name": "enemy",
    "path": "folders/Objects/enemy.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy",
    "path": "objects/obj_enemy/obj_enemy.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [
    {"x":26.0,"y":14.0,},
    {"x":39.0,"y":14.0,},
    {"x":39.0,"y":54.0,},
    {"x":26.0,"y":54.0,},
  ],
  "physicsStartAwake": true,
  "properties": [],
  "solid": false,
  "spriteId": {
    "name": "spr_troll",
    "path": "sprites/spr_troll/spr_troll.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}