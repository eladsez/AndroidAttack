.class public Lorg/apache/cordova/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/AudioPlayer$1;,
        Lorg/apache/cordova/AudioPlayer$STATE;,
        Lorg/apache/cordova/AudioPlayer$MODE;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioPlayer"

.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERR_ABORTED:I

.field private static MEDIA_ERR_DECODE:I

.field private static MEDIA_ERR_NETWORK:I

.field private static MEDIA_ERR_NONE_ACTIVE:I

.field private static MEDIA_ERR_NONE_SUPPORTED:I

.field private static MEDIA_POSITION:I

.field private static MEDIA_STATE:I


# instance fields
.field private audioFile:Ljava/lang/String;

.field private duration:F

.field private handler:Lorg/apache/cordova/AudioHandler;

.field private id:Ljava/lang/String;

.field private mode:Lorg/apache/cordova/AudioPlayer$MODE;

.field private player:Landroid/media/MediaPlayer;

.field private prepareOnly:Z

.field private recorder:Landroid/media/MediaRecorder;

.field private seekOnPrepared:I

.field private state:Lorg/apache/cordova/AudioPlayer$STATE;

.field private tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 60
    sput v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STATE:I

    .line 61
    sput v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_DURATION:I

    .line 62
    sput v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    .line 63
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    .line 66
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    .line 67
    sput v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    .line 68
    sput v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NETWORK:I

    .line 69
    sput v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_DECODE:I

    .line 70
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_SUPPORTED:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/cordova/AudioHandler;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lorg/apache/cordova/AudioPlayer$MODE;->NONE:Lorg/apache/cordova/AudioPlayer$MODE;

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mode:Lorg/apache/cordova/AudioPlayer$MODE;

    .line 75
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_NONE:Lorg/apache/cordova/AudioPlayer$STATE;

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 77
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 78
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    .line 80
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 81
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->seekOnPrepared:I

    .line 94
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    .line 95
    iput-object p2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmprecording.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/tmprecording.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDurationInSeconds()F
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private loadAudioFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 524
    sget-object v0, Lorg/apache/cordova/AudioPlayer$MODE;->PLAY:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setMode(Lorg/apache/cordova/AudioPlayer$MODE;)V

    .line 525
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 526
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 527
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 552
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, "f":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 533
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 545
    .end local v6    # "f":Ljava/lang/String;
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 546
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 547
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 550
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0

    .line 536
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v9, "fp":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 539
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 542
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private playMode()Z
    .locals 3

    .prologue
    .line 445
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mode:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 447
    :pswitch_1
    sget-object v0, Lorg/apache/cordova/AudioPlayer$MODE;->PLAY:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setMode(Lorg/apache/cordova/AudioPlayer$MODE;)V

    goto :goto_0

    .line 452
    :pswitch_2
    const-string v0, "AudioPlayer"

    const-string v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    goto :goto_1

    .line 445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readyPlayer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->playMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    sget-object v3, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    iget-object v4, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v4}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 505
    const-string v2, "AudioPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioPlayer Error: startPlaying() called during invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v2, v2, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", { \"code\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "});"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 468
    :pswitch_0
    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 469
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 472
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/AudioPlayer;->loadAudioFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v2, v2, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", { \"code\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "});"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "AudioPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioPlayer Loading: startPlaying() called during media preparation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v4}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iput-boolean v1, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 485
    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 490
    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 491
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    move v1, v2

    .line 492
    goto/16 :goto_0

    .line 495
    :cond_2
    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 497
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/AudioPlayer;->loadAudioFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 498
    :catch_1
    move-exception v0

    .line 499
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v2, v2, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", { \"code\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "});"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMode(Lorg/apache/cordova/AudioPlayer$MODE;)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/cordova/AudioPlayer$MODE;

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mode:Lorg/apache/cordova/AudioPlayer$MODE;

    if-eq v0, p1, :cond_0

    .line 419
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->mode:Lorg/apache/cordova/AudioPlayer$MODE;

    .line 420
    return-void
.end method

.method private setState(Lorg/apache/cordova/AudioPlayer$STATE;)V
    .locals 3
    .param p1, "state"    # Lorg/apache/cordova/AudioPlayer$STATE;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    if-eq v0, p1, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 406
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 407
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 115
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 122
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 123
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 125
    :cond_3
    return-void
.end method

.method public getCurrentPosition()J
    .locals 5

    .prologue
    .line 284
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v2, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v2, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    if-ne v1, v2, :cond_1

    .line 285
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 286
    .local v0, "curPos":I
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v1, v1, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 287
    int-to-long v1, v0

    .line 290
    .end local v0    # "curPos":I
    :goto_0
    return-wide v1

    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDuration(Ljava/lang/String;)F
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 322
    const/high16 v0, -0x40000000    # -2.0f

    .line 337
    :goto_0
    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 327
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 333
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v0

    return v0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "f":Ljava/io/File;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "logMsg":Ljava/lang/String;
    const-string v2, "AudioPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AudioPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    return-void

    .line 175
    .end local v1    # "logMsg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v3, v3, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 274
    const-string v0, "AudioPlayer"

    const-string v1, "on completion is calling stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 276
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 386
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer.onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 390
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 393
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 350
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->seekOnPrepared:I

    invoke-virtual {p0, v0}, Lorg/apache/cordova/AudioPlayer;->seekToPlaying(I)V

    .line 352
    iget-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 354
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->seekOnPrepared:I

    .line 360
    :goto_0
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 365
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_DURATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 366
    return-void

    .line 357
    :cond_0
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    goto :goto_0
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 244
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: pausePlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToPlaying(I)V
    .locals 4
    .param p1, "milliseconds"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->readyPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 228
    const-string v0, "AudioPlayer"

    const-string v1, "Send a onStatus update for the new seek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iput p1, p0, Lorg/apache/cordova/AudioPlayer;->seekOnPrepared:I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 437
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 438
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/cordova/AudioPlayer;->readyPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 215
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 216
    iput v1, p0, Lorg/apache/cordova/AudioPlayer;->seekOnPrepared:I

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iput-boolean v1, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 133
    sget-object v1, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->mode:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Can\'t record in play mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v1, v1, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 141
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 142
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 143
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 146
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 147
    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v1, v1, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Already recording."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v1, v1, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 258
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 259
    const-string v0, "AudioPlayer"

    const-string v1, "stopPlaying is calling stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: stopPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->state:Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v2, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    if-ne v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 192
    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(Lorg/apache/cordova/AudioPlayer$STATE;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 195
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/cordova/AudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
