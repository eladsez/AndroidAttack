.class Lorg/hermit/android/sound/Player$PoolPlayer;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/sound/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PoolPlayer"
.end annotation


# instance fields
.field private loadedEffect:Lorg/hermit/android/sound/Effect;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lorg/hermit/android/sound/Player;


# direct methods
.method private constructor <init>(Lorg/hermit/android/sound/Player;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->this$0:Lorg/hermit/android/sound/Player;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/android/sound/Player;Lorg/hermit/android/sound/Player$PoolPlayer;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/hermit/android/sound/Player$PoolPlayer;-><init>(Lorg/hermit/android/sound/Player;)V

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/android/sound/Player$PoolPlayer;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/hermit/android/sound/Player$PoolPlayer;->release()V

    return-void
.end method

.method static synthetic access$2(Lorg/hermit/android/sound/Player$PoolPlayer;Lorg/hermit/android/sound/Effect;FZ)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/hermit/android/sound/Player$PoolPlayer;->load(Lorg/hermit/android/sound/Effect;FZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lorg/hermit/android/sound/Player$PoolPlayer;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/hermit/android/sound/Player$PoolPlayer;->start()V

    return-void
.end method

.method static synthetic access$4(Lorg/hermit/android/sound/Player$PoolPlayer;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/hermit/android/sound/Player$PoolPlayer;->stop()V

    return-void
.end method

.method private load(Lorg/hermit/android/sound/Effect;FZ)Z
    .locals 9
    .param p1, "effect"    # Lorg/hermit/android/sound/Effect;
    .param p2, "vol"    # F
    .param p3, "loop"    # Z

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/hermit/android/sound/Effect;->getResourceId()I

    move-result v8

    .line 70
    .local v8, "resId":I
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->this$0:Lorg/hermit/android/sound/Player;

    invoke-static {v0}, Lorg/hermit/android/sound/Player;->access$0(Lorg/hermit/android/sound/Player;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 72
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 73
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 74
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 75
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 76
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 85
    :goto_0
    iput-object p1, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    .line 88
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 91
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 93
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 77
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 78
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "sound"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set up media player: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 79
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 82
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 84
    :goto_3
    throw v0

    .line 83
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 146
    iput-object v1, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 147
    iput-object v1, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    .line 149
    :cond_0
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tried to play with no effect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 104
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tried to stop with no effect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    .line 115
    return-void
.end method


# virtual methods
.method final isPlaying()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method final isPlaying(Lorg/hermit/android/sound/Effect;)Z
    .locals 1
    .param p1, "e"    # Lorg/hermit/android/sound/Effect;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->loadedEffect:Lorg/hermit/android/sound/Effect;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/hermit/android/sound/Player$PoolPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
