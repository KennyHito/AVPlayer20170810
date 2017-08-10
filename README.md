前言
===========================


* AVPlayer本身并不显示视频！需要一个AVPlayerLayer播放层来显示视频,然后添加到父视图的layer中。
* AVPlayer只负责视频管理和调控！而视频资源是由AVPlayerItem提供的，每个AVPlayerItem对应一个视频地址。
