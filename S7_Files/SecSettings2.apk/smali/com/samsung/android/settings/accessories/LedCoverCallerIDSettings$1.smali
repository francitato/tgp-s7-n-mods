.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 220
    check-cast v0, Lcom/android/settings/widget/FloatingActionButton;

    .line 221
    .local v0, "clickBtn":Lcom/android/settings/widget/FloatingActionButton;
    invoke-virtual {v0}, Lcom/android/settings/widget/FloatingActionButton;->getId()I

    move-result v2

    const v3, 0x7f110445

    if-ne v2, v3, :cond_0

    .line 222
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    .line 225
    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace.creationpattern.LCoverCreatePatternActivity"

    .line 224
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v2, "arrayName"

    const-string/jumbo v3, "new"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v2, "arrayID"

    const/16 v3, -0x21

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->startActivity(Landroid/content/Intent;)V

    .line 219
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)V

    goto :goto_0
.end method
