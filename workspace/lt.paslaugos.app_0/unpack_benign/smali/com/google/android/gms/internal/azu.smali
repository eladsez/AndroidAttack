.class public final Lcom/google/android/gms/internal/azu;
.super Lcom/google/android/gms/internal/rg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/azu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/axc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/azv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/azv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/azu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/axc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rg;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/azu;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/azu;->b:Z

    iput p3, p0, Lcom/google/android/gms/internal/azu;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/azu;->d:Z

    iput p5, p0, Lcom/google/android/gms/internal/azu;->e:I

    iput-object p6, p0, Lcom/google/android/gms/internal/azu;->f:Lcom/google/android/gms/internal/axc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/b/d;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->c()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->d()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->e()Lcom/google/android/gms/ads/j;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/axc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->e()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/axc;-><init>(Lcom/google/android/gms/ads/j;)V

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v6, p1

    :goto_0
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/azu;-><init>(IZIZILcom/google/android/gms/internal/axc;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/azu;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/azu;->b:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/azu;->c:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/azu;->d:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/azu;->e:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/azu;->f:Lcom/google/android/gms/internal/axc;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I)V

    return-void
.end method
