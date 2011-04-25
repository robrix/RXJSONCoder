// RXJSONArchiver.m
// Created by Rob Rix on 2011-04-25
// Copyright 2011 Monochrome Industries

#import "RXJSONArchiver.h"

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


@end
