.class Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;
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

.field private final synthetic val$input_body:Landroid/widget/EditText;

.field private final synthetic val$input_title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;ILandroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iput p2, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$id:I

    iput-object p3, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$input_title:Landroid/widget/EditText;

    iput-object p4, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$input_body:Landroid/widget/EditText;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v9, 0x0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select * from bookmark where _id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "sql":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, v5, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteCursor;

    iput-object v5, v6, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    .line 145
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, v5, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v1

    .line 146
    .local v1, "numRows2":I
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, v5, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 147
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$input_title:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 149
    .local v3, "tmp1":Landroid/text/Editable;
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$input_body:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 152
    .local v4, "tmp2":Landroid/text/Editable;
    if-nez v1, :cond_0

    .line 153
    const-string v5, "name"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "url"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, v5, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "bookmark"

    invoke-virtual {v5, v6, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 161
    :goto_0
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    invoke-static {v5}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V

    .line 162
    return-void

    .line 157
    :cond_0
    const-string v5, "name"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "url"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    iget-object v5, v5, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "bookmark"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;->val$id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v0, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
