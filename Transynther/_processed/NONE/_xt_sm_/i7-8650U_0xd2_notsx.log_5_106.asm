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
lea addresses_normal_ht+0x1831f, %r14
nop
nop
nop
nop
nop
cmp %r10, %r10
movl $0x61626364, (%r14)
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1adc7, %r12
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
add $45122, %rsi
lea addresses_UC_ht+0x3f9f, %r12
nop
nop
add $18786, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
and $31968, %rsi
lea addresses_D_ht+0x1e97f, %r9
nop
nop
nop
nop
nop
add $28335, %rdx
movw $0x6162, (%r9)
and %r12, %r12
lea addresses_WC_ht+0x117bf, %rsi
lea addresses_normal_ht+0x1e79f, %rdi
nop
nop
nop
sub $60210, %rdx
mov $22, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_A_ht+0x6f9f, %r12
nop
nop
nop
nop
add $59740, %rdi
movb (%r12), %dl
add %r9, %r9
lea addresses_UC_ht+0x1748f, %r10
add $64393, %r14
movb (%r10), %r12b
nop
inc %rdx
lea addresses_D_ht+0x178d7, %rcx
and %r9, %r9
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
sub $26759, %rcx
lea addresses_D_ht+0x1779f, %rsi
nop
and $50595, %rdx
movb (%rsi), %r10b
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x16faf, %r12
nop
nop
sub $22183, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r12)
add %r9, %r9
lea addresses_UC_ht+0x11d9f, %rdx
nop
add $33372, %r10
movw $0x6162, (%rdx)
sub %rcx, %rcx
lea addresses_D_ht+0x4de3, %rsi
clflush (%rsi)
nop
nop
xor %r14, %r14
movb $0x61, (%rsi)
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xbabd, %rsi
lea addresses_normal_ht+0x1485f, %rdi
clflush (%rdi)
add $16927, %r9
mov $51, %rcx
rep movsb
nop
nop
nop
nop
cmp $7429, %r9
lea addresses_normal_ht+0x1ebff, %rdi
nop
and %rsi, %rsi
movb $0x61, (%rdi)
sub $25849, %r10
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
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_A+0x809f, %rsi
nop
sub %r11, %r11
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WT+0x779f, %r10
nop
nop
nop
nop
add %r8, %r8
movl $0x51525354, (%r10)
nop
xor %r10, %r10

// Store
lea addresses_UC+0x5eb9, %rsi
cmp $31814, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
add $12582, %rsi

// Store
lea addresses_WC+0x4297, %r8
nop
nop
nop
dec %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_PSE+0x79f, %r11
nop
nop
xor $16797, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
dec %r10

// Store
mov $0x2df, %r8
nop
nop
nop
nop
nop
cmp $23145, %r11
movb $0x51, (%r8)
nop
nop
nop
add $1642, %r8

// Faulty Load
lea addresses_PSE+0x79f, %r10
nop
nop
nop
nop
nop
cmp $28253, %r13
mov (%r10), %r11d
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 5}
58 58 58 58 58
*/
