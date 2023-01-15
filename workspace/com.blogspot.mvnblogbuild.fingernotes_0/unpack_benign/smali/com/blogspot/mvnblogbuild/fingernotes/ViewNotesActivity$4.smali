.class Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;
.super Ljava/lang/Object;
.source "ViewNotesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

.field private final synthetic val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "counter":I
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getNotesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    if-lez v1, :cond_1

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$3(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notes?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    const-string v3, "OK"

    new-instance v4, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-direct {v4, p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const-string v3, "Cancel"

    new-instance v4, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$2;

    invoke-direct {v4, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    .end local v0    # "ad":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void

    .line 114
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 115
    .local v2, "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getIsSelected()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
