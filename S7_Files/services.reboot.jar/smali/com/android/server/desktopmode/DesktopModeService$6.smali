.class Lcom/android/server/desktopmode/DesktopModeService$6;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 984
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    .line 983
    return-void

    .line 984
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
