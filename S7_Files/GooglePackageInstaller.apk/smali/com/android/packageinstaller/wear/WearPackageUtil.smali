.class public Lcom/android/packageinstaller/wear/WearPackageUtil;
.super Ljava/lang/Object;
.source "WearPackageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileFromFd(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "compressionAlg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 90
    invoke-static {p0, p2}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getTemporaryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 91
    .local v7, "newFile":Ljava/io/File;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    if-nez v8, :cond_1

    .line 92
    :cond_0
    return-object v11

    .line 94
    :cond_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 96
    .local v4, "fr":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v8, "xz"

    invoke-static {p3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 97
    new-instance v5, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v5, v4}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "fr":Ljava/io/InputStream;
    .local v5, "fr":Ljava/io/InputStream;
    move-object v4, v5

    .line 107
    .end local v5    # "fr":Ljava/io/InputStream;
    .restart local v4    # "fr":Ljava/io/InputStream;
    :cond_2
    :goto_0
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 109
    .local v0, "data":[B
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v3, "fo":Ljava/io/FileOutputStream;
    :goto_1
    array-length v8, v0

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "nRead":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 111
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .end local v6    # "nRead":I
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v8, "WearablePkgInstaller"

    const-string/jumbo v9, "Reading from Asset FD or writing to temp file failed "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 119
    :goto_2
    return-object v11

    .line 98
    .end local v0    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    const-string/jumbo v8, "lzma"

    invoke-static {p3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    new-instance v5, Lorg/tukaani/xz/LZMAInputStream;

    invoke-direct {v5, v4}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v4    # "fr":Ljava/io/InputStream;
    .restart local v5    # "fr":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/InputStream;
    .restart local v4    # "fr":Ljava/io/InputStream;
    goto :goto_0

    .line 101
    :catch_1
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WearablePkgInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Compression was set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", but could not decode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-object v11

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v3    # "fo":Ljava/io/FileOutputStream;
    .restart local v6    # "nRead":I
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 116
    :goto_3
    return-object v7

    .line 126
    :catch_2
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WearablePkgInstaller"

    const-string/jumbo v9, "Failed to close the file from FD "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .end local v6    # "nRead":I
    :catch_3
    move-exception v1

    .line 121
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_7
    const-string/jumbo v8, "WearablePkgInstaller"

    const-string/jumbo v9, "Could not set permissions on file "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 125
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 122
    :goto_4
    return-object v11

    .line 126
    :catch_4
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WearablePkgInstaller"

    const-string/jumbo v9, "Failed to close the file from FD "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 126
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_5
    move-exception v2

    .line 127
    const-string/jumbo v8, "WearablePkgInstaller"

    const-string/jumbo v9, "Failed to close the file from FD "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 125
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 123
    :goto_5
    throw v8

    .line 126
    :catch_6
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "WearablePkgInstaller"

    const-string/jumbo v10, "Failed to close the file from FD "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "images/icons"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v1, "newFileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 69
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 70
    .end local v1    # "newFileDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "WearablePkgInstaller"

    const-string/jumbo v3, "Failed to open."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getSanitizedPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "packageUri"    # Landroid/net/Uri;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v1, "^/+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 177
    :cond_0
    return-object v0
.end method

.method public static getTemporaryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v2, "newFileDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 56
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v1, "newFile":Ljava/io/File;
    return-object v1

    .line 58
    .end local v1    # "newFile":Ljava/io/File;
    .end local v2    # "newFileDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "WearablePkgInstaller"

    const-string/jumbo v4, "Failed to open."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v3, 0x0

    return-object v3
.end method

.method public static hasLauncherActivity(Landroid/content/pm/PackageParser$Package;)Z
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v7, 0x0

    .line 133
    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 134
    :cond_0
    return v7

    .line 137
    :cond_1
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, "activityCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 139
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 141
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    .line 140
    iget-object v3, v6, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 142
    .local v3, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 143
    .local v4, "intentsCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 144
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 145
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 146
    const-string/jumbo v6, "android.intent.category.INFO"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 147
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    .line 146
    if-eqz v6, :cond_3

    .line 148
    :cond_2
    const/4 v6, 0x1

    return v6

    .line 143
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v4    # "intentsCount":I
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_5
    return v7
.end method

.method public static removeFromPermStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wearablePackageName"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 159
    new-instance v2, Landroid/content/ComponentName;

    .line 160
    const-string/jumbo v3, "com.google.android.wearable.app"

    const-string/jumbo v4, "com.google.android.clockwork.packagemanager.ShowPermsService"

    .line 159
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "WearablePkgInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending removeFromPermStore to ShowPermsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    const-string/jumbo v3, " for "

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    return-void
.end method
