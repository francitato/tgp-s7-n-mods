.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 529
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, "Checking Network Dialog Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->cancel(Z)Z

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get14(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 528
    return-void
.end method
