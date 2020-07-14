.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ee94, %rax
nop
nop
nop
add $18248, %r11
mov (%rax), %di
and $2973, %rax
lea addresses_A_ht+0x10e4, %rsi
nop
nop
nop
nop
nop
cmp $6135, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
and $43447, %r13
lea addresses_D_ht+0x11150, %rax
nop
nop
xor $59670, %rsi
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
dec %rax
lea addresses_normal_ht+0x175a4, %rsi
lea addresses_WT_ht+0x92e4, %rdi
nop
nop
nop
nop
and $65088, %r13
mov $57, %rcx
rep movsb
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x159a0, %rsi
lea addresses_UC_ht+0x9aa8, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $97, %rcx
rep movsw
nop
nop
nop
nop
sub $9596, %r11
lea addresses_UC_ht+0x10c20, %rsi
lea addresses_UC_ht+0xb5e4, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $76, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xe4e4, %rax
nop
add %rsi, %rsi
mov (%rax), %bp
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xc6e4, %r11
nop
nop
nop
nop
nop
xor $37465, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x15e34, %rsi
lea addresses_A_ht+0x1c2e4, %rdi
nop
nop
nop
and $48581, %rbp
mov $94, %rcx
rep movsw
nop
nop
and $53182, %r11
lea addresses_UC_ht+0x24e4, %rcx
cmp $5974, %r13
mov (%rcx), %rax
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x14ce4, %rbx
nop
nop
nop
nop
and $53878, %r12
mov (%rbx), %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
