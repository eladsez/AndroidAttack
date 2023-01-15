.class public abstract Lcom/google/android/gms/common/internal/aa$a;
.super Lcom/google/android/gms/internal/f/b;

# interfaces
.implements Lcom/google/android/gms/common/internal/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/aa$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/aa;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IResolveAccountCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/aa;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/aa;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/aa$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/aa$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    sget-object p1, Lcom/google/android/gms/common/internal/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/aa$a;->a(Lcom/google/android/gms/common/internal/ag;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
