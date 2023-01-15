.class public final Lcom/google/android/gms/internal/ads/aqa;
.super Lcom/google/android/gms/internal/ads/ajl;

# interfaces
.implements Lcom/google/android/gms/internal/ads/apy;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final E()Lcom/google/android/gms/internal/ads/aqh;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/aqh;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/ads/aqh;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/aqj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/aqj;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final F()Lcom/google/android/gms/internal/ads/apn;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/apn;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/ads/apn;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/app;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/app;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final I()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/af;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apk;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apn;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqd;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqh;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqn;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/arb;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/asa;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/atl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gn;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/y;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aoq;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public final c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x22

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k()Lcom/google/android/gms/b/a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final l()Lcom/google/android/gms/internal/ads/aou;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aou;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final q()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final s()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final t()Lcom/google/android/gms/internal/ads/aqv;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/aqv;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/ads/aqv;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/aqx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/aqx;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final u_()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajl;->v_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ajl;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
