.class public Lcom/samsung/android/hardware/context/SemContextAttribute;
.super Ljava/lang/Object;
.source "SemContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 163
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/os/Bundle;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
