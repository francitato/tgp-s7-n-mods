.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 876
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set0(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 877
    if-eqz p1, :cond_0

    .line 879
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 880
    const/4 v2, 0x4

    .line 879
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    .line 883
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;->val$intent:Landroid/content/Intent;

    invoke-static {v0, p1, v1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    .line 875
    return-void
.end method
