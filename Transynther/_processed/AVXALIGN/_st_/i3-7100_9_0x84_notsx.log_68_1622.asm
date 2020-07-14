.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3264, %r13
nop
nop
sub $52808, %rax
mov (%r13), %bp
cmp $19917, %r15
lea addresses_WC_ht+0x172f4, %rsi
lea addresses_D_ht+0x7fa4, %rdi
nop
nop
nop
sub %r15, %r15
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x7604, %rsi
lea addresses_WC_ht+0x7384, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $4, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x9e4, %rbp
nop
inc %rsi
movb $0x61, (%rbp)
cmp $35333, %rcx
lea addresses_WT_ht+0x4ecc, %rsi
lea addresses_normal_ht+0xe446, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $59689, %r15
mov $61, %rcx
rep movsw
cmp %rcx, %rcx
lea addresses_D_ht+0xaea4, %rax
nop
nop
nop
nop
and $33224, %rdi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0xc1e4, %r15
dec %rax
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
add %rax, %rax
lea addresses_WC_ht+0x17974, %rbp
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbp)
nop
add $2968, %rax
lea addresses_A_ht+0x1ba24, %rdi
nop
nop
nop
sub %rsi, %rsi
movb (%rdi), %al
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x9337, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
sub $56860, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x192a4, %rbx
clflush (%rbx)
sub %rax, %rax
movb $0x51, (%rbx)
nop
nop
nop
nop
and %rax, %rax

// REPMOV
lea addresses_D+0x18de4, %rsi
lea addresses_WC+0x9e4, %rdi
nop
and %r8, %r8
mov $37, %rcx
rep movsq
nop
dec %rsi

// Store
lea addresses_D+0x1c114, %rdi
nop
nop
nop
xor $59543, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
xor $62303, %r9

// REPMOV
lea addresses_PSE+0xa7e4, %rsi
lea addresses_WT+0xbd18, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $54, %rcx
rep movsw
nop
nop
nop
nop
sub $30928, %r15

// Faulty Load
lea addresses_D+0xa9e4, %rcx
nop
nop
add $23714, %rdi
vmovaps (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'33': 8, '36': 60}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 33 36 36 36 36 36 33 36 36 36 36 36 36 36 36 36 36 36 36 33 36 36 36 36 36 36 36 33 36 33 36 33 33 36 36 36 36 36 36 36 36 36 36 36 36 36 36 33 36 36 36 36 36 36
*/
