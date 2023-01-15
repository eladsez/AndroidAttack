.class public Lcom/google/android/gms/c/a/k;
.super Lcom/google/android/gms/common/internal/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/c/a/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/internal/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/a/l;

    invoke-direct {v0}, Lcom/google/android/gms/c/a/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/a/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/internal/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/a/k;->a:I

    iput-object p2, p0, Lcom/google/android/gms/c/a/k;->b:Lcom/google/android/gms/common/internal/ae;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/ae;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/c/a/k;-><init>(ILcom/google/android/gms/common/internal/ae;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/a/k;->b:Lcom/google/android/gms/common/internal/ae;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/c/a/k;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/a/k;->a()Lcom/google/android/gms/common/internal/ae;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I)V

    return-void
.end method
