.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7705, %rsi
lea addresses_WC_ht+0x112be, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $40, %rcx
rep movsw
nop
sub $22833, %rdx
lea addresses_WT_ht+0x176be, %rsi
lea addresses_UC_ht+0xd33e, %rdi
nop
nop
sub %r13, %r13
mov $87, %rcx
rep movsb
nop
xor $56309, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x18ebe, %r13
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%r13)
nop
nop
nop
nop
nop
cmp $23349, %rsi

// Store
lea addresses_WT+0x143c4, %rsi
nop
nop
nop
nop
xor $41444, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movntdq %xmm1, (%rsi)
nop
nop
nop
inc %rdi

// Store
mov $0x6be, %rcx
nop
nop
nop
nop
nop
sub $64255, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
sub %rbp, %rbp

// Faulty Load
mov $0x7ed53400000006be, %rsi
nop
nop
nop
xor %r8, %r8
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'49': 4, '00': 20}
00 00 00 00 00 00 49 49 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00
*/
