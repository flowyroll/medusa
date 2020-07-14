.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x4363, %rax
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x18f63, %rbp
nop
cmp $29972, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rbp)
nop
add $44270, %rbp
lea addresses_D_ht+0x1dae3, %r14
nop
nop
nop
add %rbp, %rbp
movb (%r14), %al
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x6563, %rbp
nop
nop
cmp %rax, %rax
movw $0x6162, (%rbp)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1ab53, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
movb (%rax), %bl
nop
xor %r10, %r10
lea addresses_UC_ht+0x1de23, %rsi
lea addresses_WC_ht+0xa563, %rdi
nop
and $50494, %r14
mov $4, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x10887, %rbx
nop
xor $27642, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rbx
vmovaps %ymm7, (%rbx)
nop
nop
nop
nop
nop
sub $8743, %rdx
lea addresses_UC_ht+0x3563, %rcx
nop
cmp $14281, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x12963, %rdi
nop
nop
nop
cmp %rax, %rax
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
nop
and $57991, %rax

// Store
lea addresses_UC+0x1b963, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%rdx)
nop
add $60793, %r15

// Store
lea addresses_normal+0x58db, %rax
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_WC+0xc18f, %rdi
nop
nop
nop
nop
nop
xor $11924, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x1f063, %r15
clflush (%r15)
cmp %r9, %r9
movb $0x51, (%r15)
nop
nop
nop
sub $13875, %r15

// Store
lea addresses_normal+0x15563, %r9
nop
inc %r15
movl $0x51525354, (%r9)
nop
nop
add $54894, %rax

// Load
lea addresses_D+0x18c63, %rbp
nop
xor %rbx, %rbx
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rdi
and $46140, %r9

// Store
lea addresses_normal+0x14f63, %r15
nop
nop
sub $29129, %rbp
movl $0x51525354, (%r15)
dec %rax

// Load
lea addresses_PSE+0x5bc3, %r15
clflush (%r15)
nop
nop
nop
and %r9, %r9
movntdqa (%r15), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
sub $42275, %rbx

// Faulty Load
lea addresses_UC+0x1ad63, %rax
nop
nop
nop
add %rdx, %rdx
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
