.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf01, %r15
nop
nop
nop
cmp %rdx, %rdx
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xdcb9, %rax
nop
nop
nop
xor $45613, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rax
vmovntdq %ymm4, (%rax)
nop
nop
nop
nop
nop
cmp $64279, %r9
lea addresses_WC_ht+0x8129, %rbp
nop
nop
inc %rbx
movw $0x6162, (%rbp)
nop
add %r15, %r15
lea addresses_WT_ht+0xfce2, %rsi
lea addresses_A_ht+0x9789, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $61, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_UC_ht+0xa152, %r15
nop
xor %rax, %rax
movb (%r15), %r9b
and %rdi, %rdi
lea addresses_WC_ht+0x15ee9, %r9
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%r9)
nop
nop
nop
sub $53032, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1b5e9, %rcx
nop
nop
cmp %rax, %rax
mov (%rcx), %r10d
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'00': 107}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
