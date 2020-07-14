.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16e28, %r15
nop
nop
nop
nop
mfence
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x1aea4, %rsi
lea addresses_normal_ht+0x8068, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
and $31926, %rdi
lea addresses_normal_ht+0x7a8, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rdi)
nop
dec %r12
lea addresses_D_ht+0xceb9, %rsi
lea addresses_D_ht+0x15148, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $104, %rcx
rep movsq
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1ca6c, %rsi
lea addresses_normal_ht+0x6e68, %rdi
nop
nop
nop
add $55362, %r15
mov $40, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xaa68, %r12
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub $12729, %rsi
lea addresses_WC_ht+0x1dab8, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $37772, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rcx)
and %r10, %r10
lea addresses_WT_ht+0xbb43, %rsi
lea addresses_normal_ht+0x8868, %rdi
nop
sub %rbx, %rbx
mov $73, %rcx
rep movsb
nop
nop
nop
nop
and $28096, %rbx
lea addresses_WC_ht+0x6818, %rsi
nop
nop
cmp $47718, %rcx
movb $0x61, (%rsi)
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x12368, %r10
nop
nop
nop
sub %r12, %r12
mov (%r10), %di
nop
sub $41979, %rbx
lea addresses_WT_ht+0x1be28, %rsi
lea addresses_UC_ht+0xae88, %rdi
nop
nop
nop
cmp $31346, %rbx
mov $99, %rcx
rep movsq
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x9268, %r15
nop
nop
nop
nop
cmp $48499, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movaps %xmm0, (%r15)
nop
inc %rax

// Store
mov $0x65c18f0000000068, %rcx
clflush (%rcx)
cmp $23639, %r12
movl $0x51525354, (%rcx)
nop
sub $63870, %rax

// Faulty Load
lea addresses_D+0x9268, %r15
nop
nop
nop
nop
sub $21742, %rbp
mov (%r15), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'58': 412}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
