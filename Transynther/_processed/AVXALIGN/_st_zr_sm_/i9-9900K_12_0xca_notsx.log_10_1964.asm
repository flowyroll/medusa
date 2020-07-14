.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb023, %r9
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
nop
add $35409, %rdx
lea addresses_D_ht+0x683b, %r8
nop
nop
nop
and $22578, %r9
movb (%r8), %cl
nop
nop
nop
nop
nop
cmp $47049, %r8
lea addresses_A_ht+0xd25b, %r10
nop
nop
xor $41687, %rsi
movb $0x61, (%r10)
nop
add $2899, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rdi

// Store
mov $0x6d1a9000000001bb, %rdi
nop
nop
cmp %r11, %r11
movb $0x51, (%rdi)
nop
nop
nop
sub $7771, %r13

// Load
lea addresses_WT+0xdfbb, %r12
nop
nop
nop
nop
add $50408, %r14
mov (%r12), %r9w
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x1a6bb, %r14
nop
nop
add $22501, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r14)
nop
nop
and %r13, %r13

// Store
lea addresses_RW+0x1f5fb, %r11
xor $3055, %r9
mov $0x5152535455565758, %r12
movq %r12, (%r11)
add $53534, %rdi

// Faulty Load
lea addresses_WC+0x1a6bb, %rdi
clflush (%rdi)
nop
nop
add %r12, %r12
vmovaps (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'00': 1, '58': 9}
58 58 58 58 58 58 58 00 58 58
*/
