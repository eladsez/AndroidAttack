.class Lcom/voteforwota/stamper$1$1;
.super Ljava/lang/Object;
.source "stamper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voteforwota/stamper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voteforwota/stamper$1;


# direct methods
.method constructor <init>(Lcom/voteforwota/stamper$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voteforwota/stamper$1$1;->this$1:Lcom/voteforwota/stamper$1;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
