#import "NIKDate.h"
#import "RVBAppRequest.h"

@implementation RVBAppRequest

-(id)_id: (NSNumber*) _id
    name: (NSString*) name
    api_name: (NSString*) api_name
    description: (NSString*) description
    is_active: (NSNumber*) is_active
    url: (NSString*) url
    is_url_external: (NSNumber*) is_url_external
    import_url: (NSString*) import_url
    storage_service_id: (NSString*) storage_service_id
    storage_container: (NSString*) storage_container
    requires_fullscreen: (NSNumber*) requires_fullscreen
    allow_fullscreen_toggle: (NSNumber*) allow_fullscreen_toggle
    toggle_location: (NSString*) toggle_location
    requires_plugin: (NSNumber*) requires_plugin
    roles_default_app: (NSArray*) roles_default_app
    users_default_app: (NSArray*) users_default_app
    app_groups: (NSArray*) app_groups
    roles: (NSArray*) roles
    services: (NSArray*) services
{
  __id = _id;
  _name = name;
  _api_name = api_name;
  _description = description;
  _is_active = is_active;
  _url = url;
  _is_url_external = is_url_external;
  _import_url = import_url;
  _storage_service_id = storage_service_id;
  _storage_container = storage_container;
  _requires_fullscreen = requires_fullscreen;
  _allow_fullscreen_toggle = allow_fullscreen_toggle;
  _toggle_location = toggle_location;
  _requires_plugin = requires_plugin;
  _roles_default_app = roles_default_app;
  _users_default_app = users_default_app;
  _app_groups = app_groups;
  _roles = roles;
  _services = services;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"]; 
        _name = dict[@"name"]; 
        _api_name = dict[@"api_name"]; 
        _description = dict[@"description"]; 
        _is_active = dict[@"is_active"]; 
        _url = dict[@"url"]; 
        _is_url_external = dict[@"is_url_external"]; 
        _import_url = dict[@"import_url"]; 
        _storage_service_id = dict[@"storage_service_id"]; 
        _storage_container = dict[@"storage_container"]; 
        _requires_fullscreen = dict[@"requires_fullscreen"]; 
        _allow_fullscreen_toggle = dict[@"allow_fullscreen_toggle"]; 
        _toggle_location = dict[@"toggle_location"]; 
        _requires_plugin = dict[@"requires_plugin"]; 
        _roles_default_app = dict[@"roles_default_app"]; 
        _users_default_app = dict[@"users_default_app"]; 
        _app_groups = dict[@"app_groups"]; 
        _roles = dict[@"roles"]; 
        _services = dict[@"services"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_api_name != nil) dict[@"api_name"] = _api_name ;
    if(_description != nil) dict[@"description"] = _description ;
    if(_is_active != nil) dict[@"is_active"] = _is_active ;
    if(_url != nil) dict[@"url"] = _url ;
    if(_is_url_external != nil) dict[@"is_url_external"] = _is_url_external ;
    if(_import_url != nil) dict[@"import_url"] = _import_url ;
    if(_storage_service_id != nil) dict[@"storage_service_id"] = _storage_service_id ;
    if(_storage_container != nil) dict[@"storage_container"] = _storage_container ;
    if(_requires_fullscreen != nil) dict[@"requires_fullscreen"] = _requires_fullscreen ;
    if(_allow_fullscreen_toggle != nil) dict[@"allow_fullscreen_toggle"] = _allow_fullscreen_toggle ;
    if(_toggle_location != nil) dict[@"toggle_location"] = _toggle_location ;
    if(_requires_plugin != nil) dict[@"requires_plugin"] = _requires_plugin ;
    if(_roles_default_app != nil) dict[@"roles_default_app"] = _roles_default_app ;
    if(_users_default_app != nil) dict[@"users_default_app"] = _users_default_app ;
    if(_app_groups != nil) dict[@"app_groups"] = _app_groups ;
    if(_roles != nil) dict[@"roles"] = _roles ;
    if(_services != nil) dict[@"services"] = _services ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

