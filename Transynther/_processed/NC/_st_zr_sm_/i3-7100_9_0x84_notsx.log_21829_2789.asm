.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16b78, %r13
nop
sub $4532, %r9
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
nop
cmp $47901, %rcx
lea addresses_UC_ht+0x3ca9, %rdi
nop
nop
nop
nop
nop
and $55092, %r10
movb $0x61, (%rdi)
nop
and $5047, %rcx
lea addresses_normal_ht+0x1b5d6, %rax
nop
nop
nop
nop
nop
cmp $41793, %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x10376, %r13
nop
and %r10, %r10
movb $0x61, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e616, %rdi
clflush (%rdi)
nop
and $23058, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x7616, %rdi
nop
nop
add $40629, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
and $65153, %rcx
lea addresses_WT_ht+0x3d56, %rdi
nop
nop
nop
and $13106, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xa216, %rsi
lea addresses_WT_ht+0x15496, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $41, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1e39, %rsi
lea addresses_WT_ht+0xcd16, %rdi
clflush (%rsi)
nop
nop
nop
cmp $7303, %r13
mov $100, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x616, %rcx
nop
sub $38130, %r9
movl $0x61626364, (%rcx)
nop
xor $18171, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xd707, %rax
nop
nop
add $30660, %r13
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
add $40602, %rbp

// REPMOV
mov $0x16, %rsi
lea addresses_D+0x13056, %rdi
nop
nop
xor %r13, %r13
mov $4, %rcx
rep movsw
nop
nop
add %rcx, %rcx

// Store
mov $0x1cd5ca0000000616, %rbp
clflush (%rbp)
nop
nop
sub $51394, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
sub $45074, %rsi

// Faulty Load
mov $0x1cd5ca0000000616, %rcx
nop
cmp $47701, %rax
mov (%rcx), %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 5213, '58': 16616}
58 58 58 00 58 58 00 58 00 58 58 00 58 58 58 58 58 00 58 00 00 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 00 00 00 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 00 00 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 58 00 58 00 58 00 58 58 00 58 58 58 00 58 58 00 00 58 58 58 00 58 00 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 00 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 00 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 58 58 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58
*/
