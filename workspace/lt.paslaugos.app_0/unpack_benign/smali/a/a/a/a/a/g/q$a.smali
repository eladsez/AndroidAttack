.class La/a/a/a/a/g/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/g/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:La/a/a/a/a/g/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/a/g/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/g/q;-><init>(La/a/a/a/a/g/q$1;)V

    sput-object v0, La/a/a/a/a/g/q$a;->a:La/a/a/a/a/g/q;

    return-void
.end method

.method static synthetic a()La/a/a/a/a/g/q;
    .locals 1

    sget-object v0, La/a/a/a/a/g/q$a;->a:La/a/a/a/a/g/q;

    return-object v0
.end method
