.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12b65, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %esi
nop
nop
nop
nop
nop
sub $20106, %rax
lea addresses_A_ht+0x16525, %rsi
lea addresses_WC_ht+0x8ca5, %rdi
nop
nop
nop
nop
nop
add $26253, %r15
mov $45, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $3267, %rsi
lea addresses_A_ht+0x1ded5, %rsi
lea addresses_WT_ht+0x39e5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $39, %rcx
rep movsl
nop
nop
nop
nop
xor $61103, %rbx
lea addresses_WT_ht+0x12d25, %rbx
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%rbx)
nop
nop
cmp $55592, %rbx
lea addresses_WT_ht+0x17925, %rsi
lea addresses_WT_ht+0x975d, %rdi
nop
nop
nop
cmp %r13, %r13
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1ec2d, %rbx
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
sub $26642, %rdi
lea addresses_WC_ht+0xc025, %rdi
nop
nop
nop
and $3379, %rax
mov (%rdi), %r15d
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x15125, %rsi
lea addresses_PSE+0x15965, %rdi
inc %r15
mov $32, %rcx
rep movsq
nop
nop
sub $34369, %rcx

// Store
lea addresses_PSE+0x1b125, %r14
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r14)
nop
inc %r15

// Store
lea addresses_normal+0x3d25, %rcx
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rcx)
nop
nop
nop
cmp $50491, %r15

// Store
lea addresses_PSE+0x18a25, %rdi
nop
nop
nop
nop
xor $47322, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
sub $46383, %r15

// Store
lea addresses_WT+0x1303d, %rsi
nop
nop
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x10165, %rdi
nop
nop
nop
nop
dec %r15
movb $0x51, (%rdi)
nop
nop
cmp $1886, %rcx

// Store
lea addresses_PSE+0x1bd19, %rcx
nop
cmp $33979, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movaps %xmm1, (%rcx)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_normal+0x15125, %rbx
nop
nop
nop
nop
nop
and $11771, %r15
mov (%rbx), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'34': 3}
34 34 34
*/
