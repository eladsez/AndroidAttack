.class final enum Lnet/youmi/android/bm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnet/youmi/android/bm;

.field public static final enum b:Lnet/youmi/android/bm;

.field public static final enum c:Lnet/youmi/android/bm;

.field private static final synthetic d:[Lnet/youmi/android/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/youmi/android/bm;

    const-string v1, "OpenWithBrower"

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    new-instance v0, Lnet/youmi/android/bm;

    const-string v1, "OpenWithPopupBox"

    invoke-direct {v0, v1, v3}, Lnet/youmi/android/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/bm;->b:Lnet/youmi/android/bm;

    new-instance v0, Lnet/youmi/android/bm;

    const-string v1, "OpenWithImage"

    invoke-direct {v0, v1, v4}, Lnet/youmi/android/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/youmi/android/bm;->c:Lnet/youmi/android/bm;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/youmi/android/bm;

    sget-object v1, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    aput-object v1, v0, v2

    sget-object v1, Lnet/youmi/android/bm;->b:Lnet/youmi/android/bm;

    aput-object v1, v0, v3

    sget-object v1, Lnet/youmi/android/bm;->c:Lnet/youmi/android/bm;

    aput-object v1, v0, v4

    sput-object v0, Lnet/youmi/android/bm;->d:[Lnet/youmi/android/bm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/youmi/android/bm;
    .locals 1

    const-class v0, Lnet/youmi/android/bm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/bm;

    return-object p0
.end method

.method public static values()[Lnet/youmi/android/bm;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lnet/youmi/android/bm;->d:[Lnet/youmi/android/bm;

    array-length v1, v0

    new-array v2, v1, [Lnet/youmi/android/bm;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
