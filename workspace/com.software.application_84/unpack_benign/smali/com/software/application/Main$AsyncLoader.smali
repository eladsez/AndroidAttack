.class public Lcom/software/application/Main$AsyncLoader;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/application/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final UPDATE_TIME:J = 0x3dL


# instance fields
.field private pVal:I

.field final synthetic this$0:Lcom/software/application/Main;


# direct methods
.method public constructor <init>(Lcom/software/application/Main;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 282
    iput v3, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    .line 283
    :goto_0
    iget v1, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    const/16 v2, 0x65

    if-lt v1, v2, :cond_0

    .line 292
    const/4 v1, 0x0

    return-object v1

    .line 285
    :cond_0
    const-wide/16 v1, 0x3d

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    iget v1, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    .line 290
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$0(Lcom/software/application/Main;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/software/application/Main$AsyncLoader;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 301
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2, v5}, Lcom/software/application/Main;->access$3(Lcom/software/application/Main;Z)V

    .line 302
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    iget-object v3, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v3}, Lcom/software/application/Main;->access$2(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/application/Actor;->getURLHasToBeActed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/software/application/Main;->access$4(Lcom/software/application/Main;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    const-string v3, "PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 304
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WAS_INSTALLED"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v2, "INSTALLED_URL"

    iget-object v3, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v3}, Lcom/software/application/Main;->access$2(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/application/Actor;->getURLHasToBeActed()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$5(Lcom/software/application/Main;)V

    .line 309
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$0(Lcom/software/application/Main;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 297
    iget-object v0, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$1(Lcom/software/application/Main;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$2(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/software/application/Main$AsyncLoader;->pVal:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
