.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7541, %rax
nop
nop
nop
nop
nop
xor %r8, %r8
movl $0x61626364, (%rax)
nop
nop
nop
and $31046, %r12
lea addresses_WC_ht+0x1e3c1, %rsi
lea addresses_D_ht+0x4b81, %rdi
sub $51706, %r15
mov $67, %rcx
rep movsl
nop
add %rax, %rax
lea addresses_WT_ht+0x11e45, %r15
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xe7c1, %rsi
lea addresses_WT_ht+0x3551, %rdi
nop
nop
nop
nop
add $41133, %r10
mov $86, %rcx
rep movsw
nop
nop
nop
nop
sub $19597, %r15
lea addresses_UC_ht+0x16bc1, %rsi
lea addresses_WT_ht+0x2bc1, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $20969, %r10
lea addresses_normal_ht+0x7041, %rsi
lea addresses_normal_ht+0xa251, %rdi
nop
add %r8, %r8
mov $69, %rcx
rep movsb
nop
nop
nop
nop
sub $8292, %rcx
lea addresses_normal_ht+0x1896d, %r12
nop
nop
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0xe52, %r15
clflush (%r15)
nop
nop
and %rax, %rax
movw $0x6162, (%r15)
nop
nop
nop
sub $52660, %rsi
lea addresses_WT_ht+0x3b41, %rsi
lea addresses_WC_ht+0xc120, %rdi
nop
nop
nop
nop
nop
sub $43155, %r12
mov $36, %rcx
rep movsq
nop
nop
nop
nop
cmp $59572, %r15
lea addresses_WT_ht+0x1b8c3, %rsi
lea addresses_normal_ht+0x15d1, %rdi
clflush (%rsi)
xor $22846, %rax
mov $36, %rcx
rep movsb
nop
add $48551, %rsi
lea addresses_UC_ht+0xbac1, %rdi
nop
nop
nop
sub %r15, %r15
mov (%rdi), %si
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x46a3, %rsi
lea addresses_UC_ht+0x9b75, %rdi
dec %r8
mov $40, %rcx
rep movsq
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x3bc1, %r9
cmp %r11, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x109b2, %rdi
nop
nop
nop
nop
nop
and $50094, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x4bc1, %r11
nop
sub %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_D+0x1ebc1, %rdi
nop
nop
xor $27186, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
xor $17860, %r14

// Store
lea addresses_RW+0xabc1, %rsi
xor %r14, %r14
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WC+0x377d, %r11
nop
nop
nop
nop
add $16540, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
add $60806, %rdi

// Store
lea addresses_UC+0x9bc1, %rcx
nop
add %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
xor $25521, %rsi

// Store
lea addresses_RW+0x2ab5, %r14
nop
nop
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
xor %r9, %r9

// Store
lea addresses_UC+0x1f28c, %r14
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r14)
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0x10741, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $64034, %rsi

// Store
lea addresses_A+0x1db21, %r9
nop
nop
nop
nop
nop
cmp $11462, %rdi
movb $0x51, (%r9)
inc %rdi

// Store
lea addresses_UC+0x136c1, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp $39522, %rsi

// Load
lea addresses_PSE+0xbd41, %rax
nop
nop
nop
nop
cmp $55428, %r14
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
xor $31343, %rsi

// Faulty Load
lea addresses_WT+0x113c1, %rax
nop
nop
nop
add %rdi, %rdi
mov (%rax), %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'39': 4}
39 39 39 39
*/
