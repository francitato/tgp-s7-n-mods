.class Lcom/android/settings/wifi/AdvancedWifiSettings$4;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap5(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V

    .line 545
    const/4 v0, 0x1

    return v0
.end method
