.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;
.super Ljava/lang/Object;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    .line 74
    const-string/jumbo v3, "com.samsung.android.settings.accessibility.sharedaccessibility.ShareAccessibilityExportImport"

    .line 73
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x1

    return v1
.end method
