.class public Lcom/samsung/android/settings/ethernet/EthernetLayer;
.super Ljava/lang/Object;
.source "EthernetLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetLayer$1;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 1
    .param p1, "configdialog"    # Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetLayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetLayer$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetLayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetLayer;->mDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .line 34
    return-void
.end method
