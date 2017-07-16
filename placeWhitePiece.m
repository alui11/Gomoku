function newBoard = placeWhitePiece(handles,board,currentPoint)
% newBoard = placeWhitePiece(handles,board,currentPoint)

whitePiece = imread('whitePieceGo.png');
if currentPoint(1,1) < 0.6
    if currentPoint(1,2) > 9.3
        axes(handles.black1axes);
        imshow(whitePiece);
        uistack(handles.black1axes, 'top')
        board(1,1) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p16);
        imshow(whitePiece);
        uistack(handles.p16, 'top')
        board(2,1) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p31);
        imshow(whitePiece);
        uistack(handles.p31, 'top')
        board(3,1) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p46);
        imshow(whitePiece);
        uistack(handles.p46, 'top')
        board(4,1) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p61);
        imshow(whitePiece);
        uistack(handles.p61, 'top')
        board(5,1) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p76);
        imshow(whitePiece);
        uistack(handles.p76, 'top')
        board(6,1) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p91);
        imshow(whitePiece);
        uistack(handles.p91, 'top')
        board(7,1) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p106);
        imshow(whitePiece);
        uistack(handles.p106, 'top')
        board(8,1) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p121);
        imshow(whitePiece);
        uistack(handles.p121, 'top')
        board(9,1) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p136);
        imshow(whitePiece);
        uistack(handles.p136, 'top')
        board(10,1) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p151);
        imshow(whitePiece);
        uistack(handles.p151, 'top')
        board(11,1) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p166);
        imshow(whitePiece);
        uistack(handles.p166, 'top')
        board(12,1) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p181);
        imshow(whitePiece);
        uistack(handles.p181, 'top')
        board(13,1) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p196);
        imshow(whitePiece);
        uistack(handles.p196, 'top')
        board(14,1) = 2;
    else
        axes(handles.p211);
        imshow(whitePiece);
        uistack(handles.p211, 'top')
        board(15,1) = 2;
    end
elseif currentPoint(1,1) < 1.36
    if currentPoint(1,2) > 9.3
        axes(handles.black2);
        imshow(whitePiece);
        uistack(handles.black2, 'top')
        board(1,2) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p17);
        imshow(whitePiece);
        uistack(handles.p17, 'top')
        board(2,2) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p32);
        imshow(whitePiece);
        uistack(handles.p32, 'top')
        board(3,2) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p47);
        imshow(whitePiece);
        uistack(handles.p47, 'top')
        board(4,2) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p62);
        imshow(whitePiece);
        uistack(handles.p62, 'top')
        board(5,2) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p77);
        imshow(whitePiece);
        uistack(handles.p77, 'top')
        board(6,2) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p92);
        imshow(whitePiece);
        uistack(handles.p92, 'top')
        board(7,2) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p107);
        imshow(whitePiece);
        uistack(handles.p107, 'top')
        board(8,2) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p122);
        imshow(whitePiece);
        uistack(handles.p122, 'top')
        board(9,2) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p137);
        imshow(whitePiece);
        uistack(handles.p137, 'top')
        board(10,2) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p152);
        imshow(whitePiece);
        uistack(handles.p152, 'top')
        board(11,2) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p167);
        imshow(whitePiece);
        uistack(handles.p167, 'top')
        board(12,2) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p182);
        imshow(whitePiece);
        uistack(handles.p182, 'top')
        board(13,2) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p197);
        imshow(whitePiece);
        uistack(handles.p197, 'top')
        board(14,2) = 2;
    else
        axes(handles.p212);
        imshow(whitePiece);
        uistack(handles.p212, 'top')
        board(15,2) = 2;
    end
