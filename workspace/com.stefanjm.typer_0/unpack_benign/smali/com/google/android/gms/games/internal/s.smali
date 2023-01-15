.class public final Lcom/google/android/gms/games/internal/s;
.super Lcom/google/android/gms/internal/d/a;

# interfaces
.implements Lcom/google/android/gms/games/internal/r;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x4651

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/d/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final a(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1389

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x138d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/games/internal/n;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x138a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/games/internal/n;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x1b5a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/games/internal/p;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/d/k;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x3c8d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d/a;->c()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138e

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/d/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
