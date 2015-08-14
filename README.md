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
```
/* Fetch one object using given key and value. Usefull to fetch objects on their uid key 
 * /!\ Warning, errors are ignored /!\
 */
- (id)fetchObject:(NSString *)entityName usingValue:(id)value forKey:(NSString *)key returningAsFault:(BOOL)fault;

/* Fetch one object using given predicate 
 * /!\ Warning, errors are ignored /!\
 */
- (id)fetchObject:(NSString *)entityName usingPredicate:(NSPredicate *)predicate returningAsFault:(BOOL)fault;

/* Count all objects for given entity.
 * /!\ Warning, errors are ignored /!\
 */
- (NSInteger)countObjects:(NSString *)entityName;

/* Count all objects using given predicate
 * /!\ Warning, errors are ignored /!\
 */
- (NSInteger)countObjects:(NSString *)entityName usingPredicate:(NSPredicate *)predicate;

/* Fetch all objects for given entity.
 * /!\ Warning, errors are ignored /!\
 */
- (NSArray *)fetchObjects:(NSString *)entityName returningAsFault:(BOOL)fault;

/* Fetch all objects using given predicate
 * /!\ Warning, errors are ignored /!\
 */
- (NSArray *)fetchObjects:(NSString *)entityName usingPredicate:(NSPredicate *)predicate returningAsFault:(BOOL)fault;

/* Fetch all objects for given entity and sort them.
 * /!\ Warning, errors are ignored /!\
 */
- (NSArray *)fetchObjects:(NSString *)entityName usingSortDescriptors:(NSArray *)sortDescriptors returningAsFault:(BOOL)fault;

/* Fetch all objects for given entity, using predicate and sort them.
 * /!\ Warning, errors are ignored /!\
 */
- (NSArray *)fetchObjects:(NSString *)entityName usingPredicate:(NSPredicate *)predicate usingSortDescriptors:(NSArray *)sortDescriptors returningAsFault:(BOOL)fault;
```

###GON_NSManagedObjectContext+FetchRequestsConstructors
```
/* Create fetch request to fetch one object using given key and value. Usefull to fetch objects on their uid key  */
- (NSFetchRequest*)fetchRequestForEntityObject:(NSString*)entityName usingValue:(id)value forKey:(NSString*)key returningAsFault:(BOOL)fault;

/* Create fetch request to fetch one object using given predicate 
 */
- (NSFetchRequest*)fetchRequestForEntityObject:(NSString*)entityName usingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault;

/* Create fetch request to fetch all objects for given entity.
 */
- (NSFetchRequest*)fetchRequestForEntityObjects:(NSString*)entityName returningAsFault:(BOOL)fault;

/* Create fetch request to fetch all objects using given predicate
 */
- (NSFetchRequest*)fetchRequestForEntityObjects:(NSString*)entityName usingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault;

/* Create fetch request to fetch all objects for given entity and sort them.
 */
- (NSFetchRequest*)fetchRequestForEntityObjects:(NSString*)entityName usingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault;

/* Create fetch request to fetch all objects for given entity, using predicate and sort them.
 */
- (NSFetchRequest*)fetchRequestForEntityObjects:(NSString*)entityName usingPredicate:(NSPredicate*)predicate usingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault;
```

###GON_NSManagedObjectContext+Utils
```
/* Delete all given objects*/
- (void)deleteObjects:(id <NSFastEnumeration>)objects;
```

###GON_NSManagedObject+SortDescriptors.h
```
/* Must be implemented in subclasses to provide an array of NSSortDescriptors used in fetch request */
+ (NSArray *)sortDescriptors;
```

###GON_NSManagedObject+PropertyExtraction.h
```
@interface NSManagedObject (PropertyExtraction)
/* Return an array of dictionaries containing values for asked properties names.
* Request is executed on class entity
*/
+ (NSArray *)valuesForProperties:(NSArray *)propertiesNames usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context;

/* Return an array of values for asked property name
* Request is executed on class entity */
+ (NSArray *)valuesForProperty:(NSString *)propertyName usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context;
```

