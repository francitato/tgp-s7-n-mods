.class final Lcom/samsung/android/widget/SemDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker$SavedState;
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
        "Lcom/samsung/android/widget/SemDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/widget/SemDatePicker$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1558
    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/samsung/android/widget/SemDatePicker$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1557
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/widget/SemDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/widget/SemDatePicker$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1562
    new-array v0, p1, [Lcom/samsung/android/widget/SemDatePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1561
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;->newArray(I)[Lcom/samsung/android/widget/SemDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
