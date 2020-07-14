.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x8403, %rsi
clflush (%rsi)
nop
nop
nop
inc %rdx
movb $0x61, (%rsi)
add $37089, %r8
lea addresses_A_ht+0x2429, %rbp
nop
nop
nop
add $15086, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
cmp $22109, %rcx
lea addresses_WT_ht+0x1741d, %rdi
nop
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub $14742, %rbx
lea addresses_WT_ht+0x505f, %rsi
lea addresses_UC_ht+0x1ec5f, %rdi
and $52589, %rbx
mov $92, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1b71f, %rdi
nop
sub $19561, %rdx
movw $0x6162, (%rdi)
nop
xor $5072, %rdx
lea addresses_A_ht+0xafcf, %rcx
nop
add %rbp, %rbp
mov (%rcx), %di
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x9b1f, %rdx
nop
nop
nop
sub %rbx, %rbx
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_WT+0x1d85f, %rax
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rax)
nop
nop
nop
nop
nop
and $21930, %rdx

// Faulty Load
mov $0x5f, %rdx
nop
inc %r9
mov (%rdx), %r8w
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
