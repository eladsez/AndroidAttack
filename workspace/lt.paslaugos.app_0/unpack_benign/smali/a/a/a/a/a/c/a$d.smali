.class public final enum La/a/a/a/a/c/a$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/c/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/a/a/c/a$d;

.field public static final enum b:La/a/a/a/a/c/a$d;

.field public static final enum c:La/a/a/a/a/c/a$d;

.field private static final synthetic d:[La/a/a/a/a/c/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, La/a/a/a/a/c/a$d;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/a$d;->a:La/a/a/a/a/c/a$d;

    new-instance v0, La/a/a/a/a/c/a$d;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/a/a/a/c/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/a$d;->b:La/a/a/a/a/c/a$d;

    new-instance v0, La/a/a/a/a/c/a$d;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, La/a/a/a/a/c/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/c/a$d;->c:La/a/a/a/a/c/a$d;

    const/4 v0, 0x3

    new-array v0, v0, [La/a/a/a/a/c/a$d;

    sget-object v1, La/a/a/a/a/c/a$d;->a:La/a/a/a/a/c/a$d;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/c/a$d;->b:La/a/a/a/a/c/a$d;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/a/a/c/a$d;->c:La/a/a/a/a/c/a$d;

    aput-object v1, v0, v4

    sput-object v0, La/a/a/a/a/c/a$d;->d:[La/a/a/a/a/c/a$d;

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

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/c/a$d;
    .locals 1

    const-class v0, La/a/a/a/a/c/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/c/a$d;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/c/a$d;
    .locals 1

    sget-object v0, La/a/a/a/a/c/a$d;->d:[La/a/a/a/a/c/a$d;

    invoke-virtual {v0}, [La/a/a/a/a/c/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/c/a$d;

    return-object v0
.end method
