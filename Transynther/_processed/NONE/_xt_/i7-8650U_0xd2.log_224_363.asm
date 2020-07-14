.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3476, %rsi
lea addresses_WC_ht+0xb13e, %rdi
clflush (%rdi)
xor $32288, %r9
mov $29, %rcx
rep movsb
nop
nop
mfence
lea addresses_UC_ht+0x1d146, %rcx
nop
nop
nop
cmp $31643, %r13
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
cmp $8532, %rcx
lea addresses_normal_ht+0x57c6, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r8), %rdi
nop
xor $51429, %rdi
lea addresses_D_ht+0xac3e, %rcx
nop
dec %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $26740, %r9
lea addresses_UC_ht+0xf146, %rdi
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %rdi
movaps %xmm2, (%rdi)
nop
nop
nop
nop
cmp $35445, %r13
lea addresses_normal_ht+0x127a6, %rsi
lea addresses_WT_ht+0x1ed6a, %rdi
nop
nop
nop
add %rdx, %rdx
mov $76, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0x3346, %rax
clflush (%rax)
nop
inc %rbp
movl $0x51525354, (%rax)
nop
cmp $48391, %rcx

// Store
lea addresses_WC+0x17f46, %rax
nop
nop
and $9644, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
dec %r13

// Load
lea addresses_normal+0x6916, %rax
nop
nop
nop
nop
nop
cmp $30052, %r12
mov (%rax), %r9
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_D+0x12b46, %r9
nop
nop
nop
nop
nop
sub %r12, %r12
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'36': 224}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
