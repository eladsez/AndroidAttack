.class public final Lcom/google/android/gms/internal/ads/ym;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ty;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/security/interfaces/ECPrivateKey;

.field private final c:Lcom/google/android/gms/internal/ads/yo;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Lcom/google/android/gms/internal/ads/yu;

.field private final g:Lcom/google/android/gms/internal/ads/yl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/ym;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ym;->b:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/yo;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ym;->c:Lcom/google/android/gms/internal/ads/yo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ym;->e:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ym;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ym;->f:Lcom/google/android/gms/internal/ads/yu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ym;->g:Lcom/google/android/gms/internal/ads/yl;

    return-void
.end method
