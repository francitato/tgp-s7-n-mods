.class Landroid/os/DVFSHelper$ModelSF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 2468
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelSF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2469
    const v0, 0x19f0a0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 2470
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    .line 2471
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2472
    const v0, 0x122a00

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2473
    const/16 v0, 0x1388

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2474
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2475
    const/16 v0, 0x1f4

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2468
    return-void
.end method
