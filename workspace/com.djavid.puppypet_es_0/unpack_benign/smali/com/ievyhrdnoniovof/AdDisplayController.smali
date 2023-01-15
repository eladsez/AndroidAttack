.class public Lcom/ievyhrdnoniovof/AdDisplayController;
.super Lcom/ievyhrdnoniovof/AdController;


# static fields
.field private static final synthetic E:Ljava/lang/String; = "AdOrmmaDisplayController"


# instance fields
.field private synthetic H:I

.field private synthetic M:F

.field private synthetic d:I

.field private synthetic k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

.field private synthetic l:Z

.field private synthetic m:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 2
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->l:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->H:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "\u0011\u0003\u0008\u000e\t\u001d"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->m:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->m:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    return-void
.end method

.method private synthetic l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Lcom/ievyhrdnoniovof/AdController$Dimensions;
    .locals 3
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$Dimensions;

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    :cond_0
    iget v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->getLocationInWindow([I)V

    iget v1, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    if-gez v1, :cond_2

    aget v1, v0, v2

    iput v1, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    :cond_2
    iget v1, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    if-gez v1, :cond_3

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    :cond_3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "\t\n\u0005\u0015\u000f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->close()V

    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "@E\u0019\u0011T\u0015\u0019E\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GW\u0000]\u0011\u0019E\u0001"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GY\nO\u0011T\u0008\u0019E\u0001"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0019\u0017R\u0002S\u0011\u0019E\u0001"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0000C\u0015Z\u000b__\u001b\u0001R\u0008^\u000bH\u000cT\u000bH_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "F\u001f\u0014\u0006\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b\u0015I\nK\u0000I\u0011R\u0000H_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdDisplayController;->l(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdDisplayController;->l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Lcom/ievyhrdnoniovof/AdController$Dimensions;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/ievyhrdnoniovof/AdController$Properties;

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdDisplayController;->l(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$Properties;

    invoke-virtual {v1, v2, p2, v0}, Lcom/ievyhrdnoniovof/AdView;->expand(Lcom/ievyhrdnoniovof/AdController$Dimensions;Ljava/lang/String;Lcom/ievyhrdnoniovof/AdController$Properties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "\u0011F\u001d\u000f\u000e\u0012\u0002\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "I\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u000e\u000f\u000f\r\u000e\u001e\\J"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->m:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    const/4 v0, -0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const-string v2, "AdOrmmaDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0002^\u0011t\u0017R\u0000U\u0011Z\u0011R\nU_\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->m:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0011F\u001d\u000f\u000e\u0012\u0002\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "I\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u000e\u000f\u000f\r\u000e\u001e\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "\u000e\u0003\u0002\u000f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->hide()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "\u0011\u0003\u0008\u000e\t\u001dH\u0005\u0014\u0007\u000b\u000b\u0010\u0003\u0003\u001dH\u000c\u000f\u0018\u0003)\u000e\u000b\u0008\r\u0003/\u0010\u000f\u0008\u001eN\u0011F\u0005\u0014\u0003\u0003\u0004\u0012\u000b\u0012\u0003\t\u0004\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FL\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdOrmmaDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0005\u0016\u000f\u0008PF\u001f\u0014\u0006\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b\u0007Z\u0006P_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "F\u000c\t\u0018\u0011\u000b\u0014\u000e\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EI\u0000]\u0017^\u0016S_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v1, "#\u0008\u001c\u0007\u0006\u000f\u000eF\u001f\u0014\u0006"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\nK\u0000U"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ievyhrdnoniovof/AdView;->open(Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\t\u001a\u0003\u0004+\u000b\u0016PF\u001f\u0014\u0006\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0, p1, p2}, Lcom/ievyhrdnoniovof/AdView;->openMap(Ljava/lang/String;Z)V

    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Ljava/lang/String;

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0015W\u0004B$N\u0001R\n\u0001EN\u0017W_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "J\u0007\u001f\u0012\u00056\u0006\u0007\u0013\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b\u0006T\u000bO\u0017T\tH_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "J\n\u0005\t\u001a\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b\u0015T\u0016R\u0011R\nU_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "J\u0015\u001e\u0007\u0018\u00129\u0012\u0013\n\u000f\\J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EH\u0011T\u0015h\u0011B\t^_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v1, "#\u0008\u001c\u0007\u0006\u000f\u000eF\u001f\u0014\u0006"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K\tZ\u001cz\u0010_\u000cT"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ievyhrdnoniovof/AdView;->playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # [I
    .param p7, "arg6"    # Ljava/lang/String;
    .param p8, "arg7"    # Ljava/lang/String;

    .prologue
    const-string v1, "AdOrmmaDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u0015W\u0004B3R\u0001^\n\u0001EN\u0017W_\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "J\u0007\u001f\u0002\u0003\t\'\u0013\u001e\u0003\u000e\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u001b\u0004N\u0011T5W\u0004B_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "J\u0005\u0005\u0008\u001e\u0014\u0005\n\u0019\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u001b\tT\nK_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "F\u0012\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EB_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "F\u001d\u000f\u000e\u0012\u0002\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u001b\r^\u000c\\\rO_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "J\u0015\u001e\u0007\u0018\u00129\u0012\u0013\n\u000f\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EH\u0011T\u0015h\u0011B\t^_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const-string v1, ").%<\u000f\u000e\u0003\u00056\u0006\u0007\u0013\u0003\u0018"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "3R\u0001^\n\u001b0i)\u001bH\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget v1, p6, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    invoke-direct {v1}, Lcom/ievyhrdnoniovof/AdController$Dimensions;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, p6, v5

    iput v5, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    aget v4, p6, v4

    iput v4, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    aget v3, p6, v3

    iput v3, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    aget v2, p6, v2

    iput v2, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    invoke-direct {p0, v1}, Lcom/ievyhrdnoniovof/AdDisplayController;->l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Lcom/ievyhrdnoniovof/AdController$Dimensions;

    move-result-object v7

    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v2, "#\u0008\u001c\u0007\u0006\u000f\u000eF\u001f\u0014\u0006"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "K\tZ\u001cm\u000c_\u0000T"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ievyhrdnoniovof/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdView;->playVideo(Ljava/lang/String;ZZZZLcom/ievyhrdnoniovof/AdController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0018\u0003\u0019\u000f\u0010\u0003PF\u001d\u000f\u000e\u0012\u0002\\J"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b\r^\u000c\\\rO_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->H:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->H:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:I

    if-le p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v1, "\'\u0007\u0012\u000f\u0007\u0013\u0007F\u0019\u000f\u0010\u0003J\u0003\u0012\u0005\u000f\u0003\u000e\u0003\u000e"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0017^\u0016R\u001f^"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    iget v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->M:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdView;->resize(II)V

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->l:Z

    iput p1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:I

    iput p2, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->H:I

    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "\u0016S\nL"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->show()V

    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;-><init>(Lcom/ievyhrdnoniovof/AdDisplayController;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->W:Landroid/content/Context;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "\u000b\u0008\u000e\u0014\u0005\u000f\u000eH\u0003\u0008\u001e\u0003\u0004\u0012D\u0007\t\u0012\u0003\t\u0004H))$ #!?4+2#)$9).+(-#."

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdDisplayController;->stopConfigurationListener()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->W:Landroid/content/Context;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdDisplayController;->k:Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
