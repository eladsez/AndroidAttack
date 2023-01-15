.class Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;
.super Ljava/lang/Object;
.source "BookMarkEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->DialogmultiLineInput(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iput p2, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;->val$id:I

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 167
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v0, v0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bookmark"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V

    .line 169
    return-void
.end method
