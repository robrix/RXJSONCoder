// RXJSONArchiverTests.m
// Created by Rob Rix on 2011-04-25
// Copyright 2011 Monochrome Industries

#import "RXAssertions.h"
#import "RXJSONArchiver.h"

@interface RXJSONArchiverTests : SenTestCase {
@private
	NSMutableString *string;
	RXJSONArchiver *archiver;
}
@end

@implementation RXJSONArchiverTests

-(void)setUp {
	string = [[NSMutableString alloc] init];
	archiver = [[RXJSONArchiver alloc] initForWritingWithMutableString:string];
}

-(void)tearDown {
	[archiver release];
	[string release];
}


-(void)testEncodesBooleanYesAsTrue {
	[archiver encodeBool:YES forKey:@"truth"];
	RXAssertEquals(string, @"{\"truth\":true}");
}

@end
