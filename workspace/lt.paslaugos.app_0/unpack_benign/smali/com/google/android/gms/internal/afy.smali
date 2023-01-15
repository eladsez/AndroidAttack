.class final Lcom/google/android/gms/internal/afy;
.super Lcom/google/android/gms/internal/afz;


# direct methods
.method constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/afz;-><init>([BI)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method final a([BI)[I
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    sget-object v1, Lcom/google/android/gms/internal/ahc;->a:[I

    sget-object v2, Lcom/google/android/gms/internal/afz;->a:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/afy;->b:Lcom/google/android/gms/internal/agx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/agx;->a()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/afz;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x4

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    aput p2, v0, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/afy;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    const/16 p2, 0xd

    const/4 v1, 0x3

    invoke-static {p1, v3, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
