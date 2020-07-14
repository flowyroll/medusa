.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16cd6, %rax
nop
nop
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
nop
and $16892, %r13
lea addresses_D_ht+0xc93e, %r14
nop
nop
nop
nop
add $33814, %r9
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
add %rbx, %rbx
lea addresses_normal_ht+0x54d6, %rdi
nop
nop
nop
xor $12107, %r13
mov (%rdi), %r14d
sub $14056, %rdi
lea addresses_WT_ht+0x99d6, %rsi
lea addresses_WC_ht+0x153e6, %rdi
nop
nop
sub %rax, %rax
mov $32, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x1c6a, %r9
nop
sub $449, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
sub $22219, %r13
lea addresses_D_ht+0x14db6, %r13
nop
nop
nop
inc %r9
movb $0x61, (%r13)
nop
nop
nop
xor $25706, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_RW+0x1a1d6, %r14
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r14)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_RW+0x12376, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
and %r13, %r13

// Load
lea addresses_WC+0x103d4, %rbp
nop
dec %rax
vmovaps (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_WC+0x14863, %r9
nop
nop
nop
and %r8, %r8
movb (%r9), %r13b

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
sub $27104, %rbp

// Store
mov $0x3c2dbe00000004d6, %r8
nop
nop
nop
nop
xor $44148, %r14
movw $0x5152, (%r8)
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_US+0xe4d6, %r14
nop
nop
nop
nop
nop
add $28143, %rbp
movb (%r14), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'52': 64}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
