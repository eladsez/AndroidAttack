.class La/a/a/a/a/d/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/File;

.field final b:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/d/b$a;->a:Ljava/io/File;

    iput-wide p2, p0, La/a/a/a/a/d/b$a;->b:J

    return-void
.end method
