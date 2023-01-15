.class Lanywheresoftware/b4a/http/HttpClientWrapper$2;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper;->executeWithTimeout(Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

.field private final synthetic val$TaskId:I

.field private final synthetic val$handler:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->val$handler:Ljava/lang/Runnable;

    iput p3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->val$TaskId:I

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->val$handler:Ljava/lang/Runnable;

    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    iget v2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$2;->val$TaskId:I

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/BA;->submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;

    .line 323
    return-void
.end method
