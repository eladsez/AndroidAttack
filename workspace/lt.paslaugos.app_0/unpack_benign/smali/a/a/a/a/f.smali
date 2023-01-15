.class public interface abstract La/a/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:La/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/f$a;-><init>(La/a/a/a/f$1;)V

    sput-object v0, La/a/a/a/f;->d:La/a/a/a/f;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
