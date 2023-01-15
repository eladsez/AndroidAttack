.class Lanywheresoftware/b4a/phone/Phone$LogCat$1;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Phone$LogCat;->LogCatStart(Lanywheresoftware/b4a/BA;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$a:[Ljava/lang/String;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$ev:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$a:[Ljava/lang/String;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$ev:Ljava/lang/String;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 735
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$a:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-static {v4}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$0(Ljava/lang/Process;)V

    .line 736
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$1()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$2(Ljava/io/InputStream;)V

    .line 737
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$3()Ljava/io/InputStream;

    move-result-object v3

    .line 738
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x1

    invoke-static {v4}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$4(Z)V

    .line 739
    const/16 v4, 0xffc

    new-array v0, v4, [B

    .line 740
    .local v0, "buffer":[B
    :goto_0
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$5()Z

    move-result v4

    if-nez v4, :cond_1

    .line 753
    :goto_1
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$1()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 759
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_2
    return-void

    .line 741
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 742
    .local v1, "count":I
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 743
    :goto_3
    if-lez v1, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 747
    :cond_2
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 748
    const/4 v4, 0x0

    invoke-static {v4}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$4(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 754
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 755
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$1()Ljava/lang/Process;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 756
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->access$1()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_3
    :try_start_1
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v1, v4

    .line 745
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 751
    :cond_4
    iget-object v4, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$ba:Lanywheresoftware/b4a/BA;

    const/4 v5, 0x0

    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$LogCat$1;->val$ev:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
