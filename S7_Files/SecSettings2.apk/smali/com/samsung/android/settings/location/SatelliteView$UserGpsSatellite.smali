.class public Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;
.super Ljava/lang/Object;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGpsSatellite"
.end annotation


# instance fields
.field private mSV:I

.field private mSat:Landroid/location/GpsSatellite;


# direct methods
.method public constructor <init>(Landroid/location/GpsSatellite;I)V
    .locals 0
    .param p1, "sat"    # Landroid/location/GpsSatellite;
    .param p2, "sv"    # I

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    .line 456
    iput p2, p0, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;->mSV:I

    .line 454
    return-void
.end method


# virtual methods
.method public getSat()Landroid/location/GpsSatellite;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    return-object v0
.end method
