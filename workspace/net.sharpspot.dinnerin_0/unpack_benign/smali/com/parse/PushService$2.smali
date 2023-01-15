.class Lcom/parse/PushService$2;
.super Ljava/util/TimerTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;


# direct methods
.method constructor <init>(Lcom/parse/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    .line 338
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    invoke-static {v0}, Lcom/parse/PushService;->access$1(Lcom/parse/PushService;)V

    .line 342
    return-void
.end method
