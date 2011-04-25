// RXJSONArchiver.h
// Created by Rob Rix on 2011-04-25
// Copyright 2011 Monochrome Industries

@interface RXJSONArchiver : NSCoder {
@private
	NSMutableString *string;
}

-(id)initForWritingWithMutableString:(NSMutableString *)_string;

@end
