.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18529, %r13
nop
nop
dec %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
dec %rax
lea addresses_WT_ht+0xbf09, %rsi
nop
and $51083, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rsi)
nop
sub $35673, %rbx
lea addresses_normal_ht+0xbe09, %rsi
lea addresses_A_ht+0x17a09, %rdi
xor $20358, %r10
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xae09, %rax
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
add $50314, %rdi
lea addresses_D_ht+0x166f2, %rsi
nop
nop
nop
nop
nop
cmp $19829, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rsi)
inc %rcx
lea addresses_normal_ht+0xd609, %rbx
nop
nop
nop
nop
nop
sub $49481, %r10
movl $0x61626364, (%rbx)
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x1f89, %rsi
lea addresses_WT_ht+0xb63, %rdi
nop
sub %rax, %rax
mov $60, %rcx
rep movsb
nop
nop
inc %rax
lea addresses_WT_ht+0x1b9cb, %rsi
lea addresses_A_ht+0x8e49, %rdi
nop
nop
nop
nop
and $6475, %rbx
mov $69, %rcx
rep movsl
nop
nop
nop
sub $55945, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0xd5d9, %r9
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
xor $25434, %rcx

// Store
lea addresses_A+0x8209, %rbp
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rbp
vmovaps %ymm1, (%rbp)
nop
nop
nop
nop
xor $40714, %rbp

// Store
mov $0x59afeb0000000e09, %rbp
nop
nop
nop
nop
nop
cmp $55530, %r13
movw $0x5152, (%rbp)
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x166a9, %r10
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub $34610, %r13

// Store
lea addresses_PSE+0xe1d9, %rdi
nop
nop
nop
sub $7345, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdi)
nop
cmp $22701, %rcx

// Load
lea addresses_WC+0xed49, %r13
nop
nop
nop
nop
nop
add %r10, %r10
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_D+0x10609, %rcx
nop
xor $62239, %r9
movb (%rcx), %r14b
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'36': 1}
36
*/
