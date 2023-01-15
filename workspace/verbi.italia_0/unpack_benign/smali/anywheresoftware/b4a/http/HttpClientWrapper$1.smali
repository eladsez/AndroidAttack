.class Lanywheresoftware/b4a/http/HttpClientWrapper$1;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper;->initializeShared(Ljava/lang/String;Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/http/HttpClientWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$1;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 113
    const/4 v0, 0x5

    return v0
.end method