###GON_NSManagedObject+PropertyDescription.h
```
/* Return NSPropertyDescription for current entity, describing given attribute name */
+ (NSPropertyDescription*)propertyDescriptionForAttribute:(NSString*)attributeName inManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return an array of NSPropertyDescription for current entity, describing given attributes name */
+ (NSArray *)propertiesDescriptionForAttributes:(NSArray*)attributesName inManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return NSEntityDescription for current entity */
+ (NSEntityDescription*)entityDescription:(NSManagedObjectContext*)moc;
```

###GON_NSManagedObject+FetchRequestConstructors.h
```
/* Create fetch request to fetch one object using given key and value. Usefull to fetch objects on their uid key  */
+ (NSFetchRequest*)fetchRequestUsingValue:(id)value forKey:(NSString*)key returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch one object using given predicate 
*/
+ (NSFetchRequest*)fetchRequestUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity.
*/
+ (NSFetchRequest*)fetchRequestForAllEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects using given predicate
*/
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity and sort them.
*/
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity, using predicate and sort them.
*/
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate usingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity. Class default sort descriptors are set.
* You have to add a + (NSArray *)sortDescriptors method in your entity class to provide your own sort descriptors
*/
+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects using given predicate. Class default sort descriptors are set.
* You have to add a + (NSArray *)sortDescriptors method in your entity class to provide your own sort descriptors
*/
+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;
```

###GON_NSManagedObject+FetchedResultsControllerConstructors.h
```
/* Return a configured FetchedResultsController */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given cache */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given section name */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given cache and section name */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using a generated cache name */
+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using a generated cache name and given section name */
+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;
``

##Foundation
###GON_NSArray+Utils
```
/* Return a shuffled copy of this array  */
- (NSArray *)shuffledArray;

/* Return a reversed version of array */
- (NSArray *)reversedArray;

/* Convert given array to a dicitonary using given valueForKey field as key in dictionary.
 * If valueForKey field is nil, object will be skipped.
 * If many object have the same key, only last one will be stored in dictionary
 */
- (NSDictionary *)convertToDictionaryUsingValueAsKey:(id)valueForKey;

/* Return an array built calling valueForKey:key on each object.
 * If valueForKey: return nil, object will be skipped
 */
- (NSArray *)valuesForKey:(id)key;

/* Return a deep mutable copy */
- (NSMutableArray *)mutableCopyDeep;

@property (nonatomic, readonly) NSRange range; // Return the range of the array (0, count)
```
###GON_NSArray+SortedArray
```
/* Retrieve object insertion index, assuming the array is sorted, using given function */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context;

/* Retrieve object insertion index, assuming the array is sorted, using given selector */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingSelector:(SEL)selector;

/* Retrieve object insertion index, assuming the array is sorted, using given sort descriptors */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors;

/* Retrieve object insertion index, assuming the array is sorted, using given block */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock;
```

###GON_NSData+Base64
```
/* Return a base 64 encoded string from NSData */
- (NSString *)base64EncodedString;
```

###GON_NSData+String
```
/* Return data as an hexa string */
- (NSString *)hexaString;

/* Return data as an UFT8 encoded string */
- (NSString *)UTF8String;
```

###GON_NSDate+Utils
```
/* Yesterday constructor */
+ (instancetype)yesterday;

/* Today constructor */
+ (instancetype)today;

/* Tomorrow constructor */
+ (instancetype)tomorrow;

/* Tells is date is Yesterday */
- (BOOL)isYesterday;

/* Tells is date is Today */
- (BOOL)isToday;

/* Tells is date is Tomorrow */
- (BOOL)isTomorrow;

/* Create a new date by adding given days */
- (NSDate *)dateByAddingDays:(NSInteger)days;

/* Build yesterday date from date, keeping hour */
- (NSDate *)yesterday;

