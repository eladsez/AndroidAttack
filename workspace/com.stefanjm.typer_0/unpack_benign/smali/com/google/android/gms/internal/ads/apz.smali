.class public abstract Lcom/google/android/gms/internal/ads/apz;
.super Lcom/google/android/gms/internal/ads/ajm;

# interfaces
.implements Lcom/google/android/gms/internal/ads/apy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ajm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/apy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/apy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/apy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aqa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aqa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->q()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/aqd;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/aqd;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/aqf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/aqf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/aqd;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->u_()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->c(Z)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->F()Lcom/google/android/gms/internal/ads/apn;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->E()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->D()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/arb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/arb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/arb;)V

    goto/16 :goto_8

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/internal/ads/asa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/asa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/asa;)V

    goto/16 :goto_8

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->t()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/go;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/gn;)V

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->s()Z

    move-result p1

    goto/16 :goto_7

    :pswitch_e
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->b(Z)V

    goto/16 :goto_8

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/aqn;

    if-eqz p4, :cond_3

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/aqn;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/aqp;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/aqp;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/aqn;)V

    goto/16 :goto_8

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/apk;

    if-eqz p4, :cond_5

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/apk;

    goto :goto_2

    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/apm;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/apm;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/apk;)V

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/atm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/atl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/atl;)V

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->a()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/af;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/af;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/y;)V

    goto/16 :goto_8

    :pswitch_15
    sget-object p1, Lcom/google/android/gms/internal/ads/aou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aou;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/aou;)V

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->l()Lcom/google/android/gms/internal/ads/aou;

    move-result-object p1

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ajn;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->n()V

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->r()V

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->I()V

    goto :goto_8

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/aqh;

    if-eqz p4, :cond_7

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/aqh;

    goto :goto_5

    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/ads/aqj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/aqj;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    goto :goto_8

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/apn;

    if-eqz p4, :cond_9

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/apn;

    goto :goto_6

    :cond_9
    new-instance p4, Lcom/google/android/gms/internal/ads/app;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/app;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/apz;->a(Lcom/google/android/gms/internal/ads/apn;)V

    goto :goto_8

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->p()V

    goto :goto_8

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->o()V

    goto :goto_8

    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/internal/ads/aoq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aoq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/apz;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    goto :goto_7

    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->m()Z

    move-result p1

    :goto_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Z)V

    goto :goto_a

    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->j()V

    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/apz;->k()Lcom/google/android/gms/b/a;

    move-result-object p1

    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_a
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
