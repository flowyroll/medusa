.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
lea addresses_A_ht+0x9009, %rcx
add %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x12cf4, %r11
nop
xor $6415, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r11)
add $51400, %rax
lea addresses_normal_ht+0xffc4, %rax
nop
nop
nop
nop
nop
add $51357, %rdx
mov (%rax), %r11d
nop
sub %rcx, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0xc814, %rsi
lea addresses_RW+0xf380, %rdi
nop
cmp $17784, %r12
mov $122, %rcx
rep movsw
nop
nop
nop
xor $36990, %r12

// Faulty Load
lea addresses_UC+0x16cf4, %rdx
nop
nop
nop
xor $15264, %r11
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 8, '45': 2}
00 00 00 00 00 45 00 00 45 00
*/
