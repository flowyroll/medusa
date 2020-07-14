.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5440, %rsi
lea addresses_WT_ht+0x4450, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $4, %rcx
rep movsb
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1daa8, %rsi
lea addresses_WT_ht+0xe550, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $127, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xdb40, %rax
nop
nop
and %r9, %r9
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x14840, %rax
nop
nop
sub %r9, %r9
movb (%rax), %cl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0xe640, %rsi
nop
nop
nop
nop
nop
dec %rax
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x54ec, %rbx
nop
nop
add %r9, %r9
mov (%rbx), %rdi
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x19ba3, %rsi
lea addresses_WT_ht+0x1e370, %rdi
and $29255, %rdx
mov $31, %rcx
rep movsl
nop
nop
nop
add $12372, %rbx
lea addresses_WC_ht+0x4140, %rsi
lea addresses_UC_ht+0x5a40, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $78, %rcx
rep movsq
nop
nop
nop
xor $21081, %rdx
lea addresses_UC_ht+0x2598, %rsi
lea addresses_normal_ht+0x14cec, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $40, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1380, %rdi
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
and $28467, %rdx
lea addresses_D_ht+0x10e8f, %rdi
nop
nop
nop
nop
and %r9, %r9
mov (%rdi), %ax
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1cb70, %rsi
lea addresses_normal_ht+0x1a340, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $113, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x161e8, %rax
nop
nop
nop
nop
add $44605, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rax)
nop
nop
cmp $7711, %rdx
lea addresses_A_ht+0xf640, %rdx
nop
nop
sub %rbx, %rbx
mov (%rdx), %r9
add $19040, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1a240, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x1e24f, %r13
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%r13)
nop
xor %rdi, %rdi

// Load
lea addresses_WC+0x7eb9, %r8
nop
nop
nop
nop
and %rsi, %rsi
mov (%r8), %rax
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_D+0x1a240, %rax
nop
nop
nop
nop
xor $7629, %rdi
mov (%rax), %r8w
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'54': 210}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