elseif currentPoint(1,1) < 2.0
    if currentPoint(1,2) > 9.3
        axes(handles.black3);
        imshow(whitePiece);
        uistack(handles.black3, 'top')
        board(1,3) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p18);
        imshow(whitePiece);
        uistack(handles.p18, 'top')
        board(2,3) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p33);
        imshow(whitePiece);
        uistack(handles.p33, 'top')
        board(3,3) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p48);
        imshow(whitePiece);
        uistack(handles.p48, 'top')
        board(4,3) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p63);
        imshow(whitePiece);
        uistack(handles.p63, 'top')
        board(5,3) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p78);
        imshow(whitePiece);
        uistack(handles.p78, 'top')
        board(6,3) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p93);
        imshow(whitePiece);
        uistack(handles.p93, 'top')
        board(7,3) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p108);
        imshow(whitePiece);
        uistack(handles.p108, 'top')
        board(8,3) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p123);
        imshow(whitePiece);
        uistack(handles.p123, 'top')
        board(9,3) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p138);
        imshow(whitePiece);
        uistack(handles.p138, 'top')
        board(10,3) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p153);
        imshow(whitePiece);
        uistack(handles.p153, 'top')
        board(11,3) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p168);
        imshow(whitePiece);
        uistack(handles.p168, 'top')
        board(12,3) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p183);
        imshow(whitePiece);
        uistack(handles.p183, 'top')
        board(13,3) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p198);
        imshow(whitePiece);
        uistack(handles.p198, 'top')
        board(14,3) = 2;
    else
        axes(handles.p213);
        imshow(whitePiece);
        uistack(handles.p213, 'top')
        board(15,3) = 2;
    end
elseif currentPoint(1,1) < 2.7
    if currentPoint(1,2) > 9.3
        axes(handles.black4);
        imshow(whitePiece);
        uistack(handles.black4, 'top')
        board(1,4) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p19);
        imshow(whitePiece);
        uistack(handles.p19, 'top')
        board(2,4) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p34);
        imshow(whitePiece);
        uistack(handles.p34, 'top')
        board(3,4) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p49);
        imshow(whitePiece);
        uistack(handles.p49, 'top')
        board(4,4) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p64);
        imshow(whitePiece);
        uistack(handles.p64, 'top')
        board(5,4) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p79);
        imshow(whitePiece);
        uistack(handles.p79, 'top')
        board(6,4) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p94);
        imshow(whitePiece);
        uistack(handles.p94, 'top')
        board(7,4) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p109);
        imshow(whitePiece);
        uistack(handles.p109, 'top')
        board(8,4) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p124);
        imshow(whitePiece);
        uistack(handles.p124, 'top')
        board(9,4) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p139);
        imshow(whitePiece);
        uistack(handles.p139, 'top')
        board(10,4) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p154);
        imshow(whitePiece);
        uistack(handles.p154, 'top')
        board(11,4) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p169);
        imshow(whitePiece);
        uistack(handles.p169, 'top')
        board(12,4) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p184);
        imshow(whitePiece);
        uistack(handles.p184, 'top')
        board(13,4) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p199);
        imshow(whitePiece);
        uistack(handles.p199, 'top')
        board(14,4) = 2;
    else
        axes(handles.p214);
        imshow(whitePiece);
        uistack(handles.p214, 'top')
        board(15,4) = 2;
    end
elseif currentPoint(1,1) < 3.35
    if currentPoint(1,2) > 9.3
        axes(handles.black5);
        imshow(whitePiece);
        uistack(handles.black5, 'top')
        board(1,5) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p20);
        imshow(whitePiece);
        uistack(handles.p20, 'top')
        board(2,5) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p35);
        imshow(whitePiece);
        uistack(handles.p35, 'top')
        board(3,5) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p50);
        imshow(whitePiece);
        uistack(handles.p50, 'top')
        board(4,5) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p65);
        imshow(whitePiece);
        uistack(handles.p65, 'top')
        board(5,5) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p80);
        imshow(whitePiece);
        uistack(handles.p80, 'top')
        board(6,5) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p95);
        imshow(whitePiece);
        uistack(handles.p95, 'top')
        board(7,5) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p110);
        imshow(whitePiece);
        uistack(handles.p110, 'top')
        board(8,5) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p125);
        imshow(whitePiece);
        uistack(handles.p125, 'top')
        board(9,5) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p140);
        imshow(whitePiece);
        uistack(handles.p140, 'top')
        board(10,5) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p155);
        imshow(whitePiece);
        uistack(handles.p155, 'top')
        board(11,5) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p170);
        imshow(whitePiece);
        uistack(handles.p170, 'top')
        board(12,5) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p185);
        imshow(whitePiece);
        uistack(handles.p185, 'top')
        board(13,5) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p200);
        imshow(whitePiece);
        uistack(handles.p200, 'top')
        board(14,5) = 2;
    else
        axes(handles.p215);
        imshow(whitePiece);
        uistack(handles.p215, 'top')
        board(15,5) = 2;
    end
