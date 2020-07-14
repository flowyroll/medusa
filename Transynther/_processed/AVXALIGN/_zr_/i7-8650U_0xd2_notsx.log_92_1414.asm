.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8bfe, %rdi
nop
xor $45744, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x1671e, %r13
nop
nop
dec %rdx
mov (%r13), %r8w
nop
inc %r8
lea addresses_D_ht+0x283c, %rsi
lea addresses_WT_ht+0xed8c, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1ffe, %r9
nop
sub $2869, %rsi
movw $0x5152, (%r9)
nop
and $3490, %r9

// Store
lea addresses_D+0xbfe, %rdx
nop
inc %r8
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
dec %rbx

// Store
lea addresses_WT+0x33ae, %rsi
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WC+0x107fe, %r9
clflush (%r9)
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%r9)
sub $60191, %r9

// Load
lea addresses_WT+0x126, %rsi
nop
xor %r9, %r9
movb (%rsi), %dl
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
mov $0x17327500000003fe, %r14
nop
nop
nop
nop
and $43700, %r8
vmovaps (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'00': 92}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
