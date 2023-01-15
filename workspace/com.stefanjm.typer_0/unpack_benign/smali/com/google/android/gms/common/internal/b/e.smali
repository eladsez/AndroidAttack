.class public Lcom/google/android/gms/common/internal/b/e;
.super Lcom/google/android/gms/common/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n<",
        "Lcom/google/android/gms/common/internal/b/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/b/e;->b(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/b/g;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b/g$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method

.method public f()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->f()I

    move-result v0

    return v0
.end method

.method public k_()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method
