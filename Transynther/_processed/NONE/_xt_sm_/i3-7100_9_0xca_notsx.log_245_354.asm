.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d782, %rcx
nop
nop
nop
nop
nop
inc %r12
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
sub $3318, %rsi
lea addresses_normal_ht+0x12382, %r9
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r9)
nop
xor %r9, %r9
lea addresses_WC_ht+0x1850a, %rdx
nop
nop
nop
and $21337, %r10
movb $0x61, (%rdx)
sub %r14, %r14
lea addresses_WC_ht+0x1af82, %r9
nop
nop
add %rdx, %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
sub $31104, %r14
lea addresses_UC_ht+0x16c26, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $33470, %r10
movw $0x6162, (%rsi)
nop
nop
xor $49033, %r9
lea addresses_A_ht+0x5836, %r9
clflush (%r9)
nop
xor %rsi, %rsi
movups (%r9), %xmm3
vpextrq $1, %xmm3, %r10
nop
and $60049, %rsi
lea addresses_D_ht+0x19b42, %rsi
lea addresses_normal_ht+0x2442, %rdi
dec %r14
mov $65, %rcx
rep movsq
add $24644, %rdx
lea addresses_D_ht+0x16d82, %r14
nop
dec %rdi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
nop
nop
xor $17070, %rdx
lea addresses_UC_ht+0xbe82, %rcx
nop
nop
nop
nop
add $43035, %r9
movl $0x61626364, (%rcx)
nop
xor $42887, %rsi
lea addresses_UC_ht+0x16b82, %rdi
nop
nop
nop
dec %r14
mov (%rdi), %esi
nop
nop
nop
add $8043, %r10
lea addresses_UC_ht+0x1702, %r9
nop
nop
nop
nop
nop
cmp $55420, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
and %rsi, %rsi
lea addresses_A_ht+0x16f82, %rsi
lea addresses_UC_ht+0x822b, %rdi
nop
nop
nop
nop
add $59240, %r12
mov $76, %rcx
rep movsq
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x5182, %rsi
nop
add %r12, %r12
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1397e, %rsi
lea addresses_A_ht+0x5382, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $1, %rcx
rep movsw
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_UC+0xd032, %r11
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_A+0x2d82, %r8
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_UC+0x1bc02, %rbp
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
add %rax, %rax

// Load
lea addresses_WT+0x1a288, %rbp
nop
nop
add %r8, %r8
movb (%rbp), %al
nop
nop
nop
sub $52646, %rsi

// Store
lea addresses_D+0xdf82, %r11
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
xor %r12, %r12

// Store
mov $0x729b8c000000024a, %rsi
nop
cmp %r11, %r11
movw $0x5152, (%rsi)
add $22822, %r8

// Store
lea addresses_PSE+0xf382, %r11
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%r11)
nop
nop
nop
nop
cmp %rax, %rax

// Load
lea addresses_WC+0x9b82, %rbp
nop
cmp $25546, %r11
movb (%rbp), %r12b
nop
nop
nop
cmp $13345, %r11

// Store
lea addresses_RW+0x1b82, %rax
clflush (%rax)
nop
cmp %r11, %r11
movl $0x51525354, (%rax)
and $33021, %r12

// Faulty Load
lea addresses_PSE+0xf382, %r12
nop
cmp $55319, %rsi
mov (%r12), %ax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'52': 245}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
