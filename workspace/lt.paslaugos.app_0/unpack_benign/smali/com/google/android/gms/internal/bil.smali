.class public Lcom/google/android/gms/internal/bil;
.super Lcom/google/android/gms/internal/aik;

# interfaces
.implements Lcom/google/android/gms/internal/bik;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bik;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/bik;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/bik;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/bim;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bim;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
