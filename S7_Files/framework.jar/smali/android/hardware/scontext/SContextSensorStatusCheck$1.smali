.class final Landroid/hardware/scontext/SContextSensorStatusCheck$1;
.super Ljava/lang/Object;
.source "SContextSensorStatusCheck.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextSensorStatusCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextSensorStatusCheck;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextSensorStatusCheck;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 180
    new-instance v0, Landroid/hardware/scontext/SContextSensorStatusCheck;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextSensorStatusCheck;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextSensorStatusCheck$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextSensorStatusCheck;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextSensorStatusCheck;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 185
    new-array v0, p1, [Landroid/hardware/scontext/SContextSensorStatusCheck;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextSensorStatusCheck$1;->newArray(I)[Landroid/hardware/scontext/SContextSensorStatusCheck;

    move-result-object v0

    return-object v0
.end method
