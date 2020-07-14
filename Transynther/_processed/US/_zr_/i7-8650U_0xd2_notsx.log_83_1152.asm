.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1dd9f, %r13
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r13)
nop
nop
add $3942, %rdx
lea addresses_normal_ht+0x4b05, %rsi
lea addresses_D_ht+0x12f0b, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $65, %rcx
rep movsw
inc %r11
lea addresses_A_ht+0x7978, %rsi
lea addresses_WC_ht+0x126bf, %rdi
nop
dec %r8
mov $68, %rcx
rep movsb
nop
nop
nop
xor $30716, %rcx
lea addresses_D_ht+0x1e61f, %rdx
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xf42b, %rdx
nop
nop
nop
nop
xor %r11, %r11
mov (%rdx), %ecx
nop
nop
xor $16572, %rsi
lea addresses_WC_ht+0xd15f, %rsi
lea addresses_D_ht+0x40e3, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $55, %rcx
rep movsl
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x19ff, %rcx
nop
nop
nop
add $9440, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WT+0x1599f, %rbx
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_US+0x1261f, %rbp
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rbp), %r15w
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 83}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