elseif currentPoint(1,1) < 4.0
    if currentPoint(1,2) > 9.3
        axes(handles.black6);
        imshow(whitePiece);
        uistack(handles.black6, 'top')
        board(1,6) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p21);
        imshow(whitePiece);
        uistack(handles.p21, 'top')
        board(2,6) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p36);
        imshow(whitePiece);
        uistack(handles.p36, 'top')
        board(3,6) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p51);
        imshow(whitePiece);
        uistack(handles.p51, 'top')
        board(4,6) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p66);
        imshow(whitePiece);
        uistack(handles.p66, 'top')
        board(5,6) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p81);
        imshow(whitePiece);
        uistack(handles.p81, 'top')
        board(6,6) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p96);
        imshow(whitePiece);
        uistack(handles.p96, 'top')
        board(7,6) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p111);
        imshow(whitePiece);
        uistack(handles.p111, 'top')
        board(8,6) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p126);
        imshow(whitePiece);
        uistack(handles.p126, 'top')
        board(9,6) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p141);
        imshow(whitePiece);
        uistack(handles.p141, 'top')
        board(10,6) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p156);
        imshow(whitePiece);
        uistack(handles.p156, 'top')
        board(11,6) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p171);
        imshow(whitePiece);
        uistack(handles.p171, 'top')
        board(12,6) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p186);
        imshow(whitePiece);
        uistack(handles.p186, 'top')
        board(13,6) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p201);
        imshow(whitePiece);
        uistack(handles.p201, 'top')
        board(14,6) = 2;
    else
        axes(handles.p216);
        imshow(whitePiece);
        uistack(handles.p216, 'top')
        board(15,6) = 2;
    end
elseif currentPoint(1,1) < 4.7
    if currentPoint(1,2) > 9.3
        axes(handles.black7);
        imshow(whitePiece);
        uistack(handles.black7, 'top')
        board(1,7) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p22);
        imshow(whitePiece);
        uistack(handles.p22, 'top')
        board(2,7) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p37);
        imshow(whitePiece);
        uistack(handles.p37, 'top')
        board(3,7) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p52);
        imshow(whitePiece);
        uistack(handles.p52, 'top')
        board(4,7) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p67);
        imshow(whitePiece);
        uistack(handles.p67, 'top')
        board(5,7) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p82);
        imshow(whitePiece);
        uistack(handles.p82, 'top')
        board(6,7) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p97);
        imshow(whitePiece);
        uistack(handles.p97, 'top')
        board(7,7) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p112);
        imshow(whitePiece);
        uistack(handles.p112, 'top')
        board(8,7) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p127);
        imshow(whitePiece);
        uistack(handles.p127, 'top')
        board(9,7) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p142);
        imshow(whitePiece);
        uistack(handles.p142, 'top')
        board(10,7) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p157);
        imshow(whitePiece);
        uistack(handles.p157, 'top')
        board(11,7) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p172);
        imshow(whitePiece);
        uistack(handles.p172, 'top')
        board(12,7) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p187);
        imshow(whitePiece);
        uistack(handles.p187, 'top')
        board(13,7) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p202);
        imshow(whitePiece);
        uistack(handles.p202, 'top')
        board(14,7) = 2;
    else
        axes(handles.p217);
        imshow(whitePiece);
        uistack(handles.p217, 'top')
        board(15,7) = 2;
    end
elseif currentPoint(1,1) < 5.3
    if currentPoint(1,2) > 9.3
        axes(handles.black8);
        imshow(whitePiece);
        uistack(handles.black8, 'top')
        board(1,8) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p23);
        imshow(whitePiece);
        uistack(handles.p23, 'top')
        board(2,8) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p38);
        imshow(whitePiece);
        uistack(handles.p38, 'top')
        board(3,8) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p53);
        imshow(whitePiece);
        uistack(handles.p53, 'top')
        board(4,8) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p68);
        imshow(whitePiece);
        uistack(handles.p68, 'top')
        board(5,8) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p83);
        imshow(whitePiece);
        uistack(handles.p83, 'top')
        board(6,8) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p98);
        imshow(whitePiece);
        uistack(handles.p98, 'top')
        board(7,8) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p113);
        imshow(whitePiece);
        uistack(handles.p113, 'top')
        board(8,8) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p128);
        imshow(whitePiece);
        uistack(handles.p128, 'top')
        board(9,8) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p143);
        imshow(whitePiece);
        uistack(handles.p143, 'top')
        board(10,8) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p158);
        imshow(whitePiece);
        uistack(handles.p158, 'top')
        board(11,8) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p173);
        imshow(whitePiece);
        uistack(handles.p173, 'top')
        board(12,8) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p188);
        imshow(whitePiece);
        uistack(handles.p188, 'top')
        board(13,8) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p203);
        imshow(whitePiece);
        uistack(handles.p203, 'top')
        board(14,8) = 2;
    else
        axes(handles.p218);
        imshow(whitePiece);
        uistack(handles.p218, 'top')
        board(15,8) = 2;
    end
