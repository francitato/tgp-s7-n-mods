.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method