/* Build tomorrow date from date, keeping hour */
- (NSDate *)tomorrow;

/* Build an return a date, stripping hour informations */
- (NSDate *)onlyDate;

/* Convert local time date to gmt one */
- (NSDate *)convertLocalTimeDateToGMTDate;

/* Convert date to local time one, assuming date is a gmt one */
- (NSDate *)convertGMTDateToLocalTimeDate;

/* Compare both date, ignoring time informations */
- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date;
```

###GON_NSDictionary+Utils
```
/* Same as objectForKey:, but returning nil if object is [NSNull null] */
- (id)objectForKeyOrNil:(id)key;

/* Same as objectForKeyOrNil:, but return defaultValue instead of nil if no value found */
- (id)objectForKeyOrNil:(id)key defaultValue:(id)defaultValue;

/* Same as objectForKey:, but return defaultValue instead of nil if no value found */
- (id)objectForKey:(id)key defaultValue:(id)defaultValue;

/* Assume dictionary values are NSSet object, so return anyObject on one associated to key */
- (id)anyObjectInSetForKey:(id)key;

/* Return inverted dictionary, using keys as value and vice versa.
 * Be careful, if dictionary contains identical objects, some values will be missing in resulting dictionary
 */
- (NSDictionary *)invertedDictionary;

/* Check if dictionary has given key */
- (BOOL)hasKey:(NSString *)key;

/* Return a deep mutable copy */
- (NSMutableArray *)mutableCopyDeep;
```

###GON_NSFileManager+Utils
```
/* Return size for item at given path.
 * Return 0 is item was not found
 */
- (unsigned long long)sizeForItemAtPath:(NSString *)path;

/* Check if given file is a directory or not */
- (BOOL)isDirectoryAtPath:(NSString *)path;
```

###GON_NSHTTPURLResponse+Error
```
/* Generate an NSError object based on url response 
 * code                 : self.statusCode
 * localizedDescription : [NSHTTPURLResponse localizedStringForStatusCode:self.statusCode]
 * domain               : @"NSHTTPURLResponse+Error.errorDomain" ==> NSHTTPURLResponse_Error_ERROR_DOMAIN
 */
- (NSError *)error;

@property (nonatomic, readonly) BOOL hasError; // Tells if status code match an error
```

###GON_NSIndexPath+Offset
```
/* Compute previous row indexpath */
- (NSIndexPath *)previousRow;

/* Compute next row indexpath */
- (NSIndexPath *)nextRow;

/* Compute previous item indexpath */
- (NSIndexPath *)previousItem;

/* Compute next item indexpath */
- (NSIndexPath *)nextItem;

/* Compute next section indexpath */
- (NSIndexPath *)nextSection;

/* Compute previous section indexpath */
- (NSIndexPath *)previousSection;
```

###GON_NSMutableArray+SortedArray
```
/* Insert object into array, assuming the array is sorted, using given function */
- (void)insertObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context;

/* Insert object into array, assuming the array is sorted, using given selector */
- (void)insertObject:(id)object sortedUsingSelector:(SEL)selector;

/* Insert object into array, assuming the array is sorted, using given sort descriptors */
- (void)insertObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors;

/* Retrieve object insertion index, assuming the array is sorted, using given block */
- (void)insertObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock;
```

###GON_NSMutableArray+Utils
```
/* Insert an object at the first position in the array */
- (void)insertObjectFirst:(id)obj;

/* Remove first object from array. Same as [self removeObjectAtIndex:0]. */
- (void)removeFirstObject;

/* Shuffle array */
- (void)shuffle;
```

###GON_NSMutableDictionary+Set
```
/* Same as setObject:forKey:, but adding values in a NSMutableSet */
- (void)addObject:(id)value inSetForKey:(id)key;

/* Same as setObject:forKey:, but unions all values in a NSMutableSet */
- (void)addObjects:(NSSet*)values inSetForKey:(id)key;