elseif currentPoint(1,1) < 6.0
    if currentPoint(1,2) > 9.3
        axes(handles.black9);
        imshow(whitePiece);
        uistack(handles.black9, 'top')
        board(1,9) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p24);
        imshow(whitePiece);
        uistack(handles.p24, 'top')
        board(2,9) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p39);
        imshow(whitePiece);
        uistack(handles.p39, 'top')
        board(3,9) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p54);
        imshow(whitePiece);
        uistack(handles.p54, 'top')
        board(4,9) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p69);
        imshow(whitePiece);
        uistack(handles.p69, 'top')
        board(5,9) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p84);
        imshow(whitePiece);
        uistack(handles.p84, 'top')
        board(6,9) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p99);
        imshow(whitePiece);
        uistack(handles.p99, 'top')
        board(7,9) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p114);
        imshow(whitePiece);
        uistack(handles.p114, 'top')
        board(8,9) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p129);
        imshow(whitePiece);
        uistack(handles.p129, 'top')
        board(9,9) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p144);
        imshow(whitePiece);
        uistack(handles.p144, 'top')
        board(10,9) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p159);
        imshow(whitePiece);
        uistack(handles.p159, 'top')
        board(11,9) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p174);
        imshow(whitePiece);
        uistack(handles.p174, 'top')
        board(12,9) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p189);
        imshow(whitePiece);
        uistack(handles.p189, 'top')
        board(13,9) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p204);
        imshow(whitePiece);
        uistack(handles.p204, 'top')
        board(14,9) = 2;
    else
        axes(handles.p219);
        imshow(whitePiece);
        uistack(handles.p219, 'top')
        board(15,9) = 2;
    end
elseif currentPoint(1,1) < 6.7
    if currentPoint(1,2) > 9.3
        axes(handles.black10);
        imshow(whitePiece);
        uistack(handles.black10, 'top')
        board(1,10) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p25);
        imshow(whitePiece);
        uistack(handles.p25, 'top')
        board(2,10) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p40);
        imshow(whitePiece);
        uistack(handles.p40, 'top')
        board(3,10) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p55);
        imshow(whitePiece);
        uistack(handles.p55, 'top')
        board(4,10) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p70);
        imshow(whitePiece);
        uistack(handles.p70, 'top')
        board(5,10) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p85);
        imshow(whitePiece);
        uistack(handles.p85, 'top')
        board(6,10) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p100);
        imshow(whitePiece);
        uistack(handles.p100, 'top')
        board(7,10) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p115);
        imshow(whitePiece);
        uistack(handles.p115, 'top')
        board(8,10) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p130);
        imshow(whitePiece);
        uistack(handles.p130, 'top')
        board(9,10) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p145);
        imshow(whitePiece);
        uistack(handles.p145, 'top')
        board(10,10) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p160);
        imshow(whitePiece);
        uistack(handles.p160, 'top')
        board(11,10) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p175);
        imshow(whitePiece);
        uistack(handles.p175, 'top')
        board(12,10) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p190);
        imshow(whitePiece);
        uistack(handles.p190, 'top')
        board(13,10) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p205);
        imshow(whitePiece);
        uistack(handles.p205, 'top')
        board(14,10) = 2;
    else
        axes(handles.p220);
        imshow(whitePiece);
        uistack(handles.p220, 'top')
        board(15,10) = 2;
    end
