.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goToLockShade()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method
