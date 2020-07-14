.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rsi
lea addresses_WC_ht+0x5472, %r11
nop
nop
nop
nop
nop
xor $42673, %rsi
movb (%r11), %r14b
add $198, %r15
pop %rsi
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x10472, %r9
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r9)
nop
cmp %rdi, %rdi

// Store
mov $0x24cf9e0000000072, %rcx
nop
nop
nop
nop
nop
xor $62092, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x5a173e0000000cc2, %rdx
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
sub %rdx, %rdx

// Store
lea addresses_RW+0x9492, %r12
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r12)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_RW+0x53ae, %rbp
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
add $31862, %rcx

// Faulty Load
lea addresses_A+0x5472, %rsi
nop
nop
inc %rdx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'58': 2}
58 58
*/
