.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1be3b, %rsi
lea addresses_D_ht+0xe23b, %rdi
and $61757, %r10
mov $57, %rcx
rep movsb
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1103b, %rsi
lea addresses_WT_ht+0x1c9fb, %rdi
nop
nop
nop
nop
add $47670, %rax
mov $121, %rcx
rep movsl
nop
nop
nop
cmp $59632, %rsi
lea addresses_A_ht+0x83b, %rsi
lea addresses_UC_ht+0x14bbb, %rdi
nop
sub %rbx, %rbx
mov $26, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $18963, %rax
lea addresses_A_ht+0xcc3b, %rsi
lea addresses_WT_ht+0x14213, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r11, %r11
mov $16, %rcx
rep movsw
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xfc3b, %rsi
lea addresses_WT_ht+0x7c9b, %rdi
nop
dec %r14
mov $28, %rcx
rep movsq
nop
nop
nop
cmp $22010, %r11
lea addresses_normal_ht+0x10273, %rsi
lea addresses_A_ht+0xd6e7, %rdi
add %r11, %r11
mov $68, %rcx
rep movsb
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0xb23b, %r10
nop
inc %r11
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1c57b, %rsi
lea addresses_normal_ht+0x16c3b, %rdi
nop
nop
sub $38127, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $57930, %rax
lea addresses_WC_ht+0x6c3b, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x170ed, %rcx
nop
xor $16119, %r14
movl $0x61626364, (%rcx)
nop
xor %r11, %r11
lea addresses_WC_ht+0xc3bb, %rsi
lea addresses_normal_ht+0x1ba3b, %rdi
nop
nop
nop
nop
and $22774, %r14
mov $80, %rcx
rep movsl
nop
nop
nop
nop
and $22972, %rdi
lea addresses_WT_ht+0x8e3b, %rsi
and %r11, %r11
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
dec %r11
lea addresses_normal_ht+0x14f0f, %rsi
lea addresses_WT_ht+0x6a3b, %rdi
nop
nop
nop
add $8423, %r11
mov $102, %rcx
rep movsb
nop
dec %rcx
lea addresses_normal_ht+0x157bb, %rcx
and %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xb903, %rsi
lea addresses_normal_ht+0x1b44d, %rdi
clflush (%rsi)
nop
add %rbx, %rbx
mov $30, %rcx
rep movsw
cmp $63795, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1a57b, %rsi
lea addresses_A+0x543b, %rdi
nop
nop
nop
xor $42677, %r9
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_A+0x543b, %rax
nop
nop
nop
nop
sub $54729, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x3ebb, %rcx
nop
nop
nop
xor $43494, %r13
movb (%rcx), %al
nop
sub $10747, %r13

// REPMOV
lea addresses_A+0x543b, %rsi
lea addresses_UC+0x16e5a, %rdi
nop
nop
inc %rax
mov $122, %rcx
rep movsq
nop
nop
nop
add $36066, %rbp

// Store
lea addresses_WC+0x1949b, %rdi
clflush (%rdi)
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movntdq %xmm1, (%rdi)
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x543b, %rbp
nop
nop
and %rax, %rax
movb (%rbp), %r13b
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'58': 1}
58
*/
