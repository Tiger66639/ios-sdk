#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface RVBEmailAddress : NIKSwaggerObject

@property(nonatomic) NSString* name;
@property(nonatomic) NSString* email;
- (id) name: (NSString*) name
     email: (NSString*) email;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

