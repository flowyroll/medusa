.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc7b3, %rdi
nop
dec %r10
mov (%rdi), %ax
and %r12, %r12
lea addresses_normal_ht+0x1a5a7, %rbp
nop
nop
nop
nop
dec %r9
movl $0x61626364, (%rbp)
nop
nop
nop
lfence
lea addresses_WT_ht+0xbfb3, %rsi
lea addresses_D_ht+0x12897, %rdi
clflush (%rsi)
sub %r10, %r10
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x197b0, %rsi
lea addresses_WC_ht+0xc233, %rdi
add $49216, %r12
mov $69, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xc413, %rbp
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rbp)
add $39462, %rdi
lea addresses_A_ht+0x1e373, %r9
nop
nop
inc %r10
movb (%r9), %cl
nop
nop
nop
nop
xor $21189, %rbx
lea addresses_normal_ht+0x8433, %r12
clflush (%r12)
sub $31464, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and $57957, %rcx
lea addresses_WC_ht+0x2631, %rdi
and %rbp, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and $40489, %rdi
lea addresses_D_ht+0x158b3, %rsi
lea addresses_WT_ht+0x187b3, %rdi
sub $32893, %rbp
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x164b3, %rsi
lea addresses_D_ht+0x3933, %rdi
xor $55916, %r9
mov $84, %rcx
rep movsw
inc %r9
lea addresses_WT_ht+0x167b3, %rsi
lea addresses_D_ht+0xe248, %rdi
nop
nop
nop
xor %rax, %rax
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
add $61451, %r9
lea addresses_D_ht+0x18e13, %rsi
nop
nop
nop
and $43391, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xe653, %r12
and $48041, %rdi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
and $28404, %r12
lea addresses_A_ht+0x413, %r9
nop
nop
dec %r12
mov (%r9), %r10d
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x13fb3, %r13
nop
nop
add $43109, %rcx
movaps (%r13), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'08': 4883, '06': 2, '49': 44, '04': 1, 'a8': 129, '44': 3780, '72': 41, '27': 1, '46': 6040, '00': 6904, 'a9': 1, 'ff': 3}
00 44 00 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 00 46 46 00 46 46 46 00 00 00 00 46 46 46 00 00 46 00 00 00 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 00 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 44 44 44 00 00 44 44 00 44 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 00 44 00 00 44 00 00 44 00 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 00 00 44 00 44 46 00 46 46 46 46 46 00 46 46 46 00 00 46 00 00 46 00 46 46 00 46 00 00 00 46 46 46 46 46 46 00 00 00 46 00 00 00 00 46 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 00 00 00 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 00 00 46 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 00 46 46 00 46 00 46 00 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 00 46 46 46 00 46 00 00 46 46 46 46 00 46 00 46 46 46 46 46 00 46 00 00 00 00 00 46 46 08 08 08 08 08 00 08 08 00 08 08 08 08 08 00 08 08 08 00 08 00 08 00 00 00 08 00 08 08 00 08 00 00 08 08 00 08 08 00 08 08 00 00 08 00 08 08 08 00 08 08 00 08 00 08 08 00 08 08 08 08 08 08 08 08 08 00 00 00 00 08 08 08 08 08 08 00 08 08 08 00 00 00 00 00 08 08 08 08 00 08 08 08 08 08 08 00 00 08 00 00 08 08 08 08 08 00 00 00 00 00 08 08 08 08 08 08 08 08 08 08 08 08 08 08 00 00 00 08 08 08 08 08 08 08 08 00 08 08 08 08 08 08 00 08 08 08 08 08 08 08 08 00 08 08 08 44 44 00 00 00 00 00 44 44 46 46 46 46 46 46 46 46 46 46 46 49 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 00 00 46 46 46 46 00 00 00 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 00 46 00 46 46 00 08 08 00 08 00 08 08 08 08 08 00 00 00 00 08 08 00 00 08 08 08 08 00 08 08 08 08 08 08 08 08 08 08 00 00 08 08 08 00 00 00 08 08 08 08 08 08 08 00 00 00 00 08 08 00 08 08 08 00 08 08 08 08 00 08 00 08 08 08 00 00 00 08 08 00 00 00 08 00 08 08 08 08 08 08 08 08 08 08 08 00 00 00 00 08 08 08 08 08 08 08 08 08 08 08 00 08 08 08 08 08 08 08 08 00 08 08 08 08 08 00 00 08 08 08 08 00 08 00 08 00 08 08 08 08 00 00 00 00 00 00 08 08 08 08 00 08 00 00 08 00 00 08 08 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 46 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 08 08 00 00 08 08 08 08 08 08 00 00 08 08 00 08 08 08 00 00 08 08 08 08 08
*/
