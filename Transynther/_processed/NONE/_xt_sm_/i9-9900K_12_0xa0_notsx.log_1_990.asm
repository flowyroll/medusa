.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c6d4, %r8
nop
nop
cmp $43636, %r13
movb (%r8), %r11b
nop
nop
add %r15, %r15
lea addresses_A_ht+0x1732c, %rsi
nop
nop
nop
and $53248, %rcx
mov (%rsi), %rdi
nop
add $5916, %rsi
lea addresses_A_ht+0x18e26, %r8
nop
nop
nop
nop
add $47171, %rdi
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r13
nop
sub $62989, %rdi
lea addresses_WT_ht+0xf52c, %rsi
lea addresses_D_ht+0x1692c, %rdi
nop
nop
nop
nop
inc %rbx
mov $35, %rcx
rep movsl
nop
nop
nop
nop
and $2355, %r8
lea addresses_A_ht+0x11b2c, %rsi
lea addresses_UC_ht+0xda2c, %rdi
nop
nop
nop
nop
sub $50578, %r13
mov $58, %rcx
rep movsw
nop
nop
cmp $47957, %rcx
lea addresses_D_ht+0x101d4, %rbx
nop
sub $841, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
cmp $36819, %rdi
lea addresses_WC_ht+0x1002c, %r8
nop
nop
nop
add $11482, %r15
mov (%r8), %di
add %r11, %r11
lea addresses_UC_ht+0x4e2c, %r15
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r15)
cmp %rbx, %rbx
lea addresses_A_ht+0x157ac, %rbx
xor %rsi, %rsi
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x562c, %r11
nop
nop
inc %rbx
mov (%r11), %r15
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0xcb34, %rsi
nop
cmp $42298, %r13
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r15
inc %rbx
lea addresses_WC_ht+0x10051, %rbx
nop
nop
cmp %rsi, %rsi
mov (%rbx), %r13w
nop
nop
nop
add $14713, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xae2c, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $32287, %rdx

// REPMOV
lea addresses_UC+0x2c, %rsi
mov $0x66c, %rdi
nop
nop
nop
sub $5087, %rbp
mov $27, %rcx
rep movsb
nop
nop
nop
cmp $12390, %r10

// Store
mov $0x411305000000069c, %r8
nop
nop
sub $19348, %rax
movw $0x5152, (%r8)
nop
nop
nop
add %r14, %r14

// Load
lea addresses_WT+0x11fec, %rax
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rax), %ecx
xor $14289, %rdi

// Store
lea addresses_A+0x1062c, %rax
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_normal+0xae2c, %rax
cmp %rcx, %rcx
movb (%rax), %r10b
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'52': 1}
52
*/
