.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1320d, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $14392, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r12)
sub $41987, %r12
lea addresses_UC_ht+0xcc37, %rsi
lea addresses_D_ht+0x5b6f, %rdi
nop
nop
nop
add $58056, %r14
mov $75, %rcx
rep movsw
nop
inc %r12
lea addresses_WT_ht+0x12ac5, %rsi
lea addresses_normal_ht+0x122c5, %rdi
and %r11, %r11
mov $101, %rcx
rep movsl
nop
nop
and $12777, %r15
lea addresses_WT_ht+0xe6c5, %rdi
nop
add $49402, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
and $53097, %rdi
lea addresses_A_ht+0x1cac5, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add $50178, %rcx
movl $0x61626364, (%r12)
nop
xor $45267, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WT+0x92c5, %r9
nop
nop
add %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
add $35122, %rbp

// Store
lea addresses_UC+0x6ffd, %r14
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
xor $51943, %r14

// Store
lea addresses_PSE+0x10e8d, %r13
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
and %r9, %r9

// Load
mov $0x383, %rdx
nop
nop
nop
nop
nop
and %r13, %r13
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
dec %r12

// Faulty Load
lea addresses_WT+0x92c5, %rdx
nop
nop
and %r14, %r14
movb (%rdx), %r12b
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'52': 111}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
