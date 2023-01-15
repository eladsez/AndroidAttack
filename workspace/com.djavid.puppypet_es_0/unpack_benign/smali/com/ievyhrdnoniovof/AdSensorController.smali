.class public Lcom/ievyhrdnoniovof/AdSensorController;
.super Lcom/ievyhrdnoniovof/AdController;


# static fields
.field private static final synthetic H:Ljava/lang/String; = "AdOrmmaSensorController"


# instance fields
.field private synthetic E:F

.field private synthetic M:Lcom/ievyhrdnoniovof/AdAccelListener;

.field final k:I

.field private synthetic l:F

.field private synthetic m:F


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 2
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->k:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->E:F

    iput v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->m:F

    iput v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->l:F

    new-instance v0, Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-direct {v0, p2, p0}, Lcom/ievyhrdnoniovof/AdAccelListener;-><init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdSensorController;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 4

    .prologue
    const-string v0, "AdOrmmaSensorController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u007fulX}q|yvw\"0"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v2}, Lcom/ievyhrdnoniovof/AdAccelListener;->getHeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->getHeading()F

    move-result v0

    return v0
.end method

.method public getTilt()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k8h8*82"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->E:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G\u0017EBE\u0001E\u0019"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":<8j8*82"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GF"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdOrmmaSensorController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w}dLytd\"0"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method l()V
    .locals 0

    return-void
.end method

.method public onHeadingChange(F)V
    .locals 5
    .param p1, "arg0"    # F

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "oyvtwg6\u007fj}uqny}g6vqb}Spqvw}Unuvd0k8x}q|yvw\"0"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, p1

    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FL\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdOrmmaSensorController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onShake()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v1, "*I\u0008V\u0004\u0015\u0002T\u0011h\rZ\u000e^M\u0012"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onTilt(FFF)V
    .locals 3
    .param p1, "arg0"    # F
    .param p2, "arg1"    # F
    .param p3, "arg2"    # F

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->E:F

    iput p2, p0, Lcom/ievyhrdnoniovof/AdSensorController;->m:F

    iput p3, p0, Lcom/ievyhrdnoniovof/AdSensorController;->l:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "L\u000cU\u0001T\u0012\u0015\nI\u0008V\u0004M\u000c^\u0012\u0015\u0003R\u0017^&S\u0004U\u0002^ M\u0000U\u0011\u0013\u001e\u001b\u0011R\tO_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdSensorController;->getTilt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "e9"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdOrmmaSensorController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdSensorController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startHeadingListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->startTrackingHeading()V

    return-void
.end method

.method public startShakeListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->startTrackingShake()V

    return-void
.end method

.method public startTiltListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->startTrackingTilt()V

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stopAllListeners()V

    return-void
.end method

.method public stopHeadingListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stopTrackingHeading()V

    return-void
.end method

.method public stopShakeListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stopTrackingShake()V

    return-void
.end method

.method public stopTiltListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdSensorController;->M:Lcom/ievyhrdnoniovof/AdAccelListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdAccelListener;->stopTrackingTilt()V

    return-void
.end method
