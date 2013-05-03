//
//  ViewController.m
//  DemoLanguage
//
//  Created by MAC on 4/27/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)demoLoop1:(id)sender {
 /* Ve hinh
  ---*---
  --***--
  -*****- 
  *******
  */
    int N = 9;
    int i,j;
    for (i = 1; i<=(N + 1)/2; i++)
    {
        for (j = 1; j <= (N + 1)/2 - i; j++)
        {
            printf(" ");
        }
        for (j = 1; j <= 2 * i - 1; j++)
        {
            printf("*");
        }
        for (j = 1; j <= (N + 1)/2 - i; j++)
        {
            printf(" ");
        }
        printf("\n");
    }
    

}

- (IBAction)demoLoop2:(id)sender {
    int N = 21;
    int i,j;
    for (i= 1; i <= 3; i++)
    {
        for (j = 1 ; j <= N; j++)
        {
            if (i==1 && j % 4 == 1)
            {
                printf("*");
            }
            else if (i == 1 && j % 4 != 1  )
            {
                printf(" ");
            }
            if (i == 2 && j % 2 == 0)
            {
                printf("*");
            }
            else if (i == 2 && j % 2 != 0  )
            {
                printf(" ");
            }
            if (i==3 && j % 4 == 3)
            {
                printf("*");
            }
            else if (i == 3 && j % 4 != 3  )
            {
                printf(" ");
            }
        
        }
        printf("\n");
    
    }
}

- (IBAction)bubSort:(id)sender {
    NSMutableArray *arrayOne = [[NSMutableArray alloc] initWithObjects:@7,@5,@123,@456,@321,@433, nil];
 //   NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:@[@123,@5667,@"ffff",@788]];
    for (id ob in arrayOne) {
        NSLog(@"%@",ob);
    }
    printf("\n");
    for (int i = 0; i < [arrayOne count]; i++)
    {
        for (int j = i+1; j < [arrayOne count]; j++)
        {
            if ([arrayOne[i] integerValue] >[arrayOne[j]integerValue])
            {
                id temp = arrayOne[i];
                arrayOne [i] = arrayOne[j];
                arrayOne [j] = temp;
            }

        }
    }
    for (int i = 0; i < [arrayOne count]; i++) {
        NSLog(@"%@",arrayOne[i]);
    }
 /*   id object;
    for (int count = 0; count < [mutableArray count]; count++) {
        object = mutableArray[count];
        NSLog(@"%lu",(long)[mutableArray [count]integerValue]);
    }*/
}



@end
