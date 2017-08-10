概述
----------------

* 本工程主要是利用iOS 的Objective-C开发的技术要点汇总；
* 涵盖了开发中踩坑的原因，以及填坑的技术分享；
* 抛砖引玉，取长补短，希望能够提供一点思路，避免少走一些弯路。


要求
----------------

* iOS 8+
* Xcode 8.0+

期待
----------------

* 如果在使用过程中遇到BUG，希望你能[Issues](https://github.com/NSLog-YuHaitao/AVPlayer20170810/issues)我，谢谢(或者尝试下载最新的代码看看BUG修复没有)。
* 如果在使用过程中发现有更好或更巧妙的实用技术，希望你能[Issues](https://github.com/NSLog-YuHaitao/AVPlayer20170810/issues)我，我非常为该项目扩充更多好用的技术，谢谢。
* 如果通过该工程的使用，对您在开发中有一点帮助，码字不易，还请点击右上角"★"按钮，谢谢。


功能简介
----------------

* AVPlayer本身并不显示视频！需要一个AVPlayerLayer播放层来显示视频,然后添加到父视图的layer中。
* AVPlayer只负责视频管理和调控！而视频资源是由AVPlayerItem提供的，每个AVPlayerItem对应一个视频地址。
