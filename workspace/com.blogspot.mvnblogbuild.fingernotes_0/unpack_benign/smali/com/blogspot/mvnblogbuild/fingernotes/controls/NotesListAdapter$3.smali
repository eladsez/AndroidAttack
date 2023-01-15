.class Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;
.super Ljava/lang/Object;
.source "NotesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v1

    .line 195
    .local v1, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearNoteProfile()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intt":Landroid/content/Intent;
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method
