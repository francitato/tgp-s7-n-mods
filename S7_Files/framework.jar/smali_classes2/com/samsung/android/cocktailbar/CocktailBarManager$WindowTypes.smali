.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowTypes"
.end annotation


# static fields
.field public static final WINDOW_TYPE_COCKTAIL_BAR_BACKGROUND:I = 0x8

.field public static final WINDOW_TYPE_IMMERSIVE:I = 0x2

.field public static final WINDOW_TYPE_INPUT_METHOD:I = 0x4

.field public static final WINDOW_TYPE_KEYGUARD:I = 0x5

.field public static final WINDOW_TYPE_NORMAL:I = 0x1

.field public static final WINDOW_TYPE_POPUP:I = 0x6

.field public static final WINDOW_TYPE_RESERVE:I = 0x1000

.field public static final WINDOW_TYPE_SCOVER:I = 0x7

.field public static final WINDOW_TYPE_STATUS_BAR:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
