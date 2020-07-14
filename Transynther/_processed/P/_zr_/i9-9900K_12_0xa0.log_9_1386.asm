.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17d6f, %rcx
nop
inc %r10
movb $0x61, (%rcx)
and %rbp, %rbp
lea addresses_normal_ht+0x19299, %r13
nop
nop
nop
nop
nop
add $57877, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x35c1, %rsi
lea addresses_WC_ht+0x1bf99, %rdi
nop
nop
nop
nop
sub $19537, %r10
mov $39, %rcx
rep movsq
nop
nop
nop
cmp $58953, %rdi
lea addresses_WC_ht+0x1ddb1, %rbp
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x16819, %r14
nop
nop
nop
sub %r8, %r8
movb $0x61, (%r14)
nop
nop
mfence
lea addresses_UC_ht+0x1ad61, %rcx
dec %r10
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
and $63277, %rbp
lea addresses_WT_ht+0x3354, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
sub $33094, %rcx
lea addresses_D_ht+0x19d99, %rcx
nop
nop
add %rdi, %rdi
mov (%rcx), %r8d
inc %r8
lea addresses_UC_ht+0xb017, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm6, (%rdi)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x37d9, %r14
nop
sub $36602, %rdi
mov (%r14), %r12d
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x199, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r8), %r13
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x7799, %r8
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xc339, %r10
nop
nop
nop
nop
sub $19776, %rcx
movups (%r10), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
cmp $21276, %rbp
lea addresses_WT_ht+0x9399, %r14
lfence
mov (%r14), %rbp
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbx
push %rsi

// Faulty Load
mov $0xd99, %rsi
nop
xor $42636, %rax
mov (%rsi), %ebx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
