.class final enum Lnet/youmi/android/ad;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnet/youmi/android/ad;

.field public static final enum b:Lnet/youmi/android/ad;

.field public static final enum c:Lnet/youmi/android/ad;

.field public static final enum d:Lnet/youmi/android/ad;

.field private static final synthetic e:[Lnet/youmi/android/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/youmi/android/ad;

    const-string v1, "TextAd"

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    new-instance v0, Lnet/youmi/android/ad;

    const-string v1, "ImageAd"

    invoke-direct {v0, v1, v3}, Lnet/youmi/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/ad;->b:Lnet/youmi/android/ad;

    new-instance v0, Lnet/youmi/android/ad;

    const-string v1, "IconAd"

    invoke-direct {v0, v1, v4}, Lnet/youmi/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/ad;->c:Lnet/youmi/android/ad;

    new-instance v0, Lnet/youmi/android/ad;

    const-string v1, "GifAd"

    invoke-direct {v0, v1, v5}, Lnet/youmi/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/ad;->d:Lnet/youmi/android/ad;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/youmi/android/ad;

    sget-object v1, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    aput-object v1, v0, v2

    sget-object v1, Lnet/youmi/android/ad;->b:Lnet/youmi/android/ad;

    aput-object v1, v0, v3

    sget-object v1, Lnet/youmi/android/ad;->c:Lnet/youmi/android/ad;

    aput-object v1, v0, v4

    sget-object v1, Lnet/youmi/android/ad;->d:Lnet/youmi/android/ad;

    aput-object v1, v0, v5

    sput-object v0, Lnet/youmi/android/ad;->e:[Lnet/youmi/android/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/youmi/android/ad;
    .locals 1

    const-class v0, Lnet/youmi/android/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/ad;

    return-object p0
.end method

.method public static values()[Lnet/youmi/android/ad;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lnet/youmi/android/ad;->e:[Lnet/youmi/android/ad;

    array-length v1, v0

    new-array v2, v1, [Lnet/youmi/android/ad;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
