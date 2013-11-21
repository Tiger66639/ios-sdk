#import "NIKDate.h"
#import "RVBEmailTemplateResponse.h"

@implementation RVBEmailTemplateResponse

-(id)_id: (NSNumber*) _id
    name: (NSString*) name
    description: (NSString*) description
    to: (NSArray*) to
    cc: (NSArray*) cc
    bcc: (NSArray*) bcc
    subject: (NSString*) subject
    body_text: (NSString*) body_text
    body_html: (NSString*) body_html
    from: (RVBEmailAddress*) from
    reply_to: (RVBEmailAddress*) reply_to
    defaults: (NSArray*) defaults
    created_date: (NSString*) created_date
    created_by_id: (NSNumber*) created_by_id
    last_modified_date: (NSString*) last_modified_date
    last_modified_by_id: (NSNumber*) last_modified_by_id
{
  __id = _id;
  _name = name;
  _description = description;
  _to = to;
  _cc = cc;
  _bcc = bcc;
  _subject = subject;
  _body_text = body_text;
  _body_html = body_html;
  _from = from;
  _reply_to = reply_to;
  _defaults = defaults;
  _created_date = created_date;
  _created_by_id = created_by_id;
  _last_modified_date = last_modified_date;
  _last_modified_by_id = last_modified_by_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"]; 
        _name = dict[@"name"]; 
        _description = dict[@"description"]; 
        id to_dict = dict[@"to"];
        if([to_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)to_dict count]];

            if([(NSArray*)to_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)to_dict) {
                    RVBEmailAddress* d = [[RVBEmailAddress alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _to = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _to = [[NSArray alloc] init];
            }
        }
        else {
            _to = [[NSArray alloc] init];
        }
        id cc_dict = dict[@"cc"];
        if([cc_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)cc_dict count]];

            if([(NSArray*)cc_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)cc_dict) {
                    RVBEmailAddress* d = [[RVBEmailAddress alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _cc = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _cc = [[NSArray alloc] init];
            }
        }
        else {
            _cc = [[NSArray alloc] init];
        }
        id bcc_dict = dict[@"bcc"];
        if([bcc_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)bcc_dict count]];

            if([(NSArray*)bcc_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)bcc_dict) {
                    RVBEmailAddress* d = [[RVBEmailAddress alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _bcc = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _bcc = [[NSArray alloc] init];
            }
        }
        else {
            _bcc = [[NSArray alloc] init];
        }
        _subject = dict[@"subject"]; 
        _body_text = dict[@"body_text"]; 
        _body_html = dict[@"body_html"]; 
        id from_dict = dict[@"from"];
        _from = [[RVBEmailAddress alloc]initWithValues:from_dict];
        id reply_to_dict = dict[@"reply_to"];
        _reply_to = [[RVBEmailAddress alloc]initWithValues:reply_to_dict];
        _defaults = dict[@"defaults"]; 
        _created_date = dict[@"created_date"]; 
        _created_by_id = dict[@"created_by_id"]; 
        _last_modified_date = dict[@"last_modified_date"]; 
        _last_modified_by_id = dict[@"last_modified_by_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_description != nil) dict[@"description"] = _description ;
    if(_to != nil){
        if([_to isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( RVBEmailAddress *to in (NSArray*)_to) {
                [array addObject:[(NIKSwaggerObject*)to asDictionary]];
            }
            dict[@"to"] = array;
        }
        else if(_to && [_to isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_to toString];
            if(dateString){
                dict[@"to"] = dateString;
            }
        }
    }
    else {
    if(_to != nil) dict[@"to"] = [(NIKSwaggerObject*)_to asDictionary];
    }
    if(_cc != nil){
        if([_cc isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( RVBEmailAddress *cc in (NSArray*)_cc) {
                [array addObject:[(NIKSwaggerObject*)cc asDictionary]];
            }
            dict[@"cc"] = array;
        }
        else if(_cc && [_cc isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_cc toString];
            if(dateString){
                dict[@"cc"] = dateString;
            }
        }
    }
    else {
    if(_cc != nil) dict[@"cc"] = [(NIKSwaggerObject*)_cc asDictionary];
    }
    if(_bcc != nil){
        if([_bcc isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( RVBEmailAddress *bcc in (NSArray*)_bcc) {
                [array addObject:[(NIKSwaggerObject*)bcc asDictionary]];
            }
            dict[@"bcc"] = array;
        }
        else if(_bcc && [_bcc isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_bcc toString];
            if(dateString){
                dict[@"bcc"] = dateString;
            }
        }
    }
    else {
    if(_bcc != nil) dict[@"bcc"] = [(NIKSwaggerObject*)_bcc asDictionary];
    }
    if(_subject != nil) dict[@"subject"] = _subject ;
    if(_body_text != nil) dict[@"body_text"] = _body_text ;
    if(_body_html != nil) dict[@"body_html"] = _body_html ;
    if(_from != nil){
        if([_from isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( RVBEmailAddress *from in (NSArray*)_from) {
                [array addObject:[(NIKSwaggerObject*)from asDictionary]];
            }
            dict[@"from"] = array;
        }
        else if(_from && [_from isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_from toString];
            if(dateString){
                dict[@"from"] = dateString;
            }
        }
    }
    else {
    if(_from != nil) dict[@"from"] = [(NIKSwaggerObject*)_from asDictionary];
    }
    if(_reply_to != nil){
        if([_reply_to isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( RVBEmailAddress *reply_to in (NSArray*)_reply_to) {
                [array addObject:[(NIKSwaggerObject*)reply_to asDictionary]];
            }
            dict[@"reply_to"] = array;
        }
        else if(_reply_to && [_reply_to isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_reply_to toString];
            if(dateString){
                dict[@"reply_to"] = dateString;
            }
        }
    }
    else {
    if(_reply_to != nil) dict[@"reply_to"] = [(NIKSwaggerObject*)_reply_to asDictionary];
    }
    if(_defaults != nil) dict[@"defaults"] = _defaults ;
    if(_created_date != nil) dict[@"created_date"] = _created_date ;
    if(_created_by_id != nil) dict[@"created_by_id"] = _created_by_id ;
    if(_last_modified_date != nil) dict[@"last_modified_date"] = _last_modified_date ;
    if(_last_modified_by_id != nil) dict[@"last_modified_by_id"] = _last_modified_by_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

