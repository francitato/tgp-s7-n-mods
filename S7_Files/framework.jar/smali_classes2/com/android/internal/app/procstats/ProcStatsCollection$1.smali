.class final Lcom/android/internal/app/procstats/ProcStatsCollection$1;
.super Ljava/lang/Object;
.source "ProcStatsCollection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcStatsCollection;
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
        "Lcom/android/internal/app/procstats/ProcStatsCollection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/procstats/ProcStatsCollection;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 184
    new-instance v0, Lcom/android/internal/app/procstats/ProcStatsCollection;

    invoke-direct {v0, p1}, Lcom/android/internal/app/procstats/ProcStatsCollection;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcStatsCollection$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/procstats/ProcStatsCollection;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/app/procstats/ProcStatsCollection;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 191
    new-array v0, p1, [Lcom/android/internal/app/procstats/ProcStatsCollection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcStatsCollection$1;->newArray(I)[Lcom/android/internal/app/procstats/ProcStatsCollection;

    move-result-object v0

    return-object v0
.end method
