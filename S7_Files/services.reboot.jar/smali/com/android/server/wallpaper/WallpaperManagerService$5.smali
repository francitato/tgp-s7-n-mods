.class Lcom/android/server/wallpaper/WallpaperManagerService$5;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$wallpaperPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "val$wallpaperPath"    # Ljava/lang/String;

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1478
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1479
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v18, "file":Ljava/io/File;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1484
    .local v19, "fileName":Ljava/lang/String;
    const-string/jumbo v2, "_layered"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "_cinematic"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1485
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "The file type is preload"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_path"

    .line 1520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1519
    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1523
    .end local v19    # "fileName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 1488
    .restart local v19    # "fileName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v13, 0x0

    .line 1491
    .local v13, "bitmapData":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "bitmapData":Ljava/io/InputStream;
    .local v14, "bitmapData":Ljava/io/InputStream;
    move-object v13, v14

    .line 1496
    .end local v14    # "bitmapData":Ljava/io/InputStream;
    :goto_1
    if-eqz v13, :cond_1

    .line 1497
    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 1498
    .local v9, "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1499
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1498
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;III)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 1501
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v17, :cond_1

    .line 1502
    const/16 v20, 0x0

    .line 1504
    .local v20, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v21, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .local v21, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v21

    invoke-static {v2, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap7(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1506
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 1507
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1508
    invoke-virtual {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1512
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1513
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1492
    .end local v9    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "bitmapData":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .line 1493
    .local v15, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1509
    .end local v13    # "bitmapData":Ljava/io/InputStream;
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v16

    .line 1510
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .local v16, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1512
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1513
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1511
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1512
    :goto_3
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1513
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1511
    throw v2

    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .local v20, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1509
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
