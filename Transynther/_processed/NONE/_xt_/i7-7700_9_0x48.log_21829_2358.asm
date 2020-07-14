.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16427, %rsi
lea addresses_A_ht+0x1a0ba, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $99, %rcx
rep movsb
nop
nop
nop
nop
nop
add $50042, %r10
lea addresses_D_ht+0x5d9f, %r8
nop
nop
sub $15557, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1de47, %rbp
and %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x610f, %rsi
lea addresses_UC_ht+0x470f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $40870, %r9
mov $36, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x11d0f, %rsi
lea addresses_A_ht+0xcaf, %rdi
add %r9, %r9
mov $81, %rcx
rep movsq
nop
nop
nop
cmp $22617, %r11
lea addresses_UC_ht+0x1c76d, %rsi
lea addresses_D_ht+0x1220f, %rdi
nop
cmp $45246, %rbp
mov $30, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xd10f, %rsi
nop
cmp $28078, %r9
mov (%rsi), %bp
add $12322, %rsi
lea addresses_D_ht+0x686f, %rcx
nop
nop
nop
nop
add $42115, %rbp
mov (%rcx), %r11
sub %rsi, %rsi
lea addresses_UC_ht+0x157a3, %r11
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%r11)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xefbb, %r9
nop
nop
nop
sub %r8, %r8
movb $0x61, (%r9)
nop
xor %r9, %r9
lea addresses_A_ht+0x138d4, %rdi
nop
nop
nop
nop
nop
add $44031, %r11
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x6d8f, %rcx
nop
nop
nop
nop
sub $35017, %rbp
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
and $63189, %rsi
lea addresses_D_ht+0xf10f, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
xor %r10, %r10
lea addresses_normal_ht+0xd4fb, %rsi
lea addresses_UC_ht+0x18e4f, %rdi
nop
cmp %r8, %r8
mov $74, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x510f, %rcx
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
and $53290, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx

// Store
lea addresses_WT+0x2ccf, %r10
nop
sub $20805, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
add $54024, %rcx

// Store
lea addresses_A+0x6faf, %rcx
nop
nop
nop
sub %r8, %r8
movb $0x51, (%rcx)
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_RW+0x610f, %r11
dec %rbx
mov (%r11), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
