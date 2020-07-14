.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1904, %rsi
lea addresses_normal_ht+0x12174, %rdi
nop
nop
inc %r12
mov $65, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x177a4, %r11
xor %r8, %r8
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
add %r8, %r8
lea addresses_normal_ht+0xf504, %r11
nop
nop
inc %r15
movw $0x6162, (%r11)
nop
nop
sub $10882, %rcx
lea addresses_UC_ht+0x91c8, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r11)
add $13337, %r8
lea addresses_UC_ht+0xd284, %r15
nop
nop
nop
sub %r11, %r11
movb (%r15), %cl
cmp $12858, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rax
push %rdx

// Store
mov $0x1935010000000d04, %rax
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovntdq %ymm1, (%rax)
nop
add %r9, %r9

// Store
lea addresses_WC+0x19404, %r11
nop
nop
xor $24516, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r11)
xor %r9, %r9

// Store
mov $0x557c7a0000000104, %r13
nop
nop
cmp $7723, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
add $20285, %r15

// Faulty Load
mov $0x557c7a0000000104, %r9
clflush (%r9)
nop
nop
nop
inc %r12
mov (%r9), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7}}
{'00': 894, '58': 7898, '90': 3173}
58 90 58 00 58 58 90 90 58 58 90 00 58 00 58 58 58 58 58 90 58 90 90 58 90 90 90 90 58 90 00 00 58 90 00 90 90 90 58 58 58 90 90 58 58 58 58 58 58 58 58 00 90 00 58 58 90 90 58 90 58 58 58 00 58 00 58 00 90 58 90 58 90 58 58 58 58 90 58 58 58 90 58 58 58 58 58 00 00 90 58 58 58 58 90 90 00 00 58 00 58 58 58 58 00 58 90 90 90 90 58 58 58 58 58 58 58 58 90 58 90 58 90 90 58 58 58 58 58 58 58 58 58 90 58 90 58 58 58 58 90 58 90 90 90 58 90 58 58 90 90 58 58 58 00 58 58 58 58 58 58 90 58 00 90 90 90 58 58 90 58 58 58 58 58 90 58 90 58 58 58 58 58 58 58 58 58 58 58 90 90 58 90 90 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 90 58 58 58 90 58 90 00 58 58 90 90 58 58 90 58 90 58 90 58 58 58 90 00 58 00 90 58 58 58 58 58 90 58 58 58 58 58 90 58 58 00 58 58 58 90 58 90 00 58 90 58 90 00 58 58 58 58 90 58 90 90 90 58 90 90 58 58 90 90 90 58 58 58 00 00 58 58 00 58 90 58 58 58 58 58 90 58 58 90 58 58 90 00 58 58 58 58 58 58 00 58 58 58 58 90 58 58 58 90 58 58 90 58 58 58 58 90 58 90 58 90 90 90 90 90 58 90 90 58 00 00 58 58 58 58 58 58 90 90 58 58 00 90 58 90 58 58 58 58 58 90 58 90 58 58 58 00 58 58 00 90 58 58 58 58 58 58 90 00 58 58 90 58 58 58 58 58 58 58 00 90 90 58 58 58 58 58 90 90 90 58 58 58 58 58 58 00 00 58 58 58 58 58 90 00 58 90 90 58 58 90 58 90 90 90 90 90 58 58 58 90 58 90 90 58 58 90 58 58 90 90 58 58 90 58 58 58 58 58 90 58 90 90 58 58 58 58 90 58 58 58 58 58 58 90 58 58 58 90 58 90 58 58 58 58 58 90 90 90 58 58 58 58 58 00 58 90 58 90 90 90 90 58 90 58 58 58 58 58 58 58 58 90 90 90 58 58 58 90 58 90 58 58 58 90 58 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 90 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 90 58 58 90 90 90 58 58 58 90 58 90 90 90 90 58 58 90 58 90 58 58 90 58 90 58 58 58 90 58 90 58 58 58 58 00 00 58 58 90 00 58 90 00 90 90 90 00 90 58 58 90 58 58 58 90 00 58 90 00 90 90 58 58 58 58 90 90 58 58 90 58 58 90 90 58 90 58 58 58 58 58 58 58 58 58 00 00 58 58 90 58 90 58 58 58 90 58 58 58 00 58 58 58 00 58 58 90 58 00 58 58 90 58 90 00 90 58 58 90 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 90 90 58 90 00 58 90 58 90 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 90 58 58 00 90 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 00 00 58 90 00 58 58 58 90 90 58 58 58 58 90 90 58 58 58 58 58 58 90 58 58 58 58 90 58 58 90 58 58 58 90 58 58 58 58 90 58 90 58 58 90 58 90 58 58 58 90 58 90 90 00 58 58 90 58 58 58 90 90 58 90 58 58 90 00 90 58 58 58 90 58 90 90 58 58 90 58 58 58 90 58 58 58 90 58 58 58 58 58 58 90 90 58 90 90 58 58 58 90 58 58 90 58 90 58 58 90 58 58 58 58 90 90 58 58 58 58 58 58 58 58 90 58 90 90 90 58 00 58 58 58 90 58 90 90 58 58 58 58 90 58 58 90 58 58 90 90 58 58 90 00 58 58 58 58 58 58 90 90 58 58 58 58 58 00 90 58 58 58 58 58 58 58 90 90 90 58 58 00 90 90 58 58 58 58 90 58 58 58 58 58 58 00 58 58 90 58 58 90 90 58 90 58 58 58 58 90 58 58 58 90 58 58 90 58 90 90 58 58 58 58 90 58 58 58 90 58 58 90 90 90 90 58 58 90 58 58 90 58 58 90 58
*/
