.class public final enum La/a/a/a/a/b/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/a/a/b/l;

.field public static final enum b:La/a/a/a/a/b/l;

.field public static final enum c:La/a/a/a/a/b/l;

.field public static final enum d:La/a/a/a/a/b/l;

.field private static final synthetic f:[La/a/a/a/a/b/l;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, La/a/a/a/a/b/l;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/a/a/a/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/l;->a:La/a/a/a/a/b/l;

    new-instance v0, La/a/a/a/a/b/l;

    const-string v1, "USER_SIDELOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, La/a/a/a/a/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/l;->b:La/a/a/a/a/b/l;

    new-instance v0, La/a/a/a/a/b/l;

    const-string v1, "TEST_DISTRIBUTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, La/a/a/a/a/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/l;->c:La/a/a/a/a/b/l;

    new-instance v0, La/a/a/a/a/b/l;

    const-string v1, "APP_STORE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, La/a/a/a/a/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/a/a/a/b/l;->d:La/a/a/a/a/b/l;

    new-array v0, v6, [La/a/a/a/a/b/l;

    sget-object v1, La/a/a/a/a/b/l;->a:La/a/a/a/a/b/l;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/b/l;->b:La/a/a/a/a/b/l;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/a/a/b/l;->c:La/a/a/a/a/b/l;

    aput-object v1, v0, v4

    sget-object v1, La/a/a/a/a/b/l;->d:La/a/a/a/a/b/l;

    aput-object v1, v0, v5

    sput-object v0, La/a/a/a/a/b/l;->f:[La/a/a/a/a/b/l;

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

    iput p3, p0, La/a/a/a/a/b/l;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)La/a/a/a/a/b/l;
    .locals 1

    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, La/a/a/a/a/b/l;->c:La/a/a/a/a/b/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, La/a/a/a/a/b/l;->d:La/a/a/a/a/b/l;

    return-object p0

    :cond_1
    sget-object p0, La/a/a/a/a/b/l;->a:La/a/a/a/a/b/l;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/b/l;
    .locals 1

    const-class v0, La/a/a/a/a/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/b/l;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/b/l;
    .locals 1

    sget-object v0, La/a/a/a/a/b/l;->f:[La/a/a/a/a/b/l;

    invoke-virtual {v0}, [La/a/a/a/a/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/b/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/a/a/a/a/b/l;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, La/a/a/a/a/b/l;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
