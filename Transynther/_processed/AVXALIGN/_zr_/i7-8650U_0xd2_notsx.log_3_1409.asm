.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10b7b, %rax
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
sub $45645, %r10
lea addresses_A_ht+0x8e1b, %rsi
lea addresses_WT_ht+0x11a93, %rdi
clflush (%rdi)
nop
cmp $57160, %r15
mov $99, %rcx
rep movsw
nop
nop
nop
nop
sub $22750, %rax
lea addresses_UC_ht+0x105eb, %r10
clflush (%r10)
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%r10)
nop
nop
nop
add $43569, %rdi
lea addresses_WC_ht+0x18a9b, %rsi
lea addresses_A_ht+0x1a41b, %rdi
nop
nop
nop
nop
nop
xor $49679, %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $38633, %rcx
lea addresses_D_ht+0xb79b, %rsi
lea addresses_UC_ht+0x1cd1b, %rdi
nop
nop
nop
add $39101, %rbx
mov $111, %rcx
rep movsw
xor $15036, %rbx
lea addresses_UC_ht+0x1e39b, %rcx
nop
and $47105, %rdi
movb $0x61, (%rcx)
nop
inc %rcx
lea addresses_UC_ht+0x15ccf, %rdi
add $19623, %rcx
movl $0x61626364, (%rdi)
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x97fb, %rsi
nop
xor %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x13a01, %rsi
nop
sub $3717, %r10
movw $0x6162, (%rsi)
nop
nop
nop
and $11091, %r15
lea addresses_UC_ht+0x5c1b, %rax
nop
add %r15, %r15
mov (%rax), %esi
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Load
lea addresses_US+0x16c1b, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rcx), %r13w
inc %r9

// Load
lea addresses_WT+0x1341b, %rbp
nop
nop
nop
nop
nop
and %r8, %r8
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_US+0x16c1b, %rbx
nop
nop
nop
nop
cmp %r13, %r13
mov (%rbx), %bp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 3}
00 00 00
*/