/* Same as removeObjectForKey:, but removing value from the created set. If set is empty after operation, it will be removed. */
- (void)removeObject:(id)value fromSetWithKey:(id)key;
```

###GON_NSMutableDictionary+Array
```
/* Same as setObject:forKey:, but adding values in a NSMutableArray */
- (void)addObject:(id)value inArrayForKey:(id)key;

/* Same as setObject:forKey:, but unions all values in a NSMutableArray */
- (void)addObjects:(NSArray*)values inArrayForKey:(id)key;

/* Same as removeObjectForKey:, but removing value from the created array. If array is empty after operation, it will be removed. */
- (void)removeObject:(id)value fromArrayWithKey:(id)key;
```

###GON_NSMutableDictionary+SortedArray
```
/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given function */
- (void)addObject:(id)value inSortedArrayUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given selector */
- (void)addObject:(id)value inSortedArrayUsingSelector:(SEL)aSelector forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given descriptors */
- (void)addObject:(id)value inSortedArrayUsingDescriptors:(NSArray*)descriptors forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given block */
- (void)addObject:(id)value inSortedArrayUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock forKey:(NSString *)key;
```

###GON_NSMutableString+Utils
```
/* Trim string
 * return self 
 */
- (NSMutableString *)trim;

/* Uppercase first letter of string
 * return self 
 */
- (NSMutableString *)ucFirst;

/* Lowercase first letter of string
 * return self 
 */
- (NSMutableString *)lcFirst;

/* Remove all diacritics markings
 * return self 
 */
- (NSMutableString *)removeDiacritics;

/* Add non breaking space characters to string :
 * - Ponctuation rules (!, ?, etc...)
 * - Quotes
 * return self 
 */
- (NSMutableString *)addNonBreakingSpaceCharacters;

/* Replace all HTML entities by UTF-8 character
 * return self 
 */
- (NSMutableString *)cleanHTMLEntities;

/* Add HTML entities to string.
 * return self 
 */
- (NSMutableString *)addHTMLEntities;
```

###GON_NSNotification+Constructors
```
/* Build a notification with given name and given sender, building user info with anObject and key */
+ (NSNotification*)notificationWithName:(NSString *)name object:(id)notificationSender withObject:(id)object forKey:(id)key;
```

###GON_NSNotificationCenter+MainThread
```
/* Post given notifcation on main thread */
- (void)postNotificationOnMainThread:(NSNotification *)notification;

/* Post given notifcation name on main thread */
- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender;

/* Post given notifcation name on main thread with user info */
- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender userInfo:(NSDictionary *)userInfo;

/* Post given notifcation on main thread, allowing to wait until done */
- (void)postNotificationOnMainThread:(NSNotification *)notification waitUntilDone:(BOOL)wait;

/* Post given notifcation name on main thread, allowing to wait until done */
- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender waitUntilDone:(BOOL)wait;

/* Post given notifcation name on main thread with user info, allowing to wait until done */
- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender userInfo:(NSDictionary *)userInfo waitUntilDone:(BOOL)wait;
```

###GON_NSObject+Block
```
/* Perfom a block on main queue, no delay. Dispatch is synchrone */
- (void)performBlockOnMainQueueAndWait:(void (^)(void))block;

/* Perfom a block on main queue, no delay. Dispatch is asynchrone */
- (void)performBlockOnMainQueue:(void (^)(void))block;

/* Perform a block on main queue, after delay */
- (void)performBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;

/* Perfom a block on background queue, no delay. Dispatch is asynchrone */
- (void)performBlockInBackground:(void (^)(void))block;

/* Perfom a block on background queue, no delay. Dispatch is synchrone */
- (void)performBlockInBackgroundAndWait:(void (^)(void))block;