elseif currentPoint(1,1) < 7.4
    if currentPoint(1,2) > 9.3
        axes(handles.black11);
        imshow(whitePiece);
        uistack(handles.black11, 'top')
        board(1,11) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p26);
        imshow(whitePiece);
        uistack(handles.p26, 'top')
        board(2,11) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p41);
        imshow(whitePiece);
        uistack(handles.p41, 'top')
        board(3,11) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p56);
        imshow(whitePiece);
        uistack(handles.p56, 'top')
        board(4,11) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p71);
        imshow(whitePiece);
        uistack(handles.p71, 'top')
        board(5,11) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p86);
        imshow(whitePiece);
        uistack(handles.p86, 'top')
        board(6,11) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p101);
        imshow(whitePiece);
        uistack(handles.p101, 'top')
        board(7,11) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p116);
        imshow(whitePiece);
        uistack(handles.p116, 'top')
        board(8,11) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p131);
        imshow(whitePiece);
        uistack(handles.p131, 'top')
        board(9,11) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p146);
        imshow(whitePiece);
        uistack(handles.p146, 'top')
        board(10,11) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p161);
        imshow(whitePiece);
        uistack(handles.p161, 'top')
        board(11,11) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p176);
        imshow(whitePiece);
        uistack(handles.p176, 'top')
        board(12,11) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p191);
        imshow(whitePiece);
        uistack(handles.p191, 'top')
        board(13,11) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p206);
        imshow(whitePiece);
        uistack(handles.p206, 'top')
        board(14,11) = 2;
    else
        axes(handles.p221);
        imshow(whitePiece);
        uistack(handles.p221, 'top')
        board(15,11) = 2;
    end
elseif currentPoint(1,1) < 8.0
    if currentPoint(1,2) > 9.3
        axes(handles.black12);
        imshow(whitePiece);
        uistack(handles.black12, 'top')
        board(1,12) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p27);
        imshow(whitePiece);
        uistack(handles.p27, 'top')
        board(2,12) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p42);
        imshow(whitePiece);
        uistack(handles.p42, 'top')
        board(3,12) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p57);
        imshow(whitePiece);
        uistack(handles.p57, 'top')
        board(4,12) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p72);
        imshow(whitePiece);
        uistack(handles.p72, 'top')
        board(5,12) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p87);
        imshow(whitePiece);
        uistack(handles.p87, 'top')
        board(6,12) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p102);
        imshow(whitePiece);
        uistack(handles.p102, 'top')
        board(7,12) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p117);
        imshow(whitePiece);
        uistack(handles.p117, 'top')
        board(8,12) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p132);
        imshow(whitePiece);
        uistack(handles.p132, 'top')
        board(9,12) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p147);
        imshow(whitePiece);
        uistack(handles.p147, 'top')
        board(10,12) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p162);
        imshow(whitePiece);
        uistack(handles.p162, 'top')
        board(11,12) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p177);
        imshow(whitePiece);
        uistack(handles.p177, 'top')
        board(12,12) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p192);
        imshow(whitePiece);
        uistack(handles.p192, 'top')
        board(13,12) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p207);
        imshow(whitePiece);
        uistack(handles.p207, 'top')
        board(14,12) = 2;
    else
        axes(handles.p222);
        imshow(whitePiece);
        uistack(handles.p222, 'top')
        board(15,12) = 2;
    end
elseif currentPoint(1,1) < 8.7
    if currentPoint(1,2) > 9.3
        axes(handles.black13);
        imshow(whitePiece);
        uistack(handles.black13, 'top')
        board(1,13) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p28);
        imshow(whitePiece);
        uistack(handles.p28, 'top')
        board(2,13) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p43);
        imshow(whitePiece);
        uistack(handles.p43, 'top')
        board(3,13) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p58);
        imshow(whitePiece);
        uistack(handles.p58, 'top')
        board(4,13) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p73);
        imshow(whitePiece);
        uistack(handles.p73, 'top')
        board(5,13) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p88);
        imshow(whitePiece);
        uistack(handles.p88, 'top')
        board(6,13) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p103);
        imshow(whitePiece);
        uistack(handles.p103, 'top')
        board(7,13) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p118);
        imshow(whitePiece);
        uistack(handles.p118, 'top')
        board(8,13) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p133);
        imshow(whitePiece);
        uistack(handles.p133, 'top')
        board(9,13) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p148);
        imshow(whitePiece);
        uistack(handles.p148, 'top')
        board(10,13) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p163);
        imshow(whitePiece);
        uistack(handles.p163, 'top')
        board(11,13) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p178);
        imshow(whitePiece);
        uistack(handles.p178, 'top')
        board(12,13) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p193);
        imshow(whitePiece);
        uistack(handles.p193, 'top')
        board(13,13) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p208);
        imshow(whitePiece);
        uistack(handles.p208, 'top')
        board(14,13) = 2;
    else
        axes(handles.p223);
        imshow(whitePiece);
        uistack(handles.p223, 'top')
        board(15,13) = 2;
    end
