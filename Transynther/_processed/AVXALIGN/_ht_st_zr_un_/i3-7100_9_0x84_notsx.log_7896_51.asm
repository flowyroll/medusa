.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12046, %rsi
lea addresses_D_ht+0x2352, %rdi
nop
nop
dec %r12
mov $23, %rcx
rep movsq
add $52699, %r13
lea addresses_A_ht+0x1983a, %r15
nop
nop
nop
and $44224, %r12
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
dec %rcx
lea addresses_A_ht+0x12352, %rdi
cmp %r14, %r14
mov (%rdi), %r12
nop
nop
nop
nop
and $30180, %r15
lea addresses_A_ht+0x176d2, %rdi
nop
nop
nop
nop
nop
and $25500, %rsi
mov (%rdi), %r13
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xe432, %r15
add $47851, %r14
mov (%r15), %rdi
nop
nop
nop
sub $37968, %rdi
lea addresses_UC_ht+0x43fe, %r13
nop
sub $51670, %rdi
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x4552, %rsi
lea addresses_WC_ht+0x1b52, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r13, %r13
mov $27, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0xcf4a, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $24956, %rdi
movb (%r12), %r15b
inc %rsi
lea addresses_normal_ht+0x17b52, %r12
nop
nop
nop
nop
nop
add $49554, %rsi
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xbc16, %r15
clflush (%r15)
nop
nop
nop
nop
add $43470, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0x92d2, %rsi
lea addresses_UC_ht+0x1cd2, %rdi
clflush (%rdi)
nop
nop
nop
add $37818, %rax
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x79ba, %r12
cmp %rax, %rax
movl $0x61626364, (%r12)
nop
dec %rax
lea addresses_D_ht+0x18f52, %rsi
lea addresses_A_ht+0x188e2, %rdi
clflush (%rdi)
nop
inc %r15
mov $28, %rcx
rep movsw
inc %r12
lea addresses_UC_ht+0x1bb52, %rsi
lea addresses_D_ht+0x14a22, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $103, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xc692, %rsi
lea addresses_PSE+0x17dd2, %rdi
nop
nop
cmp $50668, %rbp
mov $95, %rcx
rep movsl
cmp %r15, %r15

// REPMOV
lea addresses_normal+0x130d5, %rsi
lea addresses_PSE+0x6352, %rdi
nop
nop
lfence
mov $71, %rcx
rep movsw
nop
nop
xor %rdi, %rdi

// Faulty Load
mov $0xb52, %r12
nop
nop
nop
nop
sub $59857, %rdi
vmovaps (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'33': 2, '03': 1, '47': 7, '36': 52, '7f': 5, '46': 3, '45': 4, '00': 122, '34': 7700}
00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 47 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 36 34 34 34 34 34 34 34 34 34 34 34 34 36 34 00 34 34 00 34 34 00 34 34 34 47 34 34 00 34 36 45 36 34 47 00 36 34 00 00 00 34 34 34 00 34 36 34 34 46 00 34 34 00 34 34 00 34 00 34 00 34 34 34 00 34 34 00 34 34 34 34 7f 34 34 00 34 34 34 36 00 00 34 36 34 00 34 36 00 34 00 34 34 7f 36 34 00 34 34 36 34 36 00 34 36 34 34 00 00 34 34 36 34 34 34 36 34 34 00 34 34 34 34 34 34 34 34 36 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
