.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e138, %rdx
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rdx)
and $37880, %r11
lea addresses_WT_ht+0x4b58, %rdi
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
cmp %r9, %r9
lea addresses_WC_ht+0x16358, %r11
nop
cmp %r13, %r13
mov (%r11), %dx
nop
and $61658, %r9
lea addresses_UC_ht+0x38b8, %rsi
lea addresses_WT_ht+0x5758, %rdi
clflush (%rsi)
nop
nop
dec %rax
mov $108, %rcx
rep movsw
nop
nop
nop
nop
sub $61530, %r13
lea addresses_normal_ht+0x105d8, %rsi
lea addresses_D_ht+0x1b158, %rdi
nop
nop
sub $39904, %r13
mov $102, %rcx
rep movsl
nop
nop
sub $55413, %rdi
lea addresses_A_ht+0x5858, %rdi
nop
nop
nop
nop
nop
and $34708, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x18c26, %rsi
lea addresses_normal_ht+0xb358, %rdi
clflush (%rdi)
nop
nop
and $7089, %rbx
mov $18, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x3358, %r13
nop
sub $6574, %r9
movb (%r13), %r11b
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1f58, %r9
sub %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x5398, %r9
nop
nop
nop
nop
nop
xor %rax, %rax
mov (%r9), %r11w
cmp $34731, %rbx
lea addresses_WT_ht+0x8fa0, %r11
nop
nop
nop
nop
nop
and $5845, %rsi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm4
vpextrq $1, %xmm4, %r13
nop
add $14381, %rdi
lea addresses_normal_ht+0x1d558, %r13
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r13
vmovaps %ymm4, (%r13)
xor %r11, %r11
lea addresses_WC_ht+0xb58, %rsi
lea addresses_UC_ht+0x1e4d8, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r11
mov $42, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x16fe4, %rsi
lea addresses_WT_ht+0x1b658, %rdi
xor $56811, %r9
mov $37, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_UC+0xf5ec, %r12
nop
nop
nop
nop
mfence
movb $0x51, (%r12)
nop
xor $49345, %rax

// Store
lea addresses_WT+0xef98, %r14
nop
nop
nop
cmp $35781, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r14)

// Exception!!!
nop
mov (0), %r14
xor %r13, %r13

// Faulty Load
lea addresses_A+0xfb58, %r14
clflush (%r14)
nop
nop
nop
sub %rsi, %rsi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'00': 113}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
