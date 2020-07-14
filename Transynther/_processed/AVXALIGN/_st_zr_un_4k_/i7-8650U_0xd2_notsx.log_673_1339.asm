.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf4e4, %rsi
lea addresses_normal_ht+0x22d8, %rdi
xor %r9, %r9
mov $65, %rcx
rep movsb
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x4718, %r14
nop
nop
nop
nop
nop
add %r11, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x78d8, %rsi
nop
nop
nop
nop
nop
add $49614, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
add $53227, %rdi
lea addresses_normal_ht+0x1a692, %r14
nop
nop
nop
nop
xor $34162, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x12278, %r8
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
dec %rcx

// Store
mov $0x6d8, %r11
nop
nop
nop
cmp $61736, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
xor $59038, %r15

// Faulty Load
lea addresses_D+0x1f6d8, %rsi
nop
nop
sub %r11, %r11
vmovntdqa (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'24': 446, '58': 192, '00': 33, '70': 1, '22': 1}
24 24 24 24 24 58 24 24 24 24 24 24 58 24 58 24 24 58 00 00 24 24 58 24 24 58 58 24 24 58 58 24 24 24 24 58 24 24 24 58 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 58 24 24 24 24 24 24 58 24 24 24 24 24 24 24 24 24 24 24 58 24 24 24 24 24 24 24 24 24 24 24 24 24 24 00 58 24 00 24 24 24 24 24 24 24 24 24 24 24 24 24 24 58 24 24 58 24 24 58 24 24 24 58 58 58 00 58 00 24 24 24 24 24 24 58 24 24 58 24 24 24 24 24 24 24 58 58 24 24 24 24 24 24 24 24 58 24 24 58 58 24 58 24 24 24 58 24 24 58 24 24 58 24 24 24 24 24 24 58 58 24 24 24 24 24 24 24 24 58 24 24 24 24 24 24 24 58 24 24 00 24 24 00 24 24 24 24 58 24 24 58 24 24 24 24 24 24 24 58 24 00 24 24 24 24 58 24 58 24 24 24 24 24 24 24 24 58 24 58 24 24 24 24 24 58 58 24 24 24 24 24 24 24 58 24 24 24 24 24 24 24 24 24 24 24 24 58 24 24 24 58 24 24 24 24 24 24 58 58 24 24 24 24 24 24 24 24 24 24 58 24 24 58 24 24 00 58 24 58 24 24 58 24 58 24 24 24 00 58 24 58 58 24 00 24 58 24 24 24 58 24 24 58 58 24 24 24 24 24 24 24 58 24 24 00 58 58 24 58 58 24 58 24 24 24 24 58 00 24 24 00 24 58 58 58 00 24 24 58 24 24 24 58 24 00 24 58 24 58 24 24 58 24 58 24 24 58 24 24 24 58 58 24 58 24 24 24 58 58 58 58 24 24 00 58 58 24 58 24 24 58 00 58 24 58 58 58 58 58 58 00 24 58 58 24 58 24 24 58 24 58 24 24 24 24 24 24 58 58 58 24 58 24 24 24 58 58 58 00 58 24 58 24 24 58 24 24 70 58 58 58 24 24 24 24 58 24 24 58 58 24 24 24 58 24 24 24 22 58 58 58 24 24 58 58 24 58 24 24 58 24 58 24 24 24 24 24 24 24 24 00 58 24 24 24 24 58 00 00 00 00 58 24 24 58 58 58 58 58 58 24 58 58 58 58 58 24 24 58 58 00 58 24 24 58 58 58 58 24 58 24 24 24 24 58 24 58 24 58 58 24 58 58 24 58 58 58 00 58 58 24 00 24 00 24 58 24 24 58 58 24 00 24 24 58 58 00 58 24 24 58 58 58 24 24 24 58 24 24 24 24 24 58 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 58 24 24 24 58 24 24 24 24 58 24 24 58 58 24 24 58 24 58 24 24 24 24 00 24 24 24 24 24 58 24 24 24 24 58 24 58 58 58 24 24 24 58 58 58 24 24 24 24 58 24 24 24 58 24 24 24 24 24 24 24 24 24 58 24 24 24 24 24 24 58 24 24 24
*/
