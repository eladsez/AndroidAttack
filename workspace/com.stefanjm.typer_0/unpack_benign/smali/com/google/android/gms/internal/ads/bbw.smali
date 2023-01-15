.class public final Lcom/google/android/gms/internal/ads/bbw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/bbv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bbv<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/nio/charset/Charset;

.field private static final c:Lcom/google/android/gms/internal/ads/bbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bbw;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/ads/bby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbw;->a:Lcom/google/android/gms/internal/ads/bbv;

    sget-object v0, Lcom/google/android/gms/internal/ads/bbx;->a:Lcom/google/android/gms/internal/ads/bbt;

    sput-object v0, Lcom/google/android/gms/internal/ads/bbw;->c:Lcom/google/android/gms/internal/ads/bbt;

    return-void
.end method

.method static final synthetic a(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/bbw;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
