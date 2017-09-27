.class public Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;
.super Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    }
.end annotation


# static fields
.field private static sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Z
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->removeObj(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getRunnerCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "runnerCreator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 316
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 317
    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 318
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method private static getRunnerCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private static setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "runnerCreator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    sput-object p0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 357
    return-void
.end method


# virtual methods
.method public final getSubCollectionList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->values()[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 331
    .local v0, "tmp":Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    return-object v0

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "tmp":Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
