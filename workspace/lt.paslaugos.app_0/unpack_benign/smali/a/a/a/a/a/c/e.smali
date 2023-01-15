.class public final enum La/a/a/a/a/c/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/a/a/c/e;

.field public static final enum b:La/a/a/a/a/c/e;

.field public static final enum c:La/a/a/a/a/c/e;

.field public static final enum d:La/a/a/a/a/c/e;

.field private static final synthetic e:[La/a/a/a/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, La/a/a/a/a/c/e;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/e;->a:La/a/a/a/a/c/e;

    new-instance v0, La/a/a/a/a/c/e;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/a/a/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/e;->b:La/a/a/a/a/c/e;

    new-instance v0, La/a/a/a/a/c/e;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, La/a/a/a/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/e;->c:La/a/a/a/a/c/e;

    new-instance v0, La/a/a/a/a/c/e;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, La/a/a/a/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/e;->d:La/a/a/a/a/c/e;

    const/4 v0, 0x4

    new-array v0, v0, [La/a/a/a/a/c/e;

    sget-object v1, La/a/a/a/a/c/e;->a:La/a/a/a/a/c/e;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/c/e;->b:La/a/a/a/a/c/e;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/a/a/c/e;->c:La/a/a/a/a/c/e;

    aput-object v1, v0, v4

    sget-object v1, La/a/a/a/a/c/e;->d:La/a/a/a/a/c/e;

    aput-object v1, v0, v5

    sput-object v0, La/a/a/a/a/c/e;->e:[La/a/a/a/a/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(La/a/a/a/a/c/i;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "La/a/a/a/a/c/i;",
            "TY;)I"
        }
    .end annotation

    instance-of v0, p1, La/a/a/a/a/c/i;

    if-eqz v0, :cond_0

    check-cast p1, La/a/a/a/a/c/i;

    invoke-interface {p1}, La/a/a/a/a/c/i;->b()La/a/a/a/a/c/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, La/a/a/a/a/c/e;->b:La/a/a/a/a/c/e;

    :goto_0
    invoke-virtual {p1}, La/a/a/a/a/c/e;->ordinal()I

    move-result p1

    invoke-interface {p0}, La/a/a/a/a/c/i;->b()La/a/a/a/a/c/e;

    move-result-object p0

    invoke-virtual {p0}, La/a/a/a/a/c/e;->ordinal()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/c/e;
    .locals 1

    const-class v0, La/a/a/a/a/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/c/e;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/c/e;
    .locals 1

    sget-object v0, La/a/a/a/a/c/e;->e:[La/a/a/a/a/c/e;

    invoke-virtual {v0}, [La/a/a/a/a/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/c/e;

    return-object v0
.end method
