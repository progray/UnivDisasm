unit x64.bmi;

// This unit was generated by d2p.pl script.
// Source : gas/x86-64-bmi-intel.d

interface

uses
  uTestCase,
  UnivDisasm.Cnsts;

procedure Test();

implementation

procedure Test();
var
  TestCase:TTestCase;
begin
  TestCase := TTestCase.Create('x64.bmi');
  TestCase.Start();	
  TestCase.Arch := CPUX64;

  TestCase.testcase(0, [$66,$F3,$0F,$BC,$D8                               ] , 'tzcnt  bx,ax'                                     );
  TestCase.testcase(1, [$66,$F3,$0F,$BC,$19                               ] , 'tzcnt  bx,word [rcx]'                             );
  TestCase.testcase(2, [$66,$F3,$44,$0F,$BC,$39                           ] , 'tzcnt  r15w,word [rcx]'                           );
  TestCase.testcase(3, [$C4,$E2,$60,$F2,$F0                               ] , 'andn  esi,ebx,eax'                                );
  TestCase.testcase(4, [$C4,$E2,$60,$F2,$31                               ] , 'andn  esi,ebx,dword [rcx]'                        );
  TestCase.testcase(5, [$C4,$42,$00,$F2,$D1                               ] , 'andn  r10d,r15d,r9d'                              );
  TestCase.testcase(6, [$C4,$62,$00,$F2,$11                               ] , 'andn  r10d,r15d,dword [rcx]'                      );
  TestCase.testcase(7, [$C4,$E2,$78,$F7,$F3                               ] , 'bextr  esi,ebx,eax'                               );
  TestCase.testcase(8, [$C4,$E2,$60,$F7,$31                               ] , 'bextr  esi,dword [rcx],ebx'                       );
  TestCase.testcase(9, [$C4,$42,$30,$F7,$D7                               ] , 'bextr  r10d,r15d,r9d'                             );
  TestCase.testcase(10, [$C4,$62,$30,$F7,$11                               ] , 'bextr  r10d,dword [rcx],r9d'                      );
  TestCase.testcase(11, [$F3,$0F,$BC,$D8                                   ] , 'tzcnt  ebx,eax'                                   );
  TestCase.testcase(12, [$F3,$0F,$BC,$19                                   ] , 'tzcnt  ebx,dword [rcx]'                           );
  TestCase.testcase(13, [$F3,$44,$0F,$BC,$39                               ] , 'tzcnt  r15d,dword [rcx]'                          );
  TestCase.testcase(14, [$C4,$E2,$60,$F3,$D8                               ] , 'blsi  ebx,eax'                                    );
  TestCase.testcase(15, [$C4,$E2,$60,$F3,$19                               ] , 'blsi  ebx,dword [rcx]'                            );
  TestCase.testcase(16, [$C4,$E2,$00,$F3,$19                               ] , 'blsi  r15d,dword [rcx]'                           );
  TestCase.testcase(17, [$C4,$E2,$60,$F3,$D0                               ] , 'blsmsk  ebx,eax'                                  );
  TestCase.testcase(18, [$C4,$E2,$60,$F3,$11                               ] , 'blsmsk  ebx,dword [rcx]'                          );
  TestCase.testcase(19, [$C4,$E2,$00,$F3,$11                               ] , 'blsmsk  r15d,dword [rcx]'                         );
  TestCase.testcase(20, [$C4,$E2,$60,$F3,$C8                               ] , 'blsr  ebx,eax'                                    );
  TestCase.testcase(21, [$C4,$E2,$60,$F3,$09                               ] , 'blsr  ebx,dword [rcx]'                            );
  TestCase.testcase(22, [$C4,$E2,$00,$F3,$09                               ] , 'blsr  r15d,dword [rcx]'                           );
  TestCase.testcase(23, [$C4,$E2,$E0,$F2,$F0                               ] , 'andn  rsi,rbx,rax'                                );
  TestCase.testcase(24, [$C4,$E2,$E0,$F2,$31                               ] , 'andn  rsi,rbx,qword [rcx]'                        );
  TestCase.testcase(25, [$C4,$42,$80,$F2,$D1                               ] , 'andn  r10,r15,r9'                                 );
  TestCase.testcase(26, [$C4,$62,$80,$F2,$11                               ] , 'andn  r10,r15,qword [rcx]'                        );
  TestCase.testcase(27, [$C4,$E2,$F8,$F7,$F3                               ] , 'bextr  rsi,rbx,rax'                               );
  TestCase.testcase(28, [$C4,$E2,$F8,$F7,$31                               ] , 'bextr  rsi,qword [rcx],rax'                       );
  TestCase.testcase(29, [$C4,$42,$B0,$F7,$D7                               ] , 'bextr  r10,r15,r9'                                );
  TestCase.testcase(30, [$C4,$62,$B0,$F7,$11                               ] , 'bextr  r10,qword [rcx],r9'                        );
  TestCase.testcase(31, [$F3,$48,$0F,$BC,$D8                               ] , 'tzcnt  rbx,rax'                                   );
  TestCase.testcase(32, [$F3,$48,$0F,$BC,$19                               ] , 'tzcnt  rbx,qword [rcx]'                           );
  TestCase.testcase(33, [$F3,$4D,$0F,$BC,$F9                               ] , 'tzcnt  r15,r9'                                    );
  TestCase.testcase(34, [$F3,$4C,$0F,$BC,$39                               ] , 'tzcnt  r15,qword [rcx]'                           );
  TestCase.testcase(35, [$C4,$E2,$E0,$F3,$D8                               ] , 'blsi  rbx,rax'                                    );
  TestCase.testcase(36, [$C4,$E2,$E0,$F3,$19                               ] , 'blsi  rbx,qword [rcx]'                            );
  TestCase.testcase(37, [$C4,$C2,$80,$F3,$D9                               ] , 'blsi  r15,r9'                                     );
  TestCase.testcase(38, [$C4,$E2,$80,$F3,$19                               ] , 'blsi  r15,qword [rcx]'                            );
  TestCase.testcase(39, [$C4,$E2,$E0,$F3,$D0                               ] , 'blsmsk  rbx,rax'                                  );
  TestCase.testcase(40, [$C4,$E2,$E0,$F3,$11                               ] , 'blsmsk  rbx,qword [rcx]'                          );
  TestCase.testcase(41, [$C4,$C2,$80,$F3,$D1                               ] , 'blsmsk  r15,r9'                                   );
  TestCase.testcase(42, [$C4,$E2,$80,$F3,$11                               ] , 'blsmsk  r15,qword [rcx]'                          );
  TestCase.testcase(43, [$C4,$E2,$E0,$F3,$C8                               ] , 'blsr  rbx,rax'                                    );
  TestCase.testcase(44, [$C4,$E2,$E0,$F3,$09                               ] , 'blsr  rbx,qword [rcx]'                            );
  TestCase.testcase(45, [$C4,$C2,$80,$F3,$C9                               ] , 'blsr  r15,r9'                                     );
  TestCase.testcase(46, [$C4,$E2,$80,$F3,$09                               ] , 'blsr  r15,qword [rcx]'                            );
  TestCase.testcase(47, [$66,$F3,$0F,$BC,$D8                               ] , 'tzcnt  bx,ax'                                     );
  TestCase.testcase(48, [$66,$F3,$0F,$BC,$19                               ] , 'tzcnt  bx,word [rcx]'                             );
  TestCase.testcase(49, [$66,$F3,$44,$0F,$BC,$11                           ] , 'tzcnt  r10w,word [rcx]'                           );
  TestCase.testcase(50, [$66,$F3,$0F,$BC,$19                               ] , 'tzcnt  bx,word [rcx]'                             );
  TestCase.testcase(51, [$C4,$E2,$60,$F2,$F0                               ] , 'andn  esi,ebx,eax'                                );
  TestCase.testcase(52, [$C4,$E2,$60,$F2,$31                               ] , 'andn  esi,ebx,dword [rcx]'                        );
  TestCase.testcase(53, [$C4,$42,$28,$F2,$F9                               ] , 'andn  r15d,r10d,r9d'                              );
  TestCase.testcase(54, [$C4,$62,$28,$F2,$39                               ] , 'andn  r15d,r10d,dword [rcx]'                      );
  TestCase.testcase(55, [$C4,$E2,$60,$F2,$31                               ] , 'andn  esi,ebx,dword [rcx]'                        );
  TestCase.testcase(56, [$C4,$E2,$78,$F7,$F3                               ] , 'bextr  esi,ebx,eax'                               );
  TestCase.testcase(57, [$C4,$E2,$60,$F7,$31                               ] , 'bextr  esi,dword [rcx],ebx'                       );
  TestCase.testcase(58, [$C4,$42,$30,$F7,$FA                               ] , 'bextr  r15d,r10d,r9d'                             );
  TestCase.testcase(59, [$C4,$62,$30,$F7,$39                               ] , 'bextr  r15d,dword [rcx],r9d'                      );
  TestCase.testcase(60, [$C4,$E2,$60,$F7,$31                               ] , 'bextr  esi,dword [rcx],ebx'                       );
  TestCase.testcase(61, [$F3,$0F,$BC,$D8                                   ] , 'tzcnt  ebx,eax'                                   );
  TestCase.testcase(62, [$F3,$0F,$BC,$19                                   ] , 'tzcnt  ebx,dword [rcx]'                           );
  TestCase.testcase(63, [$F3,$44,$0F,$BC,$11                               ] , 'tzcnt  r10d,dword [rcx]'                          );
  TestCase.testcase(64, [$F3,$0F,$BC,$19                                   ] , 'tzcnt  ebx,dword [rcx]'                           );
  TestCase.testcase(65, [$C4,$E2,$60,$F3,$D8                               ] , 'blsi  ebx,eax'                                    );
  TestCase.testcase(66, [$C4,$E2,$60,$F3,$19                               ] , 'blsi  ebx,dword [rcx]'                            );
  TestCase.testcase(67, [$C4,$E2,$28,$F3,$19                               ] , 'blsi  r10d,dword [rcx]'                           );
  TestCase.testcase(68, [$C4,$E2,$60,$F3,$19                               ] , 'blsi  ebx,dword [rcx]'                            );
  TestCase.testcase(69, [$C4,$E2,$60,$F3,$D0                               ] , 'blsmsk  ebx,eax'                                  );
  TestCase.testcase(70, [$C4,$E2,$60,$F3,$11                               ] , 'blsmsk  ebx,dword [rcx]'                          );
  TestCase.testcase(71, [$C4,$E2,$28,$F3,$11                               ] , 'blsmsk  r10d,dword [rcx]'                         );
  TestCase.testcase(72, [$C4,$E2,$60,$F3,$11                               ] , 'blsmsk  ebx,dword [rcx]'                          );
  TestCase.testcase(73, [$C4,$E2,$60,$F3,$C8                               ] , 'blsr  ebx,eax'                                    );
  TestCase.testcase(74, [$C4,$E2,$60,$F3,$09                               ] , 'blsr  ebx,dword [rcx]'                            );
  TestCase.testcase(75, [$C4,$E2,$28,$F3,$09                               ] , 'blsr  r10d,dword [rcx]'                           );
  TestCase.testcase(76, [$C4,$E2,$60,$F3,$09                               ] , 'blsr  ebx,dword [rcx]'                            );
  TestCase.testcase(77, [$C4,$E2,$E0,$F2,$F0                               ] , 'andn  rsi,rbx,rax'                                );
  TestCase.testcase(78, [$C4,$E2,$E0,$F2,$31                               ] , 'andn  rsi,rbx,qword [rcx]'                        );
  TestCase.testcase(79, [$C4,$42,$80,$F2,$D1                               ] , 'andn  r10,r15,r9'                                 );
  TestCase.testcase(80, [$C4,$62,$80,$F2,$11                               ] , 'andn  r10,r15,qword [rcx]'                        );
  TestCase.testcase(81, [$C4,$E2,$E0,$F2,$31                               ] , 'andn  rsi,rbx,qword [rcx]'                        );
  TestCase.testcase(82, [$C4,$E2,$F8,$F7,$F3                               ] , 'bextr  rsi,rbx,rax'                               );
  TestCase.testcase(83, [$C4,$E2,$F8,$F7,$31                               ] , 'bextr  rsi,qword [rcx],rax'                       );
  TestCase.testcase(84, [$C4,$42,$B0,$F7,$D7                               ] , 'bextr  r10,r15,r9'                                );
  TestCase.testcase(85, [$C4,$62,$B0,$F7,$11                               ] , 'bextr  r10,qword [rcx],r9'                        );
  TestCase.testcase(86, [$C4,$E2,$F8,$F7,$31                               ] , 'bextr  rsi,qword [rcx],rax'                       );
  TestCase.testcase(87, [$F3,$48,$0F,$BC,$D8                               ] , 'tzcnt  rbx,rax'                                   );
  TestCase.testcase(88, [$F3,$48,$0F,$BC,$19                               ] , 'tzcnt  rbx,qword [rcx]'                           );
  TestCase.testcase(89, [$F3,$4D,$0F,$BC,$F9                               ] , 'tzcnt  r15,r9'                                    );
  TestCase.testcase(90, [$F3,$4C,$0F,$BC,$39                               ] , 'tzcnt  r15,qword [rcx]'                           );
  TestCase.testcase(91, [$F3,$48,$0F,$BC,$19                               ] , 'tzcnt  rbx,qword [rcx]'                           );
  TestCase.testcase(92, [$C4,$E2,$E0,$F3,$D8                               ] , 'blsi  rbx,rax'                                    );
  TestCase.testcase(93, [$C4,$E2,$E0,$F3,$19                               ] , 'blsi  rbx,qword [rcx]'                            );
  TestCase.testcase(94, [$C4,$C2,$80,$F3,$D9                               ] , 'blsi  r15,r9'                                     );
  TestCase.testcase(95, [$C4,$E2,$80,$F3,$19                               ] , 'blsi  r15,qword [rcx]'                            );
  TestCase.testcase(96, [$C4,$E2,$E0,$F3,$19                               ] , 'blsi  rbx,qword [rcx]'                            );
  TestCase.testcase(97, [$C4,$E2,$E0,$F3,$D0                               ] , 'blsmsk  rbx,rax'                                  );
  TestCase.testcase(98, [$C4,$E2,$E0,$F3,$11                               ] , 'blsmsk  rbx,qword [rcx]'                          );
  TestCase.testcase(99, [$C4,$C2,$80,$F3,$D1                               ] , 'blsmsk  r15,r9'                                   );
  TestCase.testcase(100, [$C4,$E2,$80,$F3,$11                               ] , 'blsmsk  r15,qword [rcx]'                          );
  TestCase.testcase(101, [$C4,$E2,$E0,$F3,$11                               ] , 'blsmsk  rbx,qword [rcx]'                          );
  TestCase.testcase(102, [$C4,$E2,$E0,$F3,$C8                               ] , 'blsr  rbx,rax'                                    );
  TestCase.testcase(103, [$C4,$E2,$E0,$F3,$09                               ] , 'blsr  rbx,qword [rcx]'                            );
  TestCase.testcase(104, [$C4,$C2,$80,$F3,$C9                               ] , 'blsr  r15,r9'                                     );
  TestCase.testcase(105, [$C4,$E2,$80,$F3,$09                               ] , 'blsr  r15,qword [rcx]'                            );
  TestCase.testcase(106, [$C4,$E2,$E0,$F3,$09                               ] , 'blsr  rbx,qword [rcx]'                            );
  TestCase.Stop();
  TestCase.SaveToFile('../../../log/x64.bmi.log');
end;

end.