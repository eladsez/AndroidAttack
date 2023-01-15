.class Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdLocListener"
.end annotation


# instance fields
.field private synthetic M:Ljava/lang/String;

.field k:Lcom/ievyhrdnoniovof/AdLocationController;

.field final synthetic l:Lcom/ievyhrdnoniovof/AdLocationController;

.field private synthetic m:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdLocationController;Landroid/content/Context;ILcom/ievyhrdnoniovof/AdLocationController;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdLocationController;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Lcom/ievyhrdnoniovof/AdLocationController;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    const-string v0, "K>D0S8H?"

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->l:Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->k:Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->m:Landroid/location/LocationManager;

    iput-object p5, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->M:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "arg0"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->k:Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-virtual {v0, p1}, Lcom/ievyhrdnoniovof/AdLocationController;->success(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->k:Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController;->fail()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->k:Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdLocationController;->fail()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->m:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->M:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdLocationController$AdLocListener;->m:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
