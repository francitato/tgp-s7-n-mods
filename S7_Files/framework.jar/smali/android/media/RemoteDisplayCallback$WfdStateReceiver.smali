.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$WfdStateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "send command: UpdateUserInput >> 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v9, "upgd"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string/jumbo v8, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "send command: UpdateUserInput >> 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v9, "upgd"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string/jumbo v8, "com.samsung.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    invoke-static {v11}, Landroid/media/RemoteDisplayCallback;->-set1(I)I

    .line 174
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v9, "tcp"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v8, "com.samsung.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 180
    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->-set1(I)I

    .line 181
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v9, "udp"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_4
    const-string/jumbo v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 185
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, "audio_type":I
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "currVolume":I
    const/4 v8, 0x3

    if-ne v2, v8, :cond_0

    .line 191
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v8}, Landroid/media/RemoteDisplayCallback;->-get3(Landroid/media/RemoteDisplayCallback;)I

    move-result v8

    if-ne v8, v3, :cond_5

    .line 192
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "same volume! skip to send command!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 194
    :cond_5
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get4()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 195
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v8, v3}, Landroid/media/RemoteDisplayCallback;->-set0(Landroid/media/RemoteDisplayCallback;I)I

    .line 196
    const-string/jumbo v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send command: curr stream vol:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->-get3(Landroid/media/RemoteDisplayCallback;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v8, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v9, "vol"

    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->-get3(Landroid/media/RemoteDisplayCallback;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    .end local v2    # "audio_type":I
    .end local v3    # "currVolume":I
    :cond_6
    const-string/jumbo v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 201
    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 204
    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get4()I

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get1()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 206
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 207
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 211
    :cond_7
    const-string/jumbo v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 212
    const-string/jumbo v8, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 213
    .local v6, "state":I
    const-string/jumbo v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "MODE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get4()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-ne v6, v12, :cond_0

    .line 216
    :try_start_0
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "Thead on"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 218
    const-string/jumbo v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get0()Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get0()Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get4()I

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get1()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "isBluetoothA2dpOn()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 222
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v8, "RemoteDisplayCallback"

    const-string/jumbo v9, "Thread exception!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "state":I
    :cond_8
    const-string/jumbo v8, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 232
    .local v7, "stream":I
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, "devices":I
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    const-string/jumbo v9, ""

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, "address":Ljava/lang/String;
    const-string/jumbo v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " stream use "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const v8, 0x8000

    if-eq v4, v8, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get4()I

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get1()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 239
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 240
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get2()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v8

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0
.end method
