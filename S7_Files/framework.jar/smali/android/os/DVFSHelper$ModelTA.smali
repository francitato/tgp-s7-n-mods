.class Landroid/os/DVFSHelper$ModelTA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 2348
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2349
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 2350
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2351
    const v0, 0x1cfde0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2352
    const/16 v0, 0x1a4

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 2353
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2354
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2348
    return-void
.end method
