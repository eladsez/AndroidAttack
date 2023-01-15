.class public interface abstract La/a/a/a/a/e/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:La/a/a/a/a/e/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/a/e/d$b$1;

    invoke-direct {v0}, La/a/a/a/a/e/d$b$1;-><init>()V

    sput-object v0, La/a/a/a/a/e/d$b;->a:La/a/a/a/a/e/d$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
