.class Lcom/djavid/puppypet_es/RatingHelper$1;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/djavid/puppypet_es/RatingHelper;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$dialog:Landroid/app/Dialog;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$0(Landroid/content/SharedPreferences$Editor;)V

    .line 183
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$1(Landroid/content/SharedPreferences$Editor;)V

    .line 184
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$2(Landroid/content/SharedPreferences$Editor;)V

    .line 185
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass a valid SharedPreferences Editor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
