.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 428
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 427
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "AdaptiveDisplayColorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SettingsObserver: onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 432
    return-void
.end method