/* Perform a block on given queue, after delay */
- (void)performBlockOnQueue:(dispatch_queue_t)queue afterDelay:(NSTimeInterval)delay block:(void (^)(void))block;
```

###GON_NSNumber+Compare
```
/* Return bigger number between self and other number. Like MAX, for NSNumber.
 * If equals, return self.
 * If anotherNumber is nil, 0 will be used for comparison
 */
- (NSNumber *)biggerNumber:(NSNumber *)anotherNumber;

/* Return smallest number between self and other number. Like MIN, for NSNumber
 * If equals, return self.
 * If anotherNumber is nil, 0 will be used for comparison
 */
- (NSNumber *)smallerNumber:(NSNumber *)anotherNumber;
```

###GON_NSString+Base64
```
/* Return data from string, assuming that's a base 64 encoded one */
- (NSData *)dataFromBase64String;
```

###GON_NSString+Crypto
```
/* Return hashed SHA256 string */
- (NSString *)SHA256;

/* Return hashed SHA256 base on string converted to utf16 */
- (NSString *)utf16SHA256;

/* Return hashed MD5 string */
- (NSString *)MD5;

/* Return hashed MD5 base on string converted to utf16 */
- (NSString *)utf16MD5;
```

###GON_NSString+SQL
```
/* Return cleaned version of SQL value by escaping ' characters */
- (NSString*)cleanedSQLValue;
```

###GON_NSString+Utils
```
/* Return a new string, initialized with a generated uuid */
+ (NSString *)stringWithUUID;

/* Return a new string, by appending given suffix to it, assuming its a path.
 * That means that suffix will be added before path extension
 */
- (NSString *)stringByAppendingPathSuffix:(NSString *)pathSuffix;

/* Return YES if string contains given string */
- (BOOL)containsString:(NSString *)string;

/* Return YES if string begins with given string */
- (BOOL)startsWithString:(NSString *)string;

/* Return YES if string ends with given string */
- (BOOL)endsWithString:(NSString *)string;

/* Return trimmed string */
- (NSString *)stringByTrimmingCharacters;

/* Return a string adding non breaking space characters :
 * - Ponctuation rules (!, ?, etc...)
 * - Quotes
 */
- (NSString *)stringByAddingNonBreakingSpaceCharacters;

/* Return same string with uppercased first letter */
- (NSString *)stringUcFirst;

/* Return same string with lowercased first letter */
- (NSString *)stringLcFirst;

/* Return same string removing all diacritics markings */
- (NSString *)stringByRemovingDiacritics;

/* Return range of string */
- (NSRange)range;

/* Return an URL encoded string */
- (NSString *)stringURLEncoded;

/* Return a string, with all HTML entities replaced by UTF-8 character */
- (NSString *)stringByCleaningHTMLEntities;

/* Return a string, adding HTML entities when needed */
- (NSString *)stringByAddingHTMLEntities;
```

###GON_NSURL+Utils
```
/* Return query parameters */
- (NSDictionary *)queryParameters;
```

###GON_NSURL+Split
```
/* Compute an array of url based on baseURL, with concatened values
 * value are converted to string using description
 * This method will add object in values array until url length reach given limit.
 * When limit is reached, a new URL is computed.
 */
+ (NSArray *)computeURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength;

/* Compute urls based on baseURL, with concatened values.
 * value are converted to string using description
 * For each computed url, block will be called, with computed url and concatened values.
 * The block can return an object.
 * Method result will contained all returned objects computed by block.
 * Usefull to compute Server actions
 *
 */
+ (NSArray *)enumerateURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength block:(id (^)(NSString *urlStr, NSArray *contatenedValues))block;
```

##UIKit
###GON_UIColor+Utils
```
/* Return best matching foreground color according to current color.
 * Will return black or white, based on color brightness
 */
- (UIColor *)foregroundColor;
```

###GON_UIControl+Utils
```
/* Remove all targets for given control events */
- (void)removeAllTargetsForControlEvents:(UIControlEvents)controlEvents;

