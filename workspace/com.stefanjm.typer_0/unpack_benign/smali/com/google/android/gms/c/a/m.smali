.class public Lcom/google/android/gms/c/a/m;
.super Lcom/google/android/gms/common/internal/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/c/a/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/b;

.field private final c:Lcom/google/android/gms/common/internal/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/a/n;

    invoke-direct {v0}, Lcom/google/android/gms/c/a/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/a/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/c/a/m;-><init>(Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ag;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ag;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/a/m;->a:I

    iput-object p2, p0, Lcom/google/android/gms/c/a/m;->b:Lcom/google/android/gms/common/b;

    iput-object p3, p0, Lcom/google/android/gms/c/a/m;->c:Lcom/google/android/gms/common/internal/ag;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ag;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/c/a/m;-><init>(ILcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ag;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/a/m;->b:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/internal/ag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/a/m;->c:Lcom/google/android/gms/common/internal/ag;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/c/a/m;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/a/m;->a()Lcom/google/android/gms/common/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/a/m;->b()Lcom/google/android/gms/common/internal/ag;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I)V

    return-void
.end method
