.class Lcom/android/systemui/qs/tiles/WifiCallingTile$8;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;->showWfcOPVDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    .line 476
    return-void
.end method
