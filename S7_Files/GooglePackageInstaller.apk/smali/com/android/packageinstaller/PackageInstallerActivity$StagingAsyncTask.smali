.class final Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;
.super Landroid/os/AsyncTask;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StagingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmptyStateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 738
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->mEmptyStateRunnable:Ljava/lang/Runnable;

    .line 735
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/io/File;
    .locals 13
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 763
    if-eqz p1, :cond_0

    array-length v8, p1

    if-gtz v8, :cond_1

    .line 764
    :cond_0
    return-object v9

    .line 766
    :cond_1
    aget-object v6, p1, v10

    .line 767
    .local v6, "packageUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 769
    .local v7, "sourceFile":Ljava/io/File;
    :try_start_0
    const-string/jumbo v8, "package"

    const-string/jumbo v10, ".apk"

    iget-object v11, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-static {v8, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 770
    .local v7, "sourceFile":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 771
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v8}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 772
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_6

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v5, "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 777
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_0
    if-nez v2, :cond_8

    .line 789
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v10, v9

    :goto_1
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v8, v10

    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 790
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v7    # "sourceFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 791
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "PackageInstaller"

    const-string/jumbo v9, "Error staging apk from content URI"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    if-eqz v7, :cond_5

    .line 793
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 796
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_5
    return-object v7

    .line 773
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v7    # "sourceFile":Ljava/io/File;
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 789
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    goto :goto_1

    :catch_2
    move-exception v8

    if-eqz v10, :cond_4

    if-eq v10, v8, :cond_3

    :try_start_5
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v8, v10

    goto :goto_2

    .line 778
    :cond_7
    return-object v9

    .line 780
    :cond_8
    const/16 v8, 0x1000

    :try_start_6
    new-array v0, v8, [B

    .line 782
    .local v0, "buffer":[B
    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_12

    .line 784
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->isCancelled()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    if-eqz v8, :cond_d

    .line 789
    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    move-object v10, v9

    :goto_4
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_a
    move-object v8, v10

    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    :try_start_9
    throw v8

    :catch_3
    move-exception v10

    goto :goto_4

    :catch_4
    move-exception v8

    if-eqz v10, :cond_b

    if-eq v10, v8, :cond_a

    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-object v8, v10

    goto :goto_5

    .line 785
    :cond_c
    return-object v9

    .line 787
    :cond_d
    const/4 v8, 0x0

    :try_start_a
    invoke-virtual {v4, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 789
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v8

    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_6
    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_e
    move-object v10, v9

    :cond_f
    :goto_7
    if-eqz v2, :cond_10

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :cond_10
    move-object v9, v10

    :cond_11
    :goto_8
    if-eqz v9, :cond_16

    :try_start_e
    throw v9
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_12
    if-eqz v4, :cond_13

    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    :cond_13
    :goto_9
    if-eqz v2, :cond_14

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :cond_14
    move-object v8, v9

    :cond_15
    :goto_a
    if-eqz v8, :cond_5

    :try_start_11
    throw v8

    :catch_6
    move-exception v9

    goto :goto_9

    :catch_7
    move-exception v8

    if-eqz v9, :cond_15

    if-eq v9, v8, :cond_14

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v9

    goto :goto_a

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_8
    move-exception v10

    if-eqz v9, :cond_f

    if-eq v9, v10, :cond_e

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v9

    goto :goto_7

    :catch_9
    move-exception v9

    if-eqz v10, :cond_11

    if-eq v10, v9, :cond_10

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v10

    goto :goto_8

    :cond_16
    throw v8
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :catchall_1
    move-exception v8

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 762
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->doInBackground([Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->mEmptyStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/Object;

    .prologue
    .line 820
    check-cast p1, Ljava/io/File;

    .end local p1    # "file":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->onCancelled(Ljava/io/File;)V

    return-void
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->mEmptyStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 802
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    :cond_0
    return-void

    .line 805
    :cond_1
    if-nez p1, :cond_2

    .line 806
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->-wrap4(Lcom/android/packageinstaller/PackageInstallerActivity;I)V

    .line 807
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 808
    return-void

    .line 810
    :cond_2
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v2, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->-set0(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/io/File;)Ljava/io/File;

    .line 811
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 813
    .local v0, "fileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v2, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-wrap0(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/net/Uri;)Z

    move-result v1

    .line 814
    .local v1, "wasSetUp":Z
    if-eqz v1, :cond_3

    .line 815
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->-wrap1(Lcom/android/packageinstaller/PackageInstallerActivity;Z)V

    .line 800
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/Object;

    .prologue
    .line 800
    check-cast p1, Ljava/io/File;

    .end local p1    # "file":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->mEmptyStateRunnable:Ljava/lang/Runnable;

    .line 758
    const-wide/16 v2, 0x12c

    .line 757
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 756
    return-void
.end method
