//
//  ViewController.m
//  Algorhythm
//
//  Created by Wing H. Liang on 7/25/16.
//  Copyright © 2016 Wing H. Liang. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
//    self.playlistImageView0.image = playlist.playlistIcon;

    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++){
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailContoller = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailContoller.playlist = [[Playlist alloc] initWithIndex:0];
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}



@end
