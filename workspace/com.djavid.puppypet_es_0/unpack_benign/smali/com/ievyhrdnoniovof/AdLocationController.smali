.class public Lcom/ievyhrdnoniovof/AdLocationController;
.super Lcom/ievyhrdnoniovof/AdController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;
    }
.end annotation


# static fields
.field private static final synthetic l:Ljava/lang/String; = "AdLocationController"


# instance fields
.field private synthetic E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

.field final H:I

.field private synthetic M:Z

.field private synthetic d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

.field private synthetic g:I

.field private synthetic k:Landroid/location/LocationManager;

.field private synthetic m:Z


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 6
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdLocationController;->m:Z

    iput v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->H:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdLocationController;->M:Z

    :try_start_0
    const-string v0, "t\u007f{qlyw~"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->k:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->k:Landroid/location/LocationManager;

    const-string v1, "5\u0019!"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    const/16 v3, 0x3e8

    const-string v1, "whc"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;-><init>(Lcom/ievyhrdnoniovof/AdLocationController;Landroid/content/Context;ILcom/ievyhrdnoniovof/AdLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->k:Landroid/location/LocationManager;

    const-string v1, "<\u000c&\u001e=\u001b9"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    const/16 v3, 0x3e8

    const-string v1, "~}do\u007fj{"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;-><init>(Lcom/ievyhrdnoniovof/AdLocationController;Landroid/content/Context;ILcom/ievyhrdnoniovof/AdLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->m:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static synthetic l(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # Landroid/location/Location;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "k8|yd\"0"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~I>\u0006<Sr"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<8q{s\"0"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdLocationController;->M:Z

    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->M:Z

    return v0
.end method

.method public fail()V
    .locals 2

    .prologue
    const-string v0, "AdLocationController"

    const-string v1, "T\u007f{qlyw~8sy~?d8r}0|uluj}q~}t"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdView;

    const-string v1, "%\u0000<\r=\u001e|\u0006 \u0004?\u0008$\u00007\u001e|\u000f;\u001b7, \u001b=\u001b\u0017\u001f7\u0007&Ap%=\n3\u001d;\u0006<I1\u0008<\u0007=\u001dr\u000b7I;\r7\u0007&\u00004\u00007\rpErK\u0013\r\u001d\u001b?\u00043%=\n3\u001d;\u0006<*=\u0007&\u001b=\u0005>\u000c K{"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "AdLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u007ful\\wsydq\u007fv*8xycHuj}qckyw~\"0"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ievyhrdnoniovof/AdLocationController;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->k:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdLocationController;->k:Landroid/location/LocationManager;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_3
    const-string v2, "AdLocationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5\u000c&%=\n3\u001d;\u0006<Sr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdLocationController;->l(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->start()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->start()V

    :cond_1
    iget v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    iget v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController;->E:Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->stop()V

    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 3
    .param p1, "arg0"    # Landroid/location/Location;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "%\u0000<\r=\u001e|\u0006 \u0004?\u0008$\u00007\u001e|\u000f;\u001b7*:\u0008<\u000e7,$\u000c<\u001dz\u0012r\u0005=\n3\u001d;\u0006<Sr"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ievyhrdnoniovof/AdLocationController;->l(Landroid/location/Location;)Ljava/lang/String;

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

    const-string v1, "AdLocationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdLocationController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method
