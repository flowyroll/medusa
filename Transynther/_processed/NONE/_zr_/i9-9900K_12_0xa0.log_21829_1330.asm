.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ab10, %rax
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rax)
nop
nop
cmp $2802, %r10
lea addresses_UC_ht+0x16334, %rsi
lea addresses_WC_ht+0x1bb1c, %rdi
nop
inc %r13
mov $62, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x6199, %rsi
lea addresses_WT_ht+0x1191c, %rdi
nop
nop
nop
xor $44130, %r13
mov $28, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x639c, %rsi
nop
sub %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x17d1c, %rsi
lea addresses_normal_ht+0x10d0c, %rdi
nop
cmp $15952, %rax
mov $22, %rcx
rep movsq
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xd48c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $14481, %r10
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
add $14391, %r10
lea addresses_UC_ht+0x1860e, %r13
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0xb32, %r10
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r10
movntdq %xmm1, (%r10)
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0xe51c, %r13
nop
nop
nop
sub $25435, %rax
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
and $47283, %r13
lea addresses_WC_ht+0xb5ac, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rsi), %r13w
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x951c, %r13
nop
nop
add %rax, %rax
mov (%r13), %dx
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x2f1c, %rbp
nop
nop
nop
sub $23519, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_WT+0xad1c, %rbx
nop
nop
xor %rcx, %rcx
mov (%rbx), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
