.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10857, %r9
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and $16830, %r15
lea addresses_normal_ht+0x1691, %r9
nop
sub %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r9)
nop
and $20690, %rax
lea addresses_WC_ht+0x176c1, %rsi
lea addresses_D_ht+0x12eed, %rdi
sub %r15, %r15
mov $80, %rcx
rep movsq
nop
inc %rax
lea addresses_WT_ht+0x127c1, %r8
nop
add %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1af11, %rsi
lea addresses_A_ht+0x1e341, %rdi
nop
nop
xor $6855, %r9
mov $42, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x27c1, %rdx
nop
nop
sub $63152, %r8
mov (%rdx), %si
nop
nop
nop
add $58462, %r8
lea addresses_A_ht+0x163c1, %rax
nop
and %rdi, %rdi
movb $0x61, (%rax)
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xc2c1, %rax
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
nop
sub $45887, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1a1c1, %r8
nop
nop
nop
sub $13862, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_WT+0x133c1, %rsi
lea addresses_UC+0x107c1, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $24, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8

// REPMOV
mov $0x7c1, %rsi
mov $0x7c519a0000000151, %rdi
nop
xor $45830, %rax
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x1a6c1, %rdi
nop
add %rdx, %rdx
movw $0x5152, (%rdi)
and %rax, %rax

// Store
lea addresses_A+0x2e01, %rbx
clflush (%rbx)
add $26299, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_A+0x11fc1, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
vmovntdqa (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'48': 229, '00': 922}
48 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 48 48 00 48 00 00 00 48 48 48 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 48 48 48 48 48 00 48 48 00 00 00 48 48 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 00 00 48 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 48 48 00 00 00 48 00 48 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 48 00 00 00 48 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 48 00 00 00 48 00 00 00 00 48 00 48 00 48 00 48 48 48 48 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 48 48 48 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 48 48 00 00 48 48 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 00
*/