/* Remove all targets */
- (void)removeAllTargets;
```

###GON_UIDevice+Information
```
@property (nonatomic, readonly) NSString *platform;
@property (nonatomic, readonly) NSUInteger coresCount;
```

###GON_UIImage+Colors
```
/* Return a grayscale version of image. Return nil if an error occurred */
- (UIImage *)grayscale;
```

###GON_UIImage+Utils
```
/* Return size of an image at given path, without loading it into memory */
+ (CGSize)sizeForImageAtPath:(NSString *)path;

/* Return size of an image at given url, without loading it into memory */
+ (CGSize)sizeForImageAtURL:(NSURL *)url;

/* Return NSData PNG image representation */
- (NSData *)pngRepresentationData;

/* Return NSData JPG image representation */
- (NSData *)jpgRepresentationData:(CGFloat)compression;
```

###GON_UILabel+AttributedFitting
```
/* Update label text and allow to fit its frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting;

/* Update label frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)fitLabelToDisplayAttributedText;

/* Update label text and allows to fit its frame in order to display all text on a single lines.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width;

/* Update label frame in order to display all text on a single line.
 * This method return new label width */
- (CGFloat)fitLabelWidthToDisplayAttributedText;

/* Update label frame in order to display as many text as possible on a single line, constrained by given width
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label width */
- (CGFloat)fitAttributedLabelToMaxWidth:(CGFloat)width;

/* Update label frame in order to display as many text as possible on multiple lines, constrained by given height
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label height */
- (CGFloat)fitAttributedLabelToMaxHeight:(CGFloat)height;
```

###GON_UILabel+Fitting
```
/* Update label text and allow to fit its frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)setText:(NSString*)text fitToDisplayText:(BOOL)fitting;

/* Update label frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)fitLabelToDisplayText;

/* Update label text and allows to fit its frame in order to display all text on a single lines.
 * This method return new label width */
