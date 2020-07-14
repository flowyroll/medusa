.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5b70, %rdx
clflush (%rdx)
dec %r10
movb (%rdx), %cl
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x16370, %r15
nop
nop
sub %r13, %r13
mov (%r15), %r10w
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xecf0, %r13
nop
nop
nop
nop
add $62253, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
and $28229, %r12
lea addresses_WC_ht+0x1cb48, %rsi
lea addresses_WC_ht+0x4670, %rdi
sub %r12, %r12
mov $45, %rcx
rep movsq
and %r12, %r12
lea addresses_WT_ht+0xcf70, %rsi
lea addresses_A_ht+0x1d770, %rdi
nop
nop
nop
nop
sub $40194, %r13
mov $39, %rcx
rep movsb
nop
nop
cmp $11697, %rdi
lea addresses_D_ht+0x3290, %rsi
nop
sub %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
dec %r12
lea addresses_A_ht+0xf630, %rdi
and $17706, %r15
mov (%rdi), %ecx
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x1bb70, %r12
nop
nop
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
xor $34991, %rdx
lea addresses_UC_ht+0x5010, %r10
nop
nop
nop
add $26394, %r13
movb (%r10), %r8b
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1370, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
sub $53861, %r13
lea addresses_D_ht+0x1db70, %r10
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r10), %r12d
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x4a70, %rdi
inc %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add $28319, %rcx
lea addresses_WT_ht+0xf90, %rcx
and %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and $61730, %r12
lea addresses_D_ht+0x1b2c0, %r8
clflush (%r8)
nop
nop
nop
and $56179, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %r8
movntdq %xmm0, (%r8)
nop
nop
nop
xor $17272, %rdx
lea addresses_WT_ht+0x1d81e, %r8
nop
nop
nop
nop
nop
cmp $1076, %rsi
mov (%r8), %rcx
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x4fea, %rsi
lea addresses_RW+0x6770, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0, %rcx
rep movsq
nop
nop
add %r11, %r11

// REPMOV
lea addresses_normal+0x18d70, %rsi
lea addresses_D+0x581c, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $45105, %r10
mov $96, %rcx
rep movsl
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_RW+0x6770, %r10
nop
and $23835, %r14
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
