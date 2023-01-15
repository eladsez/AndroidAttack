.class public final Lcom/google/android/gms/internal/e/y;
.super Lcom/google/android/gms/common/internal/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/e/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/internal/e/fl;

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/internal/e/an;

.field public h:J

.field public i:Lcom/google/android/gms/internal/e/an;

.field public j:J

.field public k:Lcom/google/android/gms/internal/e/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/e/z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/e/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/e/y;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/e/y;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-wide v0, p1, Lcom/google/android/gms/internal/e/y;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/y;->d:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/e/y;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/y;->e:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    iget-wide v0, p1, Lcom/google/android/gms/internal/e/y;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/y;->h:J

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iget-wide v0, p1, Lcom/google/android/gms/internal/e/y;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/y;->j:J

    iget-object p1, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    iput-object p1, p0, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/e/fl;JZLjava/lang/String;Lcom/google/android/gms/internal/e/an;JLcom/google/android/gms/internal/e/an;JLcom/google/android/gms/internal/e/an;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iput-wide p4, p0, Lcom/google/android/gms/internal/e/y;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/e/y;->e:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    iput-wide p9, p0, Lcom/google/android/gms/internal/e/y;->h:J

    iput-object p11, p0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iput-wide p12, p0, Lcom/google/android/gms/internal/e/y;->j:J

    iput-object p14, p0, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/e/y;->d:J

    const/4 v1, 0x5

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/e/y;->e:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/e/y;->h:J

    const/16 v1, 0x9

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/e/y;->j:J

    const/16 v1, 0xb

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a/c;->a(Landroid/os/Parcel;I)V

    return-void
.end method
