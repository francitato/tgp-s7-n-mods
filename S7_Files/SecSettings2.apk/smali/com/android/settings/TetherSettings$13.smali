.class Lcom/android/settings/TetherSettings$13;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$dnsCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "val$edit"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "val$dnsCheckBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/TetherSettings$13;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 685
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pref_dns_first_usb_tether_dialog"

    .line 686
    iget-object v2, p0, Lcom/android/settings/TetherSettings$13;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 685
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 687
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;I)V

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    .line 695
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;I)V

    .line 684
    :cond_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->-wrap1(Lcom/android/settings/TetherSettings;)V

    goto :goto_0
.end method
