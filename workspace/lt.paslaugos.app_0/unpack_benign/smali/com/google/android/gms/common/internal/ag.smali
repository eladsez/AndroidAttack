.class public final Lcom/google/android/gms/common/internal/ag;
.super Lcom/google/android/gms/internal/rg;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Landroid/os/IBinder;

.field private c:Lcom/google/android/gms/common/a;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/ah;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rg;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ag;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ag;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ag;->c:Lcom/google/android/gms/common/a;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/ag;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/ag;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/internal/l;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ag;->b:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/common/internal/l;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/common/internal/l;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public final b()Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ag;->c:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/internal/ag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/ag;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ag;->c:Lcom/google/android/gms/common/a;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/ag;->c:Lcom/google/android/gms/common/a;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ag;->a()Lcom/google/android/gms/common/internal/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ag;->a()Lcom/google/android/gms/common/internal/l;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/ag;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ag;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ag;->c:Lcom/google/android/gms/common/a;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/ag;->d:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/ag;->e:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I)V

    return-void
.end method
