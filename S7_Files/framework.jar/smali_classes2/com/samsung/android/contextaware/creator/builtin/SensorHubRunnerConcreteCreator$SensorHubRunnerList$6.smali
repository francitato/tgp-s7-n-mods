.class final enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$6;
.super Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOVEMENT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 6

    .prologue
    .line 240
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/MovementRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap4()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap0()Landroid/content/Context;

    move-result-object v4

    .line 244
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v5

    .line 243
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/MovementRunner;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$6;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method
