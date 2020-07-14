.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x66a8, %rsi
lea addresses_normal_ht+0x1cc91, %rdi
and %rax, %rax
mov $13, %rcx
rep movsq
nop
nop
dec %rcx
lea addresses_A_ht+0x1784e, %rdx
nop
nop
nop
nop
nop
add $43503, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
nop
sub $4206, %r10
lea addresses_A_ht+0x90dd, %rsi
nop
nop
xor $26017, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
and %r10, %r10
lea addresses_UC_ht+0xd8fe, %rdx
nop
nop
nop
nop
and $22107, %r10
movb $0x61, (%rdx)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1efce, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%rax)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x104b4, %rsi
lea addresses_WC_ht+0x100d6, %rdi
nop
nop
nop
nop
inc %rdx
mov $42, %rcx
rep movsw
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x1d4ae, %rcx
clflush (%rcx)
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
and $25955, %rdi
lea addresses_UC_ht+0x1e98e, %rsi
lea addresses_WT_ht+0xb2a8, %rdi
nop
add $35333, %rbx
mov $11, %rcx
rep movsw
nop
sub %r10, %r10
lea addresses_D_ht+0x1304e, %rdx
nop
and %rcx, %rcx
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
and $38123, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Load
lea addresses_A+0x10ce, %rbp
nop
xor $59830, %r8
movb (%rbp), %r15b
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x1b24e, %r13
nop
cmp $45720, %rbp
movl $0x51525354, (%r13)
nop
nop
cmp $44935, %r8

// Store
lea addresses_RW+0xe68e, %rbp
nop
add $2325, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rbp)
nop
xor $57544, %r13

// Load
lea addresses_WC+0x87a2, %r8
nop
nop
xor %rax, %rax
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
dec %r13

// Store
mov $0xb1e, %rbp
nop
add $41253, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rbp)
inc %r13

// Store
lea addresses_US+0x374e, %rbp
nop
nop
nop
nop
sub $17693, %r14
movw $0x5152, (%rbp)
nop
nop
nop
cmp $391, %rbp

// Load
lea addresses_WC+0x326e, %rbp
nop
nop
cmp $17750, %rax
mov (%rbp), %r13d
nop
nop
nop
add $18278, %r15

// Store
lea addresses_UC+0x185b5, %r15
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_UC+0x13a4e, %r13
nop
inc %rdi
movb $0x51, (%r13)
nop
nop
add $15994, %r8

// Store
mov $0x1518b4000000024e, %r8
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%r8)
nop
nop
sub $9457, %r15

// Store
lea addresses_normal+0x3d28, %r13
add $61235, %r15
movl $0x51525354, (%r13)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
mov $0x1518b4000000024e, %r14
nop
nop
nop
nop
cmp $24842, %r13
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 253, '52': 1393}
00 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 00 00 00 00 00 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 52 00 00 52 00 00 52 00 00 52 52 00 00 00 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 00 52 00 00 52 52 00 00 52 52 52 52 00 52 52 52 00 00 00 00 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 52 52 52 52 52 00 52 52 52 52 52 52 00 00 52 00 52 52 00 52 00 00 52 00 52 00 00 00 52 00 52 52 52 00
*/
