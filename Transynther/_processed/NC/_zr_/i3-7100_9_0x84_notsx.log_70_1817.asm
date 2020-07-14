.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe8f1, %rsi
lea addresses_A_ht+0xbe80, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $50, %rcx
rep movsl
nop
nop
cmp $44764, %rbp
lea addresses_WC_ht+0x1772b, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add $13230, %rbx
movb (%rax), %cl
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x8b2b, %rbx
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rbx), %si
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1ee93, %rsi
lea addresses_WT_ht+0x1872b, %rdi
nop
nop
nop
sub %r9, %r9
mov $127, %rcx
rep movsw
nop
xor $51683, %rdi
lea addresses_WT_ht+0x9b2b, %rax
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x4b2b, %rsi
and %rdi, %rdi
mov (%rsi), %ebp
nop
xor %rax, %rax
lea addresses_WC_ht+0xeb2b, %rbx
nop
nop
nop
sub $35357, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x188d7, %rsi
lea addresses_WT_ht+0x16cd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $64700, %r10
mov $80, %rcx
rep movsl
nop
nop
nop
sub $30780, %rbp
lea addresses_normal_ht+0x1db2b, %rsi
lea addresses_WC_ht+0x27d3, %rdi
cmp %rbx, %rbx
mov $24, %rcx
rep movsl
nop
nop
nop
nop
add $5543, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0xa33e, %rbx
nop
nop
sub %r13, %r13
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_PSE+0xe22b, %rax
nop
nop
nop
nop
xor $25301, %rdx
movb $0x51, (%rax)
nop
nop
add $63559, %rcx

// Store
lea addresses_PSE+0x189ab, %rcx
clflush (%rcx)
nop
nop
nop
lfence
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
cmp $23488, %r12

// Faulty Load
mov $0x7ea33b0000000b2b, %rdx
nop
add $64563, %rax
mov (%rdx), %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 70}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
