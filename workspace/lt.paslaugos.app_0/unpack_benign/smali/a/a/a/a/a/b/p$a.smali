.class public final enum La/a/a/a/a/b/p$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/b/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/a/a/b/p$a;

.field public static final enum b:La/a/a/a/a/b/p$a;

.field public static final enum c:La/a/a/a/a/b/p$a;

.field public static final enum d:La/a/a/a/a/b/p$a;

.field public static final enum e:La/a/a/a/a/b/p$a;

.field public static final enum f:La/a/a/a/a/b/p$a;

.field public static final enum g:La/a/a/a/a/b/p$a;

.field private static final synthetic i:[La/a/a/a/a/b/p$a;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "WIFI_MAC_ADDRESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->a:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->b:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "FONT_TOKEN"

    const/16 v5, 0x35

    invoke-direct {v0, v1, v4, v5}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->c:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "ANDROID_ID"

    const/4 v5, 0x3

    const/16 v6, 0x64

    invoke-direct {v0, v1, v5, v6}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->d:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "ANDROID_DEVICE_ID"

    const/4 v6, 0x4

    const/16 v7, 0x65

    invoke-direct {v0, v1, v6, v7}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->e:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "ANDROID_SERIAL"

    const/4 v7, 0x5

    const/16 v8, 0x66

    invoke-direct {v0, v1, v7, v8}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->f:La/a/a/a/a/b/p$a;

    new-instance v0, La/a/a/a/a/b/p$a;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v8, 0x6

    const/16 v9, 0x67

    invoke-direct {v0, v1, v8, v9}, La/a/a/a/a/b/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/p$a;->g:La/a/a/a/a/b/p$a;

    const/4 v0, 0x7

    new-array v0, v0, [La/a/a/a/a/b/p$a;

    sget-object v1, La/a/a/a/a/b/p$a;->a:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/b/p$a;->b:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/a/a/b/p$a;->c:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v4

    sget-object v1, La/a/a/a/a/b/p$a;->d:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v5

    sget-object v1, La/a/a/a/a/b/p$a;->e:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v6

    sget-object v1, La/a/a/a/a/b/p$a;->f:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v7

    sget-object v1, La/a/a/a/a/b/p$a;->g:La/a/a/a/a/b/p$a;

    aput-object v1, v0, v8

    sput-object v0, La/a/a/a/a/b/p$a;->i:[La/a/a/a/a/b/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La/a/a/a/a/b/p$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/b/p$a;
    .locals 1

    const-class v0, La/a/a/a/a/b/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/b/p$a;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/b/p$a;
    .locals 1

    sget-object v0, La/a/a/a/a/b/p$a;->i:[La/a/a/a/a/b/p$a;

    invoke-virtual {v0}, [La/a/a/a/a/b/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/b/p$a;

    return-object v0
.end method