- (CGFloat)setText:(NSString*)text fitWidthToDisplayText:(BOOL)fitting;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setText:(NSString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setText:(NSString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setText:(NSString*)text fittingWithMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setText:(NSString*)text fittingWithMaxWidth:(CGFloat)width;

/* Update label frame in order to display all text on a single line.
 * This method return new label width */
- (CGFloat)fitLabelWidthToDisplayText;

/* Update label frame in order to display as many text as possible on a single line, constrained by given width
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label width */
- (CGFloat)fitLabelToMaxWidth:(CGFloat)width;

/* Update label frame in order to display as many text as possible on multiple lines, constrained by given height
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label height */
- (CGFloat)fitLabelToMaxHeight:(CGFloat)height;
```

###GON_UINavigationController+Utils
```
/* Pop current view controller, animated. Same as popViewControllerAnimated:YES */
- (void)popViewControllerAnimated;

/* Pop to root view controller, animated. Same as popToRootViewControllerAnimated:YES */
- (void)popToRootViewControllerAnimated;

/* Pop current view controller, without animation. Same as popViewControllerAnimated:NO */
- (void)popViewController;

/* Pop to root view controller, without animation. Same as popToRootViewControllerAnimated:NO */
- (void)popToRootViewController;
```

###GON_UITableView+Reload
```
/* Reload visible rows with given row animation. 
 * Same as: 
 * [self reloadRowsAtIndexPaths:self.indexPathsForVisibleRows
 *			   withRowAnimation:animation];
 */
- (void)reloadVisibleRowsWithRowAnimation:(UITableViewRowAnimation)animation;

/* Reload row at given index path with an animation 
 * Same as : 
 * [self reloadRowsAtIndexPaths:[NSArray arrayWithObject:anIndexPath]
 *			   withRowAnimation:animation];
 */
- (void)reloadRowAtIndexPath:(NSIndexPath*)anIndexPath withRowAnimation:(UITableViewRowAnimation)animation;
```

###GON_UITableView+Cells
```
/* Insert one row at given index path */
- (void)insertRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;

/* Delete one row from given index path */
- (void)deleteRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;
```

###GON_UIView+Bounds
```
/* Update view bounds origin X */
- (void)updateBoundsX:(CGFloat)x;

/* Update view bounds origin Y */
- (void)updateBoundsY:(CGFloat)y;

/* Update view bounds size width */
- (void)updateBoundsWidth:(CGFloat)width;

/* Update view bounds size height */
- (void)updateBoundsHeight:(CGFloat)height;

/* Add incX to view bounds origin X */
- (void)addBoundsX:(CGFloat)incX;

/* Add incY to view bounds origin X */
- (void)addBoundsY:(CGFloat)incY;

/* Add incWidth to view bounds origin X */
- (void)addBoundsWidth:(CGFloat)incWidth;

/* Add incHeight to view bounds origin X */
- (void)addBoundsHeight:(CGFloat)incHeight;
```

###GON_UIView+Fitting
```
/* Update view frame, centering it vertically and horizontally compared to its superview
 */
- (CGRect)centerInSuperview;

/* Update view frame, centering it horizontally compared to its superview
 */
- (CGRect)centerHorizontallyInSuperview;

/* Update view frame, centering it vertically compared to its superview
 */
- (CGRect)centerVerticallyInSuperview;


/* Change view frame to fill its superview frame :
 */
- (CGRect)fillInSuperview;

/* Change view frame to fill its superview width :
 */
- (CGRect)fillInSuperviewWidth;

/* Change view frame to fill its superview height :
 */
- (CGRect)fillInSuperviewHeight;
```

###GON_UIView+Frame
```
/* Update view frame origin */
- (void)updateFrameOrigin:(CGPoint)origin;

/* Update view frame size */
- (void)updateFrameSize:(CGSize)size;

/* Update view frame origin X */
- (void)updateFrameX:(CGFloat)x;

/* Update view frame origin Y */
- (void)updateFrameY:(CGFloat)y;

/* Update view center X */
- (void)updateCenterX:(CGFloat)x;

/* Update view center Y */
- (void)updateCenterY:(CGFloat)y;

/* Update view frame size width */
- (void)updateFrameWidth:(CGFloat)width;

/* Update view frame size height */
- (void)updateFrameHeight:(CGFloat)height;

/* Add incX to view frame origin X */
- (void)addFrameX:(CGFloat)incX;

/* Add incY to view frame origin X */
- (void)addFrameY:(CGFloat)incY;

/* Add incWidth to view frame origin X */
- (void)addFrameWidth:(CGFloat)incWidth;

/* Add incHeight to view frame origin X */
- (void)addFrameHeight:(CGFloat)incHeight;
```

###GON_UIView+Utils
```
/* Return an image created from view */
- (UIImage *)imageFromView;
```

###GON_UIViewController+Utils
```
/* Dismiss current modal view controller, animated. Same as dismissViewControllerAnimated:YES completion:nil */
- (void)dismissViewControllerAnimated;

/* Dismiss current modal view controller, without animation. Same as dismissViewControllerAnimated:NO completion:nil */
- (void)dismissViewController;
```

###GON_UIScrollView+Fitting
```
/* Center content vertically by adding insets 
 * If content is larger than scrollview, nothing is done
 */
- (void)addInsetsToCenterVertically;

/* Center content horizontally by adding insets
 * If content is higher than scrollview, nothing is done
 */
- (void)addInsetsToCenterHorizontally;

/* Center content by adding insets */
- (void)addInsetsToCenter;
```

###GON_UITextView+Fitting
```
// Empty for now
```

###GON_UITextView+AttributedFitting
```
/* Update textview text and allow to fit its frame in order to display all text on multiples lines, keeping current width.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting;

/* Update textview text and allows to fit its frame in order to display all text on a single lines.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width;
```

##StoreKit
###GON_SKProduct+Utils
```
/* Return localized price to be displayed to user */
- (NSString *)localizedPrice;
```

##Versions
0.5   : Initial release<br/>
