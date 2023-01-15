.class public final Lcom/google/android/gms/internal/e/p;
.super Lcom/google/android/gms/internal/e/gh;

# interfaces
.implements Lcom/google/android/gms/internal/e/n;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.iid.IMessengerCompat"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/gh;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/gh;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/gj;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/gh;->c(ILandroid/os/Parcel;)V

    return-void
.end method
