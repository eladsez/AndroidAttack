.class public Lcom/google/android/gms/common/internal/b/g$a$a;
.super Lcom/google/android/gms/internal/f/a;

# interfaces
.implements Lcom/google/android/gms/common/internal/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/b/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/b/f;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->c(ILandroid/os/Parcel;)V

    return-void
.end method
