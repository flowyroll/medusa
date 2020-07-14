.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe6c4, %r8
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%r8), %r11w
nop
nop
cmp $60039, %rsi
lea addresses_A_ht+0x132c4, %rsi
lea addresses_UC_ht+0xdaf0, %rdi
nop
xor $51901, %rbx
mov $67, %rcx
rep movsw
lfence
lea addresses_WT_ht+0x1c104, %rsi
lea addresses_UC_ht+0x1b0c4, %rdi
xor $41404, %r9
mov $9, %rcx
rep movsl
and %r11, %r11
lea addresses_D_ht+0x155e4, %rsi
lea addresses_A_ht+0x19ec4, %rdi
nop
nop
nop
add $43248, %rbp
mov $55, %rcx
rep movsb
cmp %r11, %r11
lea addresses_normal_ht+0x22c4, %rsi
lea addresses_UC_ht+0x3ff4, %rdi
nop
nop
nop
dec %r11
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x4934, %r8
cmp $19159, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x12204, %rsi
lea addresses_D_ht+0x6cd0, %rdi
nop
nop
add $32517, %r11
mov $19, %rcx
rep movsq
nop
cmp $63373, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
mov $0x880, %r9
nop
nop
add %rbx, %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
nop
dec %rbx

// Store
mov $0xac4, %r9
nop
nop
nop
nop
nop
cmp $44758, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
and $22453, %rdx

// Load
lea addresses_WC+0xfde4, %rbp
nop
nop
cmp %r14, %r14
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rax
nop
cmp %r9, %r9

// Store
lea addresses_WC+0x1ac4, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
dec %rdx

// Faulty Load
mov $0x61b69c0000000ac4, %r13
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r13), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'00': 6247, '52': 2340}
00 00 52 00 52 00 00 52 00 52 00 00 00 00 00 00 52 00 52 00 00 00 52 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 52 00 00 52 00 00 52 00 00 52 00 00 00 00 00 00 00 00 52 52 00 00 52 00 52 00 52 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 52 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 00 52 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 52 00 52 00 00 00 00 52 00 00 00 52 00 00 52 00 00 00 00 52 00 52 00 52 00 52 52 00 00 00 00 52 00 00 00 52 00 00 00 52 00 00 00 52 00 00 00 00 52 00 52 00 00 00 00 52 00 52 52 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 52 52 00 00 00 52 00 52 52 00 00 00 00 00 00 52 00 52 00 52 52 00 00 00 52 52 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 52 00 52 00 52 00 52 00 00 52 00 00 00 00 00 00 52 00 52 00 00 00 00 52 52 00 00 00 00 00 52 00 52 00 00 52 00 00 52 00 52 52 52 00 52 00 00 00 52 00 00 52 00 00 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 00 00 00 52 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 00 52 00 00 00 00 52 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 52 00 00 00 00 52 00 52 00 52 00 00 52 00 52 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 52 00 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 52 00 52 00 52 00 52 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 52 00 00 52 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 00 52 00 00 00 00 00 00 52 00 52 00 52 00 52 00 52 00 52 00 00 52 00 52 00 52 52 00 00 00 52 00 52 00 52 00 00 00 00 52 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 52 00 00 00 00 00 52 00 52 00 00 00 00 00 00 52 52 52 00 52 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 52 00 52 00 52 00 00 00 52 00 52 00 00 52 00 52 00 00 52 00 00 00 00 00 00 00 52 00 52 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 52 00 00 00 00 00 00 52 00 00 52 52 00 52 52 00 00 00 52 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 00 00 52 00 00 00 52 00 00 52 00 00 00 00 52 00 52 00 52 00 52 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 52 00 52 00 52 00 52 00 52 00 00 52 00 52 00 52 00 00 00 00 00 52 00 00 52 00 00 52 00 00 52 00 52 00 00 52 00 00 00 52 00 00 00 00 00 00 52 00 52 00 52 00 52 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 52 00 00 52 00 00 52 00 00 00 00 00 52 00 00 00 52 52 00 00 00 52 00 00 00 00 00 52 00 00 00 00 52
*/
