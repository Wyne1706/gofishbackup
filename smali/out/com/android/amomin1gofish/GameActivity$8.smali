.class Lcom/android/amomin1gofish/GameActivity$8;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->listenForIncomingMessages(Landroid/bluetooth/BluetoothSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$8;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 429
    const-string v0, "GOFISHGAME"

    :try_start_2
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$8;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 430
    .local v1, "inputStream":Ljava/io/InputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 432
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "buffer":[B
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v2    # "buffer":[B
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v3, "fullMessage":Ljava/lang/StringBuilder;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 434
    .local v4, "gson":Lcom/google/gson/Gson;
    const/4 v5, 0x0

    .line 436
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .local v5, "i":I
    :goto_17
    add-int/lit8 v5, v5, 0x1

    .line 437
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 438
    .local v6, "bytes":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .line 439
    .local v7, "partMessage":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 441
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MAIN DATA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 443
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "completeJson":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v10, Lcom/android/amomin1gofish/GameActivity$8$1;

    invoke-direct {v10, p0, v4, v8, v7}, Lcom/android/amomin1gofish/GameActivity$8$1;-><init>(Lcom/android/amomin1gofish/GameActivity$8;Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 581
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_63} :catch_65

    move-object v3, v9

    .line 584
    .end local v7    # "partMessage":Ljava/lang/String;
    .end local v8    # "completeJson":Ljava/lang/String;
    :cond_64
    goto :goto_17

    .line 585
    .end local v3    # "fullMessage":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "bytes":I
    :catch_65
    move-exception v0

    .line 586
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
