.class public abstract Lcom/google/android/gms/internal/ads/du;
.super Lcom/google/android/gms/internal/ads/ajm;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dt;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ajm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/ee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ee;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/dz;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/google/android/gms/internal/ads/dz;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/ea;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/du;->b(Lcom/google/android/gms/internal/ads/ee;Lcom/google/android/gms/internal/ads/dz;)V

    goto :goto_3

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/ee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ee;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/dz;

    if-eqz v0, :cond_3

    check-cast p4, Lcom/google/android/gms/internal/ads/dz;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/ea;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/du;->a(Lcom/google/android/gms/internal/ads/ee;Lcom/google/android/gms/internal/ads/dz;)V

    goto :goto_3

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dl;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string p4, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/dw;

    if-eqz v0, :cond_5

    check-cast p4, Lcom/google/android/gms/internal/ads/dw;

    goto :goto_2

    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/dy;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/dy;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/du;->a(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dw;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/ads/dl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ajn;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/du;->a(Lcom/google/android/gms/internal/ads/dl;)Lcom/google/android/gms/internal/ads/dp;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ajn;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
