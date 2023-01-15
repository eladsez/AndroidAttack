.class public Lorg/hermit/android/instruments/AudioAnalyser;
.super Lorg/hermit/android/instruments/Instrument;
.source "AudioAnalyser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private audioData:[S

.field private audioProcessed:J

.field private final audioReader:Lorg/hermit/android/io/AudioReader;

.field private audioSequence:J

.field private biasRange:[F

.field private currentPower:D

.field private historyLen:I

.field private inputBlockSize:I

.field private parentSurface:Lorg/hermit/android/core/SurfaceRunner;

.field private powerGauge:Lorg/hermit/android/instruments/PowerGauge;

.field private readError:I

.field private sampleDecimate:I

.field private sampleRate:I

.field private sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

.field private spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

.field private spectrumData:[F

.field private spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

.field private spectrumHist:[[F

.field private spectrumIndex:I

.field private waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

.field private windowFunction:Lorg/hermit/dsp/Window$Function;


# direct methods
.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 6
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Instrument;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 475
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    .line 478
    const/16 v0, 0x100

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    .line 481
    sget-object v0, Lorg/hermit/dsp/Window$Function;->BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->windowFunction:Lorg/hermit/dsp/Window$Function;

    .line 485
    const/4 v0, 0x1

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleDecimate:I

    .line 488
    const/4 v0, 0x4

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    .line 499
    iput-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    .line 500
    iput-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    .line 501
    iput-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    .line 502
    iput-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    .line 506
    iput-wide v4, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    .line 509
    iput v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->readError:I

    .line 512
    iput-wide v4, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioProcessed:J

    .line 522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->currentPower:D

    .line 525
    iput-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->biasRange:[F

    .line 52
    iput-object p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    .line 54
    new-instance v0, Lorg/hermit/android/io/AudioReader;

    invoke-direct {v0}, Lorg/hermit/android/io/AudioReader;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioReader:Lorg/hermit/android/io/AudioReader;

    .line 56
    new-instance v0, Lorg/hermit/dsp/FFTTransformer;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    iget-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->windowFunction:Lorg/hermit/dsp/Window$Function;

    invoke-direct {v0, v1, v2}, Lorg/hermit/dsp/FFTTransformer;-><init>(ILorg/hermit/dsp/Window$Function;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    .line 59
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    .line 60
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumHist:[[F

    .line 61
    iput v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumIndex:I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->biasRange:[F

    .line 64
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/instruments/AudioAnalyser;[S)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/AudioAnalyser;->receiveAudio([S)V

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/android/instruments/AudioAnalyser;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/AudioAnalyser;->handleError(I)V

    return-void
.end method

.method private handleError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iput p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->readError:I

    .line 302
    monitor-exit p0

    .line 305
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final processAudio([S)V
    .locals 11
    .param p1, "buffer"    # [S

    .prologue
    .line 350
    monitor-enter p1

    .line 353
    :try_start_0
    array-length v6, p1

    .line 356
    .local v6, "len":I
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    if-eqz v0, :cond_1

    .line 357
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    sub-int v0, v6, v0

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    iget-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->biasRange:[F

    invoke-static {p1, v0, v1, v2}, Lorg/hermit/dsp/SignalPower;->biasAndRange([SII[F)V

    .line 358
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->biasRange:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 359
    .local v4, "bias":F
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->biasRange:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 360
    .local v5, "range":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_0

    .line 361
    const/high16 v5, 0x3f800000    # 1.0f

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    sub-int v2, v6, v1

    iget v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/hermit/android/instruments/WaveformGauge;->update([SIIFF)V

    .line 370
    .end local v4    # "bias":F
    .end local v5    # "range":F
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x0

    invoke-static {p1, v0, v6}, Lorg/hermit/dsp/SignalPower;->calculatePowerDb([SII)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->currentPower:D

    .line 374
    :cond_2
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_4

    .line 375
    :cond_3
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    sub-int v1, v6, v1

    iget v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/hermit/dsp/FFTTransformer;->setInput([SII)V

    .line 378
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 350
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_6

    .line 385
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 386
    .local v9, "specStart":J
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    invoke-virtual {v0}, Lorg/hermit/dsp/FFTTransformer;->transform()V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 388
    .local v7, "specEnd":J
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    const/4 v1, 0x0

    sub-long v2, v7, v9

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/android/core/SurfaceRunner;->statsTime(IJ)V

    .line 391
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    .line 392
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    invoke-virtual {v0, v1}, Lorg/hermit/dsp/FFTTransformer;->getResults([F)[F

    .line 400
    .end local v7    # "specEnd":J
    .end local v9    # "specStart":J
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    invoke-virtual {v0, v1}, Lorg/hermit/android/instruments/SpectrumGauge;->update([F)V

    .line 404
    :cond_7
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_8

    .line 405
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    invoke-virtual {v0, v1}, Lorg/hermit/android/instruments/SonagramGauge;->update([F)V

    .line 408
    :cond_8
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    if-eqz v0, :cond_9

    .line 409
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    iget-wide v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->currentPower:D

    invoke-virtual {v0, v1, v2}, Lorg/hermit/android/instruments/PowerGauge;->update(D)V

    .line 410
    :cond_9
    return-void

    .line 350
    .end local v6    # "len":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 394
    .restart local v6    # "len":I
    .restart local v7    # "specEnd":J
    .restart local v9    # "specStart":J
    :cond_a
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    .line 395
    iget-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumHist:[[F

    .line 396
    iget v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumIndex:I

    .line 394
    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/dsp/FFTTransformer;->getResults([F[[FI)I

    move-result v0

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumIndex:I

    goto :goto_0
.end method

.method private final processError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    invoke-virtual {v0, p1}, Lorg/hermit/android/instruments/WaveformGauge;->error(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    invoke-virtual {v0, p1}, Lorg/hermit/android/instruments/SpectrumGauge;->error(I)V

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    invoke-virtual {v0, p1}, Lorg/hermit/android/instruments/SonagramGauge;->error(I)V

    .line 426
    :cond_2
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    invoke-virtual {v0, p1}, Lorg/hermit/android/instruments/PowerGauge;->error(I)V

    .line 428
    :cond_3
    return-void
.end method

.method private final receiveAudio([S)V
    .locals 4
    .param p1, "buffer"    # [S

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iput-object p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioData:[S

    .line 291
    iget-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    .line 289
    monitor-exit p0

    .line 293
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public appStart()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public appStop()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final doUpdate(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 324
    const/4 v0, 0x0

    check-cast v0, [S

    .line 325
    .local v0, "buffer":[S
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioData:[S

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    iget-wide v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioProcessed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 327
    iget-object v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    iget-wide v5, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioProcessed:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/hermit/android/core/SurfaceRunner;->statsCount(II)V

    .line 328
    iget-wide v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    iput-wide v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioProcessed:J

    .line 329
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioData:[S

    .line 325
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, v0}, Lorg/hermit/android/instruments/AudioAnalyser;->processAudio([S)V

    .line 337
    :cond_1
    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->readError:I

    if-eqz v1, :cond_2

    .line 338
    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->readError:I

    invoke-direct {p0, v1}, Lorg/hermit/android/instruments/AudioAnalyser;->processError(I)V

    .line 339
    :cond_2
    return-void

    .line 325
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPowerGauge(Lorg/hermit/android/core/SurfaceRunner;)Lorg/hermit/android/instruments/PowerGauge;
    .locals 2
    .param p1, "surface"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already have a PowerGauge for this AudioAnalyser"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    new-instance v0, Lorg/hermit/android/instruments/PowerGauge;

    invoke-direct {v0, p1}, Lorg/hermit/android/instruments/PowerGauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    .line 260
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    return-object v0
.end method

.method public getSonagramGauge(Lorg/hermit/android/core/SurfaceRunner;)Lorg/hermit/android/instruments/SonagramGauge;
    .locals 3
    .param p1, "surface"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already have a SonagramGauge for this AudioAnalyser"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    new-instance v0, Lorg/hermit/android/instruments/SonagramGauge;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    iget v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    invoke-direct {v0, p1, v1, v2}, Lorg/hermit/android/instruments/SonagramGauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;II)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    .line 244
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    return-object v0
.end method

.method public getSpectrumGauge(Lorg/hermit/android/core/SurfaceRunner;)Lorg/hermit/android/instruments/SpectrumGauge;
    .locals 2
    .param p1, "surface"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already have a SpectrumGauge for this AudioAnalyser"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v0, Lorg/hermit/android/instruments/SpectrumGauge;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    invoke-direct {v0, p1, v1}, Lorg/hermit/android/instruments/SpectrumGauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;I)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    .line 228
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    return-object v0
.end method

.method public getWaveformGauge(Lorg/hermit/android/core/SurfaceRunner;)Lorg/hermit/android/instruments/WaveformGauge;
    .locals 2
    .param p1, "surface"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already have a WaveformGauge for this AudioAnalyser"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Lorg/hermit/android/instruments/WaveformGauge;

    invoke-direct {v0, p1}, Lorg/hermit/android/instruments/WaveformGauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    .line 213
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    return-object v0
.end method

.method public measureStart()V
    .locals 4

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioSequence:J

    iput-wide v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioProcessed:J

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->readError:I

    .line 168
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioReader:Lorg/hermit/android/io/AudioReader;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    iget v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    iget v3, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleDecimate:I

    mul-int/2addr v2, v3

    new-instance v3, Lorg/hermit/android/instruments/AudioAnalyser$1;

    invoke-direct {v3, p0}, Lorg/hermit/android/instruments/AudioAnalyser$1;-><init>(Lorg/hermit/android/instruments/AudioAnalyser;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/android/io/AudioReader;->startReader(IILorg/hermit/android/io/AudioReader$Listener;)V

    .line 178
    return-void
.end method

.method public measureStop()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->audioReader:Lorg/hermit/android/io/AudioReader;

    invoke-virtual {v0}, Lorg/hermit/android/io/AudioReader;->stopReader()V

    .line 187
    return-void
.end method

.method public resetGauge()V
    .locals 1

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->waveformGauge:Lorg/hermit/android/instruments/WaveformGauge;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->powerGauge:Lorg/hermit/android/instruments/PowerGauge;

    .line 268
    monitor-exit p0

    .line 274
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 455
    return-void
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 443
    return-void
.end method

.method public setAverageLen(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    .line 140
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumHist:[[F

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumIndex:I

    .line 142
    return-void
.end method

.method public setBlockSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    .line 99
    new-instance v0, Lorg/hermit/dsp/FFTTransformer;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    iget-object v2, p0, Lorg/hermit/android/instruments/AudioAnalyser;->windowFunction:Lorg/hermit/dsp/Window$Function;

    invoke-direct {v0, v1, v2}, Lorg/hermit/dsp/FFTTransformer;-><init>(ILorg/hermit/dsp/Window$Function;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    .line 102
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumData:[F

    .line 103
    iget v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->inputBlockSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->historyLen:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumHist:[[F

    .line 104
    return-void
.end method

.method public setDecimation(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleDecimate:I

    .line 128
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    .line 80
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumGauge:Lorg/hermit/android/instruments/SpectrumGauge;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/instruments/SpectrumGauge;->setSampleRate(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sonagramGauge:Lorg/hermit/android/instruments/SonagramGauge;

    iget v1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->sampleRate:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/instruments/SonagramGauge;->setSampleRate(I)V

    .line 86
    :cond_1
    return-void
.end method

.method public setWindowFunc(Lorg/hermit/dsp/Window$Function;)V
    .locals 1
    .param p1, "func"    # Lorg/hermit/dsp/Window$Function;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/hermit/android/instruments/AudioAnalyser;->windowFunction:Lorg/hermit/dsp/Window$Function;

    .line 116
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser;->spectrumAnalyser:Lorg/hermit/dsp/FFTTransformer;

    invoke-virtual {v0, p1}, Lorg/hermit/dsp/FFTTransformer;->setWindowFunc(Lorg/hermit/dsp/Window$Function;)V

    .line 117
    return-void
.end method
