.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 489
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 488
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 494
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 493
    return-void
.end method
