.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;
.super Ljava/lang/Object;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Direction"
.end annotation


# instance fields
.field name_idx:I

.field opposite_name_idx:I

.field status_idx:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "dr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    .line 85
    iput v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    .line 86
    iput v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    .line 82
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    .line 89
    iput v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    .line 90
    iput v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    goto :goto_0
.end method
