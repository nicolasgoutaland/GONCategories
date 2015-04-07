#GONCategories
Objective-C categories, used for years in my projects.<br/>
Some categories were not written by me, is so I've added the original source in header comment, but I may have missed some.<br/>
If so, do not hesitate to tell me, I will update headers to add the original source.<br/>

##Usage
Simply call method you want to use with appropriate parameters.

##Installation
__Cocoapods__: `pod 'GONCategories'`<br/>
__Manual__: Copy the __Classes__ folder in your project<br/>

Import wanted headers in your project. .pch is a good place ;)<br/>
You can also import __GON_Categories_All.h__ to add all categories in your project.

## Main headers

__GON_Categories_All.h__ : Import all categories<br/>
__GON_CoreData_All.h__ : Import all core data related categories<br/>
__GON_FoundationExtensions_All.h__ : Import all foundation related categories<br/>
__GON_UIKitExtensions_All.h__ : Import all UIKit related categories<br/>
__GON_StoreKitExtensions_All.h__ : Import all StoreKit related categories<br/>

##CoreData
###GON_NSManagedObjectContext+Fetching
###GON_NSManagedObjectContext+FetchRequestsConstructors
###GON_NSManagedObjectContext+Utils

##Foundation
###GON_NSArray+Utils
###GON_NSArray+SortedArray
###GON_NSData+Base64
###GON_NSData+String
###GON_NSDate+Utils
###GON_NSDictionary+Utils
###GON_NSFileManager+Utils
###GON_NSHTTPURLResponse+Error
###GON_NSIndexPath+Offset
###GON_NSMutableArray+SortedArray
###GON_NSMutableArray+Utils
###GON_NSMutableDictionary+Set
###GON_NSMutableDictionary+Array
###GON_NSMutableDictionary+SortedArray
###GON_NSMutableString+Utils
###GON_NSNotification+Constructors
###GON_NSNotificationCenter+MainThread
###GON_NSObject+Block
###GON_NSString+Base64
###GON_NSString+MD5
###GON_NSString+SQL
###GON_NSString+Utils
###GON_NSURL+Utils
###GON_NSURL+Split

##UIKit
###GON_UIColor+Utils
###GON_UIControl+Utils
###GON_UIDevice+Information
###GON_UIImage+Colors
###GON_UIImage+Utils
###GON_UILabel+AttributedFitting
###GON_UILabel+Fitting
###GON_UINavigationController+Utils
###GON_UITableView+Reload
###GON_UITableView+Cells
###GON_UIView+Bounds
###GON_UIView+Fitting
###GON_UIView+Frame
###GON_UIView+Utils
###GON_UIViewController+Utils
###GON_UIScrollView+Fitting
###GON_UITextView+Fitting
###GON_UITextView+AttributedFitting

##StoreKit
###GON_SKProduct+Utils

##Versions
0.5   : Initial release<br/>
