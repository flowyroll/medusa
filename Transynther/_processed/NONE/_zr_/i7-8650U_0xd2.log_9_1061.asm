.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6c33, %rsi
lea addresses_UC_ht+0x1be27, %rdi
nop
nop
lfence
mov $2, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xf29b, %rsi
lea addresses_WT_ht+0xfd5b, %rdi
nop
add %r11, %r11
mov $8, %rcx
rep movsl
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rax
push %rdx

// Store
lea addresses_UC+0x11843, %r14
nop
nop
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r14)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_US+0x4a73, %rdx
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
cmp $43055, %rax

// Store
mov $0xa33, %rax
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
add $34076, %r13

// Load
lea addresses_UC+0xe3f3, %r15
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
cmp $30186, %r14

// Store
lea addresses_WT+0x14293, %r10
nop
nop
nop
nop
nop
and $16232, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
and $11922, %r13

// Store
mov $0x1a446400000006a3, %r15
add $39288, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r15)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_UC+0xfb33, %r10
nop
nop
nop
nop
nop
cmp $20285, %r15
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
