.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$3;
.super Lcom/samsung/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 245
    return-void
.end method
