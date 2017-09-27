.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/graphics/Bitmap;

.field private mCachedWallpaperUserId:I

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mIsMotionWallpaperSupported:Z

.field private mService:Landroid/app/IWallpaperManager;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mIsMotionWallpaperSupported:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 351
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 352
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 353
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 354
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->isMotionWallpaperSupported()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mIsMotionWallpaperSupported:Z

    .line 350
    return-void
.end method

.method private checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 489
    const-string/jumbo v12, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 490
    .local v11, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 491
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 492
    .local v3, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v3, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 493
    iget v12, v8, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 495
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 496
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 497
    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 498
    .local v4, "deviceHeight":I
    iget v6, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 499
    .local v6, "deviceWidth":I
    iget v5, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 500
    .local v5, "deviceRotation":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 501
    .local v1, "bitmapHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 503
    .local v2, "bitmapWidth":I
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "checkDeviceDensity deviceHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " deviceWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " deviceRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v12, 0x1

    if-eq v5, v12, :cond_0

    const/4 v12, 0x3

    if-ne v5, v12, :cond_1

    .line 505
    :cond_0
    iget v4, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 506
    iget v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 510
    :cond_1
    const/4 v10, 0x0

    .line 511
    .local v10, "scale":F
    if-ge v6, v2, :cond_2

    if-ge v4, v1, :cond_2

    .line 512
    int-to-float v12, v6

    int-to-float v13, v2

    div-float/2addr v12, v13

    int-to-float v13, v4

    int-to-float v14, v1

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 513
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/app/WallpaperManager$Globals;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 514
    .local v9, "resizedBmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resize scale down.:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v9

    .line 518
    .end local v9    # "resizedBmp":Landroid/graphics/Bitmap;
    :cond_2
    return-object p2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 416
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v6, :cond_0

    .line 417
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-object v8

    .line 422
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v5, "params":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v7, 0x1

    invoke-interface {v6, p0, v7, v5, p2}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 425
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 427
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 429
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    .line 428
    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 434
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    return-object v6

    .line 431
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Can\'t decode file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 440
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    return-object v8

    .line 433
    :catchall_0
    move-exception v6

    .line 434
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 433
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 437
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 444
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 474
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 476
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 477
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 478
    return-object v4

    .line 479
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Can\'t decode stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 485
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    return-object v6

    .line 481
    :catchall_0
    move-exception v4

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 481
    throw v4
.end method

.method private isMotionWallpaperSupported()Z
    .locals 3

    .prologue
    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "isEnabled":Z
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v2, :cond_0

    .line 532
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->isMotionWallpaperSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    .end local v1    # "isEnabled":Z
    :cond_0
    :goto_0
    return v1

    .line 533
    .restart local v1    # "isEnabled":Z
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 523
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v0, v3

    .line 524
    .local v0, "bitmapHeight":I
    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 525
    .local v2, "bm":Landroid/graphics/Bitmap;
    return-object v2
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    .line 409
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 407
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 357
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 376
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 377
    return-object v4

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 383
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v2, p4, :cond_1

    .line 384
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 386
    :cond_1
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 387
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    :try_start_5
    invoke-direct {p0, p1, p4}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 390
    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    :goto_0
    :try_start_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 395
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 391
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 397
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    if-eqz p2, :cond_4

    .line 398
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 399
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 401
    :cond_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_4
    monitor-exit p0

    .line 403
    return-object v4
.end method
