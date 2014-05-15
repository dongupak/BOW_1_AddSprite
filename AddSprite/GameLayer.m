//
//  GameLayer.m
//  AddSprite
//
//  Created by ivis on 13. 6. 28..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "GameLayer.h"


@implementation GameLayer

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	//Scene 메서드 안에서 CCScene 객체(scene)를 만든다.
	CCScene *scene = [CCScene node];
	
	// GameLayer의 객체(layer)를 만든다.
	GameLayer *layer = [GameLayer node];
	
	//앞에서 만들어진 GameLayer의 객체(layer)를 CCscene의 자식(child)으로 넣는다.
	[scene addChild: layer];
	
	//scene을 return한다.
	return scene;
}

-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
        
        // sprite 객체인 bird1을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird1 = [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird1 setPosition:ccp(240, 160)];
        [self addChild:bird1];
        
        // sprite 객체인 bird2을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird2 = [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird2 setPosition:ccp(140, 160)];
        [self addChild:bird2];
        
        // sprite 객체인 bird3을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird3 = [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird3 setPosition:ccp(340, 160)];
        [self addChild:bird3];
    
    }
    //layer를 return한다.
    return self;
}

// on "dealloc" you need to release all your retained objects
//인스턴스가 메모리에서 삭제될 때 호출되는 메서드 "dealloc"
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
    
    //상위 클래스의 dealloc 메서드를 호출한다.
	[super dealloc];
}



@end
