.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c008, %r13
nop
nop
nop
xor $42878, %r15
movw $0x6162, (%r13)
cmp $9115, %r11
lea addresses_WC_ht+0x75ee, %rax
nop
nop
cmp %rcx, %rcx
movb (%rax), %r14b
nop
and $61481, %r11
lea addresses_WC_ht+0x4d88, %rsi
nop
nop
cmp $8372, %r13
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
dec %rcx
lea addresses_WC_ht+0x1ac08, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %r15, %r15
movb (%r11), %r14b
nop
nop
and $55846, %rsi
lea addresses_normal_ht+0x1ec08, %rsi
lea addresses_WC_ht+0x2808, %rdi
inc %r11
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $63276, %r14
lea addresses_D_ht+0xc08, %rax
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%rax), %cl
nop
nop
dec %r14
lea addresses_UC_ht+0x90d0, %rsi
lea addresses_WT_ht+0xfa08, %rdi
nop
nop
nop
nop
and $6465, %rax
mov $119, %rcx
rep movsw
add $63344, %rdi
lea addresses_normal_ht+0x18408, %rcx
nop
nop
nop
xor $47296, %r15
mov (%rcx), %r14
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xbae8, %rdi
nop
nop
nop
add %r15, %r15
movb (%rdi), %r11b
cmp $29697, %rcx
lea addresses_normal_ht+0x1cd08, %rax
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbp

// Store
lea addresses_RW+0x16148, %r9
nop
nop
nop
nop
nop
add $14528, %r11
movw $0x5152, (%r9)
nop
nop
nop
dec %r14

// Store
lea addresses_UC+0x5790, %r8
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%r8)
nop
add $48316, %rbp

// Store
lea addresses_PSE+0xf648, %r12
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
cmp $49122, %r9

// Store
mov $0xeb4, %r9
nop
nop
nop
nop
add %r12, %r12
movl $0x51525354, (%r9)
xor %r9, %r9

// Store
lea addresses_UC+0x11808, %r11
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_UC+0xf400, %rbp
nop
nop
nop
sub $35715, %r8
movb $0x51, (%rbp)
nop
nop
nop
cmp $28699, %r10

// Load
lea addresses_PSE+0x15500, %r11
nop
nop
nop
and %r12, %r12
mov (%r11), %r8
and $27772, %rbp

// Store
lea addresses_A+0x808, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%r10)
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_normal+0x5408, %r14
nop
nop
and %r9, %r9
movb (%r14), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': True, 'NT': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
