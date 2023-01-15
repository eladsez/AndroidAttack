.class public Lorg/hermit/android/sound/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field private final clipResourceId:I

.field private playVol:F

.field private player:Lorg/hermit/android/sound/Player$PoolPlayer;

.field private playerSoundId:I

.field private final soundPlayer:Lorg/hermit/android/sound/Player;


# direct methods
.method constructor <init>(Lorg/hermit/android/sound/Player;IF)V
    .locals 1
    .param p1, "player"    # Lorg/hermit/android/sound/Player;
    .param p2, "resId"    # I
    .param p3, "vol"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Effect;->player:Lorg/hermit/android/sound/Player$PoolPlayer;

    .line 47
    iput-object p1, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    .line 48
    iput p2, p0, Lorg/hermit/android/sound/Effect;->clipResourceId:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/hermit/android/sound/Effect;->playerSoundId:I

    .line 50
    iput p3, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    .line 51
    return-void
.end method


# virtual methods
.method final getPlayVol()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    return v0
.end method

.method final getPlayer()Lorg/hermit/android/sound/Player$PoolPlayer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->player:Lorg/hermit/android/sound/Player$PoolPlayer;

    return-object v0
.end method

.method final getResourceId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/hermit/android/sound/Effect;->clipResourceId:I

    return v0
.end method

.method final getSoundId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/hermit/android/sound/Effect;->playerSoundId:I

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->player:Lorg/hermit/android/sound/Player$PoolPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->player:Lorg/hermit/android/sound/Player$PoolPlayer;

    invoke-virtual {v0, p0}, Lorg/hermit/android/sound/Player$PoolPlayer;->isPlaying(Lorg/hermit/android/sound/Effect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loop()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    iget v1, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/hermit/android/sound/Player;->play(Lorg/hermit/android/sound/Effect;FZ)V

    .line 157
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    iget v1, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/hermit/android/sound/Player;->play(Lorg/hermit/android/sound/Effect;FZ)V

    .line 139
    return-void
.end method

.method public play(F)V
    .locals 3
    .param p1, "rvol"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    iget v1, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/hermit/android/sound/Player;->play(Lorg/hermit/android/sound/Effect;FZ)V

    .line 149
    return-void
.end method

.method play(FZ)V
    .locals 2
    .param p1, "rvol"    # F
    .param p2, "loop"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    iget v1, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, p0, v1, p2}, Lorg/hermit/android/sound/Player;->play(Lorg/hermit/android/sound/Effect;FZ)V

    .line 168
    return-void
.end method

.method final setPlayVol(F)V
    .locals 0
    .param p1, "vol"    # F

    .prologue
    .line 126
    iput p1, p0, Lorg/hermit/android/sound/Effect;->playVol:F

    .line 127
    return-void
.end method

.method final setPlayer(Lorg/hermit/android/sound/Player$PoolPlayer;)V
    .locals 0
    .param p1, "p"    # Lorg/hermit/android/sound/Player$PoolPlayer;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/hermit/android/sound/Effect;->player:Lorg/hermit/android/sound/Player$PoolPlayer;

    .line 107
    return-void
.end method

.method final setSoundId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 86
    iput p1, p0, Lorg/hermit/android/sound/Effect;->playerSoundId:I

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/hermit/android/sound/Effect;->soundPlayer:Lorg/hermit/android/sound/Player;

    invoke-virtual {v0, p0}, Lorg/hermit/android/sound/Player;->stop(Lorg/hermit/android/sound/Effect;)V

    .line 176
    return-void
.end method
