.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8a43, %rsi
lea addresses_D_ht+0x13ddf, %rdi
clflush (%rsi)
and $377, %rax
mov $78, %rcx
rep movsq
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x501b, %r13
nop
sub $35807, %rbp
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rcx
cmp %rdx, %rdx
lea addresses_A_ht+0xbfc3, %rsi
lea addresses_D_ht+0xc6c3, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $97, %rcx
rep movsq
nop
nop
nop
nop
xor $8447, %rcx
lea addresses_D_ht+0x13edb, %rdx
nop
nop
nop
nop
cmp $49037, %rsi
movb (%rdx), %r11b
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x11cc3, %rdx
nop
nop
dec %rsi
movw $0x6162, (%rdx)
nop
sub $52599, %rbp
lea addresses_WT_ht+0x219b, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdx), %bp
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x3b03, %r13
sub %rbp, %rbp
movw $0x6162, (%r13)
nop
sub $50242, %rbp
lea addresses_WC_ht+0xdd03, %rsi
lea addresses_A_ht+0x16f83, %rdi
nop
nop
add %r13, %r13
mov $115, %rcx
rep movsb
nop
nop
nop
nop
cmp $40393, %r11
lea addresses_A_ht+0x112c3, %rsi
lea addresses_A_ht+0xdcc3, %rdi
nop
xor $33217, %r13
mov $104, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_A_ht+0x1d5ab, %r11
nop
nop
nop
cmp %rdx, %rdx
movb (%r11), %al
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x4cc3, %r13
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r13), %ax
nop
nop
and $9054, %rdi
lea addresses_WC_ht+0xe143, %r13
nop
nop
nop
nop
and %rsi, %rsi
mov (%r13), %r11
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x13ec3, %rdx
nop
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%rdx)
add %rax, %rax
lea addresses_WC_ht+0x57f, %rsi
lea addresses_normal_ht+0x7793, %rdi
nop
sub $17964, %r13
mov $96, %rcx
rep movsb
add %r13, %r13
lea addresses_A_ht+0x1e683, %rsi
nop
nop
xor $14958, %r11
mov (%rsi), %di
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x154c3, %r10
nop
nop
nop
cmp $64005, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
nop
and $59546, %r11

// Store
lea addresses_PSE+0x60c3, %r11
clflush (%r11)
nop
nop
nop
add $61175, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
cmp $31779, %rbp

// Store
mov $0x71d440000000dfa, %r11
cmp $20272, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r11)
dec %rdx

// Faulty Load
lea addresses_A+0x6cc3, %r14
inc %rdx
vmovaps (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'00': 9843, '45': 1820, '48': 10160, '44': 6}
00 00 45 00 48 48 00 48 00 00 48 48 48 00 00 00 45 00 00 48 48 48 00 00 00 00 00 00 00 48 48 48 00 00 45 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 45 45 00 45 00 48 00 45 45 00 00 48 00 48 45 00 00 00 00 48 48 00 00 48 48 00 00 48 48 00 48 48 48 00 48 00 48 48 45 00 45 00 00 00 48 48 00 45 00 00 00 48 48 48 00 48 00 48 00 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 00 00 48 00 48 48 45 48 00 00 00 45 00 48 00 48 48 48 45 00 48 48 48 48 45 00 48 00 48 00 00 48 48 00 48 48 48 48 48 00 00 00 48 48 48 00 00 00 48 48 48 00 45 00 00 00 48 00 48 48 48 48 00 48 00 48 48 45 45 48 00 00 48 00 00 48 48 00 48 00 48 48 48 48 00 48 48 00 48 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 48 48 48 00 00 48 48 48 48 00 00 48 00 00 00 00 48 48 00 00 00 48 00 48 48 45 48 00 45 00 00 00 00 00 00 00 00 48 48 00 48 45 00 48 00 48 48 45 00 45 00 00 00 00 00 48 48 00 48 00 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 00 00 48 48 45 48 00 00 48 48 48 48 48 48 00 00 48 45 00 00 48 00 00 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 00 48 00 00 48 48 00 00 48 48 00 48 00 00 48 00 48 00 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 00 48 48 48 48 45 00 48 48 00 48 00 00 45 00 48 00 00 00 00 48 48 00 48 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 48 48 48 48 00 48 48 45 48 48 00 45 45 00 48 48 48 48 48 48 48 00 48 45 48 45 45 00 00 48 00 48 48 48 48 00 48 48 00 45 48 00 45 00 00 00 48 48 48 48 48 48 48 00 00 00 48 00 00 48 48 48 48 48 00 48 00 48 45 00 48 00 48 00 00 48 00 48 45 48 48 00 00 00 45 48 00 00 48 00 48 00 48 00 00 45 45 00 00 48 00 00 48 00 48 00 00 00 48 00 45 00 00 00 48 48 48 48 00 48 48 48 48 48 00 48 48 00 00 48 48 48 00 48 45 00 48 00 00 48 00 00 48 45 45 00 00 00 48 48 00 48 00 48 00 48 48 00 48 48 48 00 48 48 00 48 00 48 00 48 00 48 48 00 45 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 48 00 48 48 48 00 00 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 48 48 48 48 00 00 48 00 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 00 48 00 00 00 00 00 48 00 48 00 48 48 48 00 45 48 48 45 00 00 48 48 45 00 00 48 48 45 00 00 00 00 48 48 45 45 45 45 48 48 48 00 48 48 48 48 00 00 48 48 00 48 00 00 00 00 00 00 48 00 48 00 48 48 48 48 48 00 45 00 00 00 00 00 48 48 00 00 48 48 45 45 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 45 00 48 48 48 00 48 48 48 00 48 00 48 48 45 00 00 00 48 00 48 00 48 48 00 48 48 48 00 48 00 00 45 00 48 48 48 48 48 00 00 00 00 00 45 00 00 00 00 48 48 48 00 48 00 00 48 48 00 00 00 00 48 00 48 00 00 48 48 45 45 00 00 48 48 45 00 00 48 48 48 00 00 00 48 48 00 00 48 00 48 48 48 00 00 48 48 45 48 00 00 45 00 00 48 48 00 48 48 48 48 45 48 48 48 48 48 00 48 00 00 48 00 00 48 45 45 00 00 00 00 00 00 48 48 48 00 00 45 48 00 00 48 48 00 48 48 45 45 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 45 00 45 00 00 48 48 45 00 00 00 00 00 00 00 00 48 00 48 00 48 00 48
*/
