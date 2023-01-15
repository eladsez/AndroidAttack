.class Linfo/kazubu/anditalk/ConnectionService$1;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/kazubu/anditalk/ConnectionService;->connect(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/ConnectionService;

.field private final synthetic val$handlename:Ljava/lang/String;

.field private final synthetic val$ip:Ljava/lang/String;

.field private final synthetic val$port:I


# direct methods
.method constructor <init>(Linfo/kazubu/anditalk/ConnectionService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Linfo/kazubu/anditalk/ConnectionService$1;->this$0:Linfo/kazubu/anditalk/ConnectionService;

    iput-object p2, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$ip:Ljava/lang/String;

    iput p3, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$port:I

    iput-object p4, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$handlename:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService$1;->this$0:Linfo/kazubu/anditalk/ConnectionService;

    iget-object v2, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$ip:Ljava/lang/String;

    iget v3, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$port:I

    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService$1;->val$handlename:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Linfo/kazubu/anditalk/ConnectionService;->access$0(Linfo/kazubu/anditalk/ConnectionService;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "anditalk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CONNECT_THREAD : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