elseif currentPoint(1,1) < 9.4
    if currentPoint(1,2) > 9.3
        axes(handles.black14);
        imshow(whitePiece);
        uistack(handles.black14, 'top')
        board(1,14) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p29);
        imshow(whitePiece);
        uistack(handles.p29, 'top')
        board(2,14) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p44);
        imshow(whitePiece);
        uistack(handles.p44, 'top')
        board(3,14) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p59);
        imshow(whitePiece);
        uistack(handles.p59, 'top')
        board(4,14) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p74);
        imshow(whitePiece);
        uistack(handles.p74, 'top')
        board(5,14) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p89);
        imshow(whitePiece);
        uistack(handles.p89, 'top')
        board(6,14) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p104);
        imshow(whitePiece);
        uistack(handles.p104, 'top')
        board(7,14) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p119);
        imshow(whitePiece);
        uistack(handles.p119, 'top')
        board(8,14) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p134);
        imshow(whitePiece);
        uistack(handles.p134, 'top')
        board(9,14) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p149);
        imshow(whitePiece);
        uistack(handles.p149, 'top')
        board(10,14) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p164);
        imshow(whitePiece);
        uistack(handles.p164, 'top')
        board(11,14) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p179);
        imshow(whitePiece);
        uistack(handles.p179, 'top')
        board(12,14) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p194);
        imshow(whitePiece);
        uistack(handles.p194, 'top')
        board(13,14) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p209);
        imshow(whitePiece);
        uistack(handles.p209, 'top')
        board(14,14) = 2;
    else
        axes(handles.p224);
        imshow(whitePiece);
        uistack(handles.p224, 'top')
        board(15,14) = 2;
    end
else
    if currentPoint(1,2) > 9.3
        axes(handles.black15);
        imshow(whitePiece);
        uistack(handles.black15, 'top')
        board(1,15) = 2;
    elseif currentPoint(1,2) > 8.7
        axes(handles.p30);
        imshow(whitePiece);
        uistack(handles.p30, 'top')
        board(2,15) = 2;
    elseif currentPoint(1,2) > 8.0
        axes(handles.p45);
        imshow(whitePiece);
        uistack(handles.p45, 'top')
        board(3,15) = 2;
    elseif currentPoint(1,2) > 7.3
        axes(handles.p60);
        imshow(whitePiece);
        uistack(handles.p60, 'top')
        board(4,15) = 2;
    elseif currentPoint(1,2) > 6.6
        axes(handles.p75);
        imshow(whitePiece);
        uistack(handles.p75, 'top')
        board(5,15) = 2;
    elseif currentPoint(1,2) > 6.0
        axes(handles.p90);
        imshow(whitePiece);
        uistack(handles.p90, 'top')
        board(6,15) = 2;
    elseif currentPoint(1,2) > 5.3
        axes(handles.p105);
        imshow(whitePiece);
        uistack(handles.p105, 'top')
        board(7,15) = 2;
    elseif currentPoint(1,2) > 4.6
        axes(handles.p120);
        imshow(whitePiece);
        uistack(handles.p120, 'top')
        board(8,15) = 2;
    elseif currentPoint(1,2) > 3.9
        axes(handles.p135);
        imshow(whitePiece);
        uistack(handles.p135, 'top')
        board(9,15) = 2;
    elseif currentPoint(1,2) > 3.3
        axes(handles.p150);
        imshow(whitePiece);
        uistack(handles.p150, 'top')
        board(10,15) = 2;
    elseif currentPoint(1,2) > 2.7
        axes(handles.p165);
        imshow(whitePiece);
        uistack(handles.p165, 'top')
        board(11,15) = 2;
    elseif currentPoint(1,2) > 2.0
        axes(handles.p180);
        imshow(whitePiece);
        uistack(handles.p180, 'top')
        board(12,15) = 2;
    elseif currentPoint(1,2) > 1.3
        axes(handles.p195);
        imshow(whitePiece);
        uistack(handles.p195, 'top')
        board(13,15) = 2;
    elseif currentPoint(1,2) > 0.7
        axes(handles.p210);
        imshow(whitePiece);
        uistack(handles.p210, 'top')
        board(14,15) = 2;
    else
        axes(handles.p225);
        imshow(whitePiece);
        uistack(handles.p225, 'top')
        board(15,15) = 2;
    end
end

newBoard = board;