.class Lcom/android/keyguard/iris/KeyguardIrisView$2;
.super Ljava/lang/Object;
.source "KeyguardIrisView.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/iris/KeyguardIrisView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/iris/KeyguardIrisView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 93
    :cond_0
    return-void
.end method
