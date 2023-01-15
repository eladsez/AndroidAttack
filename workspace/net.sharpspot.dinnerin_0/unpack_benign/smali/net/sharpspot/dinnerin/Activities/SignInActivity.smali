.class public Lnet/sharpspot/dinnerin/Activities/SignInActivity;
.super Landroid/app/Activity;
.source "SignInActivity.java"


# static fields
.field private static final DIALOG_SHARE_FILE_WAIT:I = 0x2

.field private static final MESSAGE_DIALOG:I = 0x1

.field private static final MESSAGE_KEY:Ljava/lang/String; = "MessageKey"


# instance fields
.field private _createNewOnClickListener:Landroid/view/View$OnClickListener;

.field private _syncNowOnClickListener:Landroid/view/View$OnClickListener;

.field private _toggleSignInOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_toggleSignInOnClickListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$2;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_createNewOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_syncNowOnClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method private CreateNewAccount()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->Validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/parse/ParseUser;

    invoke-direct {v0}, Lcom/parse/ParseUser;-><init>()V

    .line 110
    .local v0, "user":Lcom/parse/ParseUser;
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getUserNameView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getPasswordView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 113
    const-string v1, "Creating account..."

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowBusyDialog(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;

    invoke-direct {v1, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->signUpInBackground(Lcom/parse/SignUpCallback;)V

    .line 124
    .end local v0    # "user":Lcom/parse/ParseUser;
    :cond_0
    return-void
.end method

.method private InitializeComponents()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getToggleSignInView()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_toggleSignInOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getCreateNewView()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_createNewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getSyncNowView()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->_syncNowOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SetSignedInState()V

    .line 70
    return-void
.end method

.method private SetSignedInState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 174
    .local v0, "signedIn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getUserNameView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getUserNameView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getPasswordView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getCreateNewView()Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getSyncNowView()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    if-eqz v0, :cond_5

    .line 183
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getToggleSignInView()Landroid/widget/Button;

    move-result-object v1

    const-string v2, "Sign Out"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_4
    return-void

    .end local v0    # "signedIn":Z
    :cond_1
    move v0, v2

    .line 172
    goto :goto_0

    .restart local v0    # "signedIn":Z
    :cond_2
    move v1, v3

    .line 177
    goto :goto_1

    :cond_3
    move v1, v3

    .line 178
    goto :goto_2

    :cond_4
    move v2, v3

    .line 179
    goto :goto_3

    .line 185
    :cond_5
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getToggleSignInView()Landroid/widget/Button;

    move-result-object v1

    const-string v2, "Sign In"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private ShowBusyDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "MessageKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 239
    return-void
.end method

.method private ShowDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "MessageKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 247
    return-void
.end method

.method private ShowResult(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 153
    const-string v0, "Success! Synchronizing data..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/DataSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    :goto_0
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SetSignedInState()V

    .line 168
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    .line 160
    const-string v0, "This user already exists. Please choose a different username."

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 162
    const-string v0, "Invalid user login.  Please try again."

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SignIn()V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->Validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "Signing in..."

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowBusyDialog(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getUserNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getPasswordView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;

    invoke-direct {v2, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    invoke-static {v0, v1, v2}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V

    .line 141
    :cond_0
    return-void
.end method

.method private SignOut()V
    .locals 0

    .prologue
    .line 145
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 146
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SetSignedInState()V

    .line 147
    return-void
.end method

.method private Validate()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getUserNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getPasswordView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SignIn()V

    return-void
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SignOut()V

    return-void
.end method

.method static synthetic access$2(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->CreateNewAccount()V

    return-void
.end method

.method static synthetic access$3(Lnet/sharpspot/dinnerin/Activities/SignInActivity;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->ShowResult(Lcom/parse/ParseException;)V

    return-void
.end method

.method private getCreateNewView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getPasswordView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getSyncNowView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getToggleSignInView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getUserNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f050045

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->InitializeComponents()V

    .line 36
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "builder":Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 216
    const/4 v1, 0x0

    .line 219
    :goto_0
    return-object v1

    .line 198
    :pswitch_0
    const-string v2, "MessageKey"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 199
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 200
    const-string v2, "Ok"

    new-instance v3, Lnet/sharpspot/dinnerin/Activities/SignInActivity$6;

    invoke-direct {v3, p0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity$6;-><init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    invoke-virtual {v0, v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 208
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 209
    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v2, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setShowProgress(Z)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v2

    const-string v3, "MessageKey"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 213
    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 231
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 228
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    const v0, 0x7f050010

    invoke-virtual {p2, v0}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "MessageKey"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
