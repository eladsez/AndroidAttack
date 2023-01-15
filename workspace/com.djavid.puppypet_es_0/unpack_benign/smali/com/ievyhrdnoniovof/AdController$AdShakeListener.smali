.class Lcom/ievyhrdnoniovof/AdController$AdShakeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdShakeListener"
.end annotation


# static fields
.field private static final synthetic E:I = 0x12c

.field private static final synthetic b:I = 0x5dc

.field private static final synthetic l:F = 2.5f


# instance fields
.field private synthetic A:J

.field final synthetic B:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic G:Ljava/lang/Runnable;

.field private synthetic H:J

.field private synthetic I:Landroid/os/Handler;

.field private synthetic M:I

.field private synthetic d:Z

.field private synthetic g:I

.field private synthetic k:I

.field private synthetic m:Z


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdController;Z)V
    .locals 3
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->H:J

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->M:I

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->m:Z

    iput-boolean p2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->d:Z

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->I:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;

    invoke-direct {v0, p0, p1}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;-><init>(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;Lcom/ievyhrdnoniovof/AdController;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->G:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic A()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->m:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Z)Z

    const-string v0, "LBAdController"

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->J(Lcom/ievyhrdnoniovof/AdController;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v1, "\u0016S\u0004P\u0000\u001b\u0000M\u0000U\u0011\u001b\u0001^\u0011^\u0006O\u000cT\u000b\u001b\u0001R\u0016Z\u0007W\u0000_"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->l()V

    return-void
.end method

.method private synthetic L()V
    .locals 4

    .prologue
    :try_start_0
    const-string v0, "LBAdController"

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    const-string v1, "cp\u007foyvw8qmtq\u007f8q|0q~8rj\u007foc}b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdClicked()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "\u0004U\u0001I\nR\u0001\u0015\u000cU\u0011^\u000bOKZ\u0006O\u000cT\u000b\u00153r l"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "q|ej|"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private synthetic l()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->H:J

    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A:J

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->M:I

    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A()V

    return-void
.end method


# virtual methods
.method public destroySensor()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public enableShakeDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->m:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->J(Lcom/ievyhrdnoniovof/AdController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->J(Lcom/ievyhrdnoniovof/AdController;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "LBAdController"

    const-string v1, "H\rZ\u000e^E^\u0013^\u000bOE_\u0000O\u0000X\u0011R\nUE^\u000bZ\u0007W\u0000_"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/hardware/SensorEvent;

    .prologue
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->g(Lcom/ievyhrdnoniovof/AdController;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdController;->L(Lcom/ievyhrdnoniovof/AdController;F)F

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    invoke-static {v3, v0}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;F)F

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->g(Lcom/ievyhrdnoniovof/AdController;)F

    move-result v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->a(Lcom/ievyhrdnoniovof/AdController;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->X(Lcom/ievyhrdnoniovof/AdController;)F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdController;->A(Lcom/ievyhrdnoniovof/AdController;F)F

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->X(Lcom/ievyhrdnoniovof/AdController;)F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->H:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->H:J

    iput-wide v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A:J

    :cond_0
    iget-wide v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iput-wide v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A:J

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->M:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->M:I

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->M:I

    iget v3, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->g:I

    if-lt v2, v3, :cond_3

    iget-wide v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->H:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const-string v0, "LBAdController"

    const-string v1, "fy|qt8cpqsu"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->l()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A()V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFinished()V

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->f(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->B:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->G(Lcom/ievyhrdnoniovof/AdController;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->L()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->l()V

    goto :goto_0
.end method

.method public setShakeTime(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->g:I

    return-void
.end method

.method public setValidTimes(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->k:I

    return-void
.end method

.method public setupAudioAdHandler()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->G:Ljava/lang/Runnable;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
