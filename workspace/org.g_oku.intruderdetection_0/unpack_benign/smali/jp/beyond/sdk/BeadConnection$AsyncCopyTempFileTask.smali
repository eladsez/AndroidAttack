.class Ljp/beyond/sdk/BeadConnection$AsyncCopyTempFileTask;
.super Landroid/os/AsyncTask;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCopyTempFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/BeadConnection;


# direct methods
.method private constructor <init>(Ljp/beyond/sdk/BeadConnection;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection$AsyncCopyTempFileTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/BeadConnection$AsyncCopyTempFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 932
    const-string v0, ""

    .line 950
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/BeadConnection$AsyncCopyTempFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 956
    return-void
.end method
