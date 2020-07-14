.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0xdb53, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
add $35587, %r11
lea addresses_UC_ht+0xeff3, %rax
nop
nop
nop
inc %r9
movw $0x6162, (%rax)
nop
nop
xor %r9, %r9
lea addresses_A_ht+0xdfc3, %rdi
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
and %r11, %r11
lea addresses_normal_ht+0x19b23, %rdi
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
cmp $15523, %rsi
lea addresses_WC_ht+0x1d943, %rbx
nop
nop
nop
nop
nop
sub $18121, %r11
mov (%rbx), %r8w
nop
xor $3254, %rdi
lea addresses_WT_ht+0x110d3, %rdi
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%rdi)
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbx
push %rcx
push %rsi

// Faulty Load
lea addresses_D+0xc1f3, %rbx
xor $1243, %rcx
vmovaps (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'30': 1, '08': 1, '72': 7}
30 72 08 72 72 72 72 72 72
*/
