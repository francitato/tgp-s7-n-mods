.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicClickListener"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
    .param p2, "keyCode"    # I

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    .line 450
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    .line 455
    return-void
.end method
