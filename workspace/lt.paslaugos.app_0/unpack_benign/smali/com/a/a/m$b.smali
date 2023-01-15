.class public final enum Lcom/a/a/m$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/a/a/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/m$b;

.field public static final enum b:Lcom/a/a/m$b;

.field public static final enum c:Lcom/a/a/m$b;

.field public static final enum d:Lcom/a/a/m$b;

.field private static final synthetic e:[Lcom/a/a/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/a/a/m$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/m$b;->a:Lcom/a/a/m$b;

    new-instance v0, Lcom/a/a/m$b;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/a/a/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/m$b;->b:Lcom/a/a/m$b;

    new-instance v0, Lcom/a/a/m$b;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/a/a/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/m$b;->c:Lcom/a/a/m$b;

    new-instance v0, Lcom/a/a/m$b;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/a/a/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/m$b;->d:Lcom/a/a/m$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/m$b;

    sget-object v1, Lcom/a/a/m$b;->a:Lcom/a/a/m$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/m$b;->b:Lcom/a/a/m$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/m$b;->c:Lcom/a/a/m$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/m$b;->d:Lcom/a/a/m$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/m$b;->e:[Lcom/a/a/m$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/m$b;
    .locals 1

    const-class v0, Lcom/a/a/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/m$b;

    return-object p0
.end method

.method public static values()[Lcom/a/a/m$b;
    .locals 1

    sget-object v0, Lcom/a/a/m$b;->e:[Lcom/a/a/m$b;

    invoke-virtual {v0}, [Lcom/a/a/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/m$b;

    return-object v0
.end method
