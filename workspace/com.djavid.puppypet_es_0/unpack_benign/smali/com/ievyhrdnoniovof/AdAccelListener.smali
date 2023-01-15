.class public Lcom/ievyhrdnoniovof/AdAccelListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final synthetic D:I = 0x3e8

.field private static final synthetic E:I = 0x7d0

.field private static final synthetic b:I = 0x2

.field private static final synthetic d:I = 0x1f4

.field private static final synthetic k:I = 0x64


# instance fields
.field private synthetic A:I

.field B:I

.field private synthetic F:J

.field private synthetic G:J

.field private synthetic H:[F

.field I:Ljava/lang/String;

.field J:Lcom/ievyhrdnoniovof/AdSensorController;

.field private synthetic K:I

.field private synthetic L:[F

.field M:I

.field a:I

.field private synthetic c:Z

.field private synthetic f:[F

.field private synthetic g:[F

.field private synthetic j:J

.field private synthetic l:Landroid/hardware/SensorManager;

.field private synthetic m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdSensorController;)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdSensorController;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "\u0016^\u000bH\nI"

    const/4 v1, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    iput v5, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    iput v5, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    iput v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->K:I

    new-array v3, v2, [F

    aput v4, v3, v5

    aput v4, v3, v7

    aput v4, v3, v8

    iput-object v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    new-array v2, v2, [F

    aput v4, v2, v5

    aput v4, v2, v7

    aput v4, v2, v8

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->L:[F

    new-array v1, v1, [F

    aput v6, v1, v5

    aput v6, v1, v7

    aput v6, v1, v8

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->f:[F

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->J:Lcom/ievyhrdnoniovof/AdSensorController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    return-void
.end method

.method private synthetic A()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->K:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->K:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->A()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "arg0"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v2, 0x9

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    :goto_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdAccelListener;->g:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->m:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->c:Z

    if-eqz v1, :cond_0

    iput-boolean v7, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->m:Z

    iput-boolean v7, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->c:Z

    new-array v1, v2, [F

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->g:[F

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->f:[F

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->f:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->J:Lcom/ievyhrdnoniovof/AdSensorController;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->f:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdSensorController;->onHeadingChange(F)V

    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v8, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->j:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iput v7, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->A:I

    :cond_1
    iget-wide v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->F:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-wide v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->F:J

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v5, v5, v7

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v6, v6, v9

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->L:[F

    aget v6, v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->L:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->L:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v3, v3

    div-float v3, v5, v3

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->A:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->A:I

    if-lt v3, v9, :cond_2

    iget-wide v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->G:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->G:J

    iput v7, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->A:I

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->J:Lcom/ievyhrdnoniovof/AdSensorController;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdSensorController;->onShake()V

    :cond_2
    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->j:J

    :cond_3
    iput-wide v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->F:J

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->J:Lcom/ievyhrdnoniovof/AdSensorController;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    aget v4, v4, v9

    invoke-virtual {v1, v2, v3, v4}, Lcom/ievyhrdnoniovof/AdSensorController;->onTilt(FFF)V

    :cond_4
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->g:[F

    iput-boolean v8, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->c:Z

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    goto/16 :goto_1

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAccelListener;
    :pswitch_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->L:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->H:[F

    iput-boolean v8, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->m:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSensorDelay(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->K:I

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stop()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->A()V

    :cond_1
    return-void
.end method

.method public startTrackingHeading()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->l()V

    :cond_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    return-void
.end method

.method public startTrackingShake()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->setSensorDelay(I)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->A()V

    :cond_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    return-void
.end method

.method public startTrackingTilt()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->A()V

    :cond_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->l:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    :try_start_0
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrackingHeading()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->B:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stop()V

    :cond_0
    return-void
.end method

.method public stopTrackingShake()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->setSensorDelay(I)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stop()V

    :cond_0
    return-void
.end method

.method public stopTrackingTilt()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdAccelListener;->M:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stop()V

    :cond_0
    return-void
.end method
