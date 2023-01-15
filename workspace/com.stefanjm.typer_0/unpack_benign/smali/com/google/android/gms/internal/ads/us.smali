.class public final Lcom/google/android/gms/internal/ads/us;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ts;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/xk;

.field private final c:Lcom/google/android/gms/internal/ads/ts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/us;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/xk;Lcom/google/android/gms/internal/ads/ts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/us;->b:Lcom/google/android/gms/internal/ads/xk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/us;->c:Lcom/google/android/gms/internal/ads/ts;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us;->b:Lcom/google/android/gms/internal/ads/xk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ui;->b(Lcom/google/android/gms/internal/ads/xk;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/acx;->i()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/us;->c:Lcom/google/android/gms/internal/ads/ts;

    sget-object v2, Lcom/google/android/gms/internal/ads/us;->a:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ts;->a([B[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/us;->b:Lcom/google/android/gms/internal/ads/xk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ts;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ts;->a([B[B)[B

    move-result-object p1

    const/4 p2, 0x4

    array-length v0, v1

    add-int/2addr p2, v0

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
