.class Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdaptiveFastChargingSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 515
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 514
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;-><init>(Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method
