.class Lcom/parse/ParseCommandCache$2;
.super Ljava/lang/Thread;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommandCache$2;->this$0:Lcom/parse/ParseCommandCache;

    .line 143
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parse/ParseCommandCache$2;->this$0:Lcom/parse/ParseCommandCache;

    invoke-static {v0}, Lcom/parse/ParseCommandCache;->access$0(Lcom/parse/ParseCommandCache;)V

    .line 147
    return-void
.end method
