.class public final Lcom/google/android/gms/internal/bce;
.super Lcom/google/android/gms/b/d;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/b/d<",
        "Lcom/google/android/gms/internal/bas;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/bas;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/bas;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/bat;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bat;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
