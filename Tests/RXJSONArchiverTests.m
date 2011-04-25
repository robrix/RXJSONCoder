// RXJSONArchiverTests.m
// Created by Rob Rix on 2011-04-25
// Copyright 2011 Monochrome Industries

#import "RXAssertions.h"
#import "RXJSONArchiver.h"

@interface RXJSONArchiver (RXJSONArchiverTestsAreUncomfortablyClairvoyant)
-(NSString *)stringForBool:(BOOL)value;
-(NSString *)stringForObject:(id<NSCoding>)value;
@end


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
	RXAssertEquals([archiver stringForBool:YES], @"true");
}

-(void)testEncodesBooleanNoAsFalse {
	RXAssertEquals([archiver stringForBool:NO], @"false");
}


-(void)testEncodesNilObjectsAsNull {
	RXAssertEquals([archiver stringForObject:nil], @"null");
}

@end
