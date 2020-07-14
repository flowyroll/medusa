.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x177e6, %rsi
lea addresses_A_ht+0x2c7e, %rdi
nop
nop
cmp %r11, %r11
mov $33, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_normal_ht+0x1827e, %r9
nop
nop
nop
dec %r10
movw $0x6162, (%r9)
and $23113, %rdi
lea addresses_UC_ht+0xae7e, %rsi
nop
nop
dec %r11
mov (%rsi), %r10
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x12e7e, %rsi
lea addresses_A+0xa67e, %rdi
xor %rax, %rax
mov $3, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15

// Load
lea addresses_WC+0xfb7e, %rsi
nop
nop
nop
nop
nop
dec %rdi
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
sub $27087, %rax

// Store
lea addresses_WT+0x1627e, %r13
cmp $14933, %rsi
movl $0x51525354, (%r13)
nop
nop
nop
sub $25825, %r15

// Store
lea addresses_PSE+0x13a1f, %rdi
nop
nop
nop
nop
nop
sub $57666, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovntdq %ymm6, (%rdi)
xor $12641, %rax

// Store
lea addresses_WT+0xcc7e, %r15
dec %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp $39801, %r13

// Store
lea addresses_PSE+0x764e, %r13
clflush (%r13)
nop
nop
nop
inc %rdi
movl $0x51525354, (%r13)
cmp %r15, %r15

// Store
lea addresses_WT+0xca7e, %rsi
nop
xor $63980, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0x1fdca, %rsi
nop
nop
nop
add $59436, %r10
movl $0x51525354, (%rsi)
nop
nop
cmp $36220, %rdi

// Faulty Load
lea addresses_US+0xd27e, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%rcx), %r13b
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'54': 75}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
