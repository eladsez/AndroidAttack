.class public Lcom/google/android/gms/c/a/f$a$a;
.super Lcom/google/android/gms/internal/f/a;

# interfaces
.implements Lcom/google/android/gms/c/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/a/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/a/m;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;Lcom/google/android/gms/c/a/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/a;->d()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/f/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
