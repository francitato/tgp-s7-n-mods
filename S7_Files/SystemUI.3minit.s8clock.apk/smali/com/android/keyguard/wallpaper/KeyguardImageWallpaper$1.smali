.class Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V
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
        "Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
    .param p2, "val$currentUser"    # I
    .param p3, "val$selectedUser"    # Landroid/os/UserHandle;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iput p2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget-boolean v0, p1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-set1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;I)I

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get4(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-set0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    .line 218
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "updateWallpaper() DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 198
    :cond_3
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "switch to new wallpaper immediately, not in interactive mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->onPostExecute(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;)V

    return-void
.end method
