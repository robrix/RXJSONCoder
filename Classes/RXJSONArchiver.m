// RXJSONArchiver.m
// Created by Rob Rix on 2011-04-25
// Copyright 2011 Monochrome Industries

#import "RXJSONArchiver.h"

@interface RXJSONArchiver ()
-(NSString *)stringForBool:(BOOL)value;
@end

@implementation RXJSONArchiver

-(id)initForWritingWithMutableString:(NSMutableString *)_string {
	if((self = [super init])) {
		string = [_string retain];
	}
	return self;
}

-(void)dealloc {
	[string release];
	[super dealloc];
}


-(BOOL)allowsKeyedCoding {
	return YES;
}


-(NSInteger)versionForClassName:(NSString *)className {
	return -1;
}


-(NSString *)stringForBool:(BOOL)value {
	return value?
		@"true"
	:	@"false";
}

-(NSString *)stringForObject:(id<NSCoding>)value {
	return value?
		nil
	:	@"null";
}

@end
