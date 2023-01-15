.class public La/a/a/a/a/g/t;
.super Ljava/lang/Object;


# instance fields
.field public final a:La/a/a/a/a/g/e;

.field public final b:La/a/a/a/a/g/p;

.field public final c:La/a/a/a/a/g/o;

.field public final d:La/a/a/a/a/g/m;

.field public final e:La/a/a/a/a/g/b;

.field public final f:La/a/a/a/a/g/f;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLa/a/a/a/a/g/e;La/a/a/a/a/g/p;La/a/a/a/a/g/o;La/a/a/a/a/g/m;La/a/a/a/a/g/b;La/a/a/a/a/g/f;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, La/a/a/a/a/g/t;->g:J

    iput-object p3, p0, La/a/a/a/a/g/t;->a:La/a/a/a/a/g/e;

    iput-object p4, p0, La/a/a/a/a/g/t;->b:La/a/a/a/a/g/p;

    iput-object p5, p0, La/a/a/a/a/g/t;->c:La/a/a/a/a/g/o;

    iput-object p6, p0, La/a/a/a/a/g/t;->d:La/a/a/a/a/g/m;

    iput p9, p0, La/a/a/a/a/g/t;->h:I

    iput p10, p0, La/a/a/a/a/g/t;->i:I

    iput-object p7, p0, La/a/a/a/a/g/t;->e:La/a/a/a/a/g/b;

    iput-object p8, p0, La/a/a/a/a/g/t;->f:La/a/a/a/a/g/f;

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 2

    iget-wide v0, p0, La/a/a/a/a/g/t;->g:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
