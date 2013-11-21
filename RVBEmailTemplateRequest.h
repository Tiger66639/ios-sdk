#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "RVBRVBEmailAddress*.h"
#import "RVBEmailAddress.h"
#import "Integer.h"

@interface RVBEmailTemplateRequest : NIKSwaggerObject

@property(nonatomic) NSNumber* _id;
@property(nonatomic) NSString* name;
@property(nonatomic) NSString* description;
@property(nonatomic) NSArray* to;
@property(nonatomic) NSArray* cc;
@property(nonatomic) NSArray* bcc;
@property(nonatomic) NSString* subject;
@property(nonatomic) NSString* body_text;
@property(nonatomic) NSString* body_html;
@property(nonatomic) RVBEmailAddress* from;
@property(nonatomic) RVBEmailAddress* reply_to;
@property(nonatomic) NSArray* defaults;
- (id) _id: (NSNumber*) _id
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
     defaults: (NSArray*) defaults;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

