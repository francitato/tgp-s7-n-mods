.class final Lcom/samsung/android/knox/SemPersonaInfo$1;
.super Ljava/lang/Object;
.source "SemPersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaInfo;
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
        "Lcom/samsung/android/knox/SemPersonaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 826
    new-instance v0, Lcom/samsung/android/knox/SemPersonaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaInfo;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/SemPersonaInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 830
    new-array v0, p1, [Lcom/samsung/android/knox/SemPersonaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaInfo$1;->newArray(I)[Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    return-object v0
.end method
