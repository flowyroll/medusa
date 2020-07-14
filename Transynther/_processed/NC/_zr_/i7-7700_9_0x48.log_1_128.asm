.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16d1, %rdi
clflush (%rdi)
nop
add $30864, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x1c4ac, %r11
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %r11
movntdq %xmm5, (%r11)
sub %rax, %rax
lea addresses_D_ht+0xb4ac, %rdi
nop
nop
nop
dec %r11
movb (%rdi), %r12b
nop
nop
and $29364, %rbx
lea addresses_UC_ht+0x11cac, %rsi
lea addresses_normal_ht+0x15cac, %rdi
nop
nop
nop
nop
nop
sub $57005, %r9
mov $105, %rcx
rep movsw
nop
sub %r9, %r9
lea addresses_normal_ht+0x17f04, %rcx
nop
nop
nop
nop
cmp $12386, %rsi
movb (%rcx), %r12b
nop
nop
nop
nop
sub $54610, %r9
lea addresses_WC_ht+0x99ac, %rax
clflush (%rax)
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %ebx
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x94ac, %rsi
lea addresses_UC_ht+0x64ac, %rdi
nop
nop
xor %r11, %r11
mov $88, %rcx
rep movsb
add $26849, %rdi
lea addresses_D_ht+0x1252c, %rdi
nop
sub $53919, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
xor $4196, %r11
lea addresses_normal_ht+0x30ac, %r9
nop
nop
and %rax, %rax
movl $0x61626364, (%r9)
add $33327, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x2d619000000000ac, %rsi
lea addresses_A+0x58ac, %rdi
nop
nop
nop
xor %r11, %r11
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $34606, %rsi

// Store
lea addresses_WT+0xa664, %rcx
nop
nop
nop
nop
nop
xor $16359, %rbx
movb $0x51, (%rcx)
xor $39052, %rbx

// Faulty Load
mov $0x77dc4c00000004ac, %rcx
nop
nop
nop
inc %rsi
mov (%rcx), %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_NC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'00': 1}
00
*/
