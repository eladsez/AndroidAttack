.class public Lcom/google/android/gms/common/internal/l;
.super Lcom/google/android/gms/common/internal/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/os/IBinder;

.field private f:[Lcom/google/android/gms/common/api/Scope;

.field private g:Landroid/os/Bundle;

.field private h:Landroid/accounts/Account;

.field private i:[Lcom/google/android/gms/common/e;

.field private j:[Lcom/google/android/gms/common/e;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/internal/l;->a:I

    sget v0, Lcom/google/android/gms/common/h;->b:I

    iput v0, p0, Lcom/google/android/gms/common/internal/l;->c:I

    iput p1, p0, Lcom/google/android/gms/common/internal/l;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/l;->k:Z

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/e;[Lcom/google/android/gms/common/e;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/l;->a:I

    iput p2, p0, Lcom/google/android/gms/common/internal/l;->b:I

    iput p3, p0, Lcom/google/android/gms/common/internal/l;->c:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.google.android.gms"

    iput-object p2, p0, Lcom/google/android/gms/common/internal/l;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/common/internal/l;->d:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    invoke-static {p5}, Lcom/google/android/gms/common/internal/l;->a(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->h:Landroid/accounts/Account;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/common/internal/l;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/l;->h:Landroid/accounts/Account;

    :goto_1
    iput-object p6, p0, Lcom/google/android/gms/common/internal/l;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/l;->g:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/common/internal/l;->i:[Lcom/google/android/gms/common/e;

    iput-object p10, p0, Lcom/google/android/gms/common/internal/l;->j:[Lcom/google/android/gms/common/e;

    iput-boolean p11, p0, Lcom/google/android/gms/common/internal/l;->k:Z

    return-void
.end method

.method private static a(Landroid/os/IBinder;)Landroid/accounts/Account;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/a;->a(Lcom/google/android/gms/common/internal/u;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->h:Landroid/accounts/Account;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->e:Landroid/os/IBinder;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/l;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/api/Scope;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->f:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public a([Lcom/google/android/gms/common/e;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->i:[Lcom/google/android/gms/common/e;

    return-object p0
.end method

.method public b([Lcom/google/android/gms/common/e;)Lcom/google/android/gms/common/internal/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->j:[Lcom/google/android/gms/common/e;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/l;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/l;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/l;->c:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->e:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->f:[Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->g:Landroid/os/Bundle;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->h:Landroid/accounts/Account;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->i:[Lcom/google/android/gms/common/e;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->j:[Lcom/google/android/gms/common/e;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/l;->k:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I)V

    return-void
.end method
