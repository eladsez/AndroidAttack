.class public final Lcom/google/android/gms/internal/axa;
.super Lcom/google/android/gms/internal/auh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auh;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/auh;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/auh;->c:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/auh;->d:Z

    iget v5, p1, Lcom/google/android/gms/internal/auh;->e:I

    iget v6, p1, Lcom/google/android/gms/internal/auh;->f:I

    iget-object v7, p1, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/auh;->h:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/auh;->i:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/auh;->j:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/auh;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/auh;ZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/axa;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/axa;->b:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/axa;->e:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I)V

    return-void
.end method
