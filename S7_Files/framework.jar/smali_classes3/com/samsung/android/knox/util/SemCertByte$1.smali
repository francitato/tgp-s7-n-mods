.class final Lcom/samsung/android/knox/util/SemCertByte$1;
.super Ljava/lang/Object;
.source "SemCertByte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/util/SemCertByte;
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
        "Lcom/samsung/android/knox/util/SemCertByte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/util/SemCertByte;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v0, Lcom/samsung/android/knox/util/SemCertByte;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/util/SemCertByte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/util/SemCertByte$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/util/SemCertByte;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/util/SemCertByte;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/util/SemCertByte$1;->newArray(I)[Lcom/samsung/android/knox/util/SemCertByte;

    move-result-object v0

    return-object v0
.end method
