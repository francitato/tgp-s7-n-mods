.class public Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextStepLevelMonitorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextStepLevelMonitorAttribute"


# instance fields
.field private mDuration:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    .line 55
    iput p1, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    .line 56
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->setAttribute()V

    .line 54
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_0

    .line 63
    const-string/jumbo v0, "SContextStepLevelMonitorAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v2

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
